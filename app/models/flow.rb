class Flow < ActiveRecord::Base
  self.primary_key = :uuid
  before_create :z_before_create

  def reject
    flows = Flow.where(parent_id: parent_id).where("uuid <>'#{uuid}'").where("status < '9'").order("status desc, seq")
    flows.each do |flow|
      flow.result = 'N'
      flow.sign_by = sign_by
      flow.sign_at = sign_atk
      flow.sign_ip = sign_ip
      flow.remark = 'Reject 退件'
      flow.status = '9'
      flow.updater = updater
      flow.save
    end
    self.status = '9'
  end

  def countersign(emails)
    ws_seq = Flow.where(assign_id: assign_id).maximum(:seq)
    ws_seq = 0 if ws_seq.blank?
    zhihui = User.validate_mail_ids(emails)
    emails.each do |email|
      if zhihui[email].eql?('OK')
        flow = Flow.create(
            status: '2',
            parent_id: parent_id, seq: ws_seq += 1, flow_type: 'C',
            assign_id: uuid, assign_by: updater, assign_at: Time.now,
            sign_by: "#{email.downcase}@l-e-i.com", creator: updater, updater: updater
        )
        send_notification(flow)
      end
    end
    Flow.create(
        status: '0',
        parent_id: parent_id, seq: ws_seq+= 1, flow_type: flow_type,
        assign_id: uuid, assign_by: updater, assign_at: Time.now,
        sign_by: updater, creator: updater, updater: updater
    )
  end

  def next_workflow
    ws_flow_type = ' '
    flows = Flow.where(parent_id: parent_id).where("uuid <>'#{uuid}'").where("status < '9'").order("status desc, seq")
    flows.each do |flow|
      break if not flow.status.eql?('0')
      break if ws_flow_type.eql?("I") and not flow.flow_type.eql?("I")
      ws_flow_type = flow.flow_type
      flow.status = '2'
      send_notification(flow)
    end
  end

  def send_notification(flow)
    Mail.defaults do
      delivery_method :smtp, address: '172.91.1.253', port: 25
    end
    message = "您有新的報價單需要審核, http://127.0.0.1:3000/"

    Mail.deliver do
      from 'lum.cl@l-e-i.com'
      to flow.sign_by
      subject '供應商報價系統審核'
      body message
    end
    flow.notify_at = Time.now
    flow.save
  end

  def self.process_workflows

  end

  def self.create_workflows(params, current_user)
    messages = []
    flow_valid = false

    if params[:hezhun].present?
      emails = params[:hezhun].split(',')
      hezhun = User.validate_mail_ids(emails)
      flow_valid = true if hezhun.values.include?('OK')
    end

    if flow_valid
      seq = 0

      if params[:shenhe].present?
        emails = params[:shenhe].split(',')
        shenhe = User.validate_mail_ids(emails)
        emails.each do |email|
          if shenhe[email].eql?('OK')
            Flow.create(
                status: seq == 0 ? '1' : '0',
                parent_id: params[:parent_id], seq: seq += 100, flow_type: 'R',
                sign_by: "#{email.downcase}@l-e-i.com", creator: current_user, updater: current_user
            )
          else
            messages.append "郵件地址錯誤"
          end
        end
      end

      emails = params[:hezhun].split(',')
      emails.each do |email|
        if hezhun[email].eql?('OK')
          Flow.create(
              status: seq == 0 ? '1' : '0',
              parent_id: params[:parent_id], seq: seq += 100, flow_type: 'A',
              sign_by: "#{email.downcase}@l-e-i.com", creator: current_user, updater: current_user
          )
        else
          messages.append "郵件地址錯誤"
        end
      end

      if params[:zhihui].present?
        emails = params[:zhihui].split(',')
        zhihui = User.validate_mail_ids(emails)
        emails.each do |email|
          if zhihui[email].eql?('OK')
            Flow.create(
                status: seq == 0 ? '1' : '0',
                parent_id: params[:parent_id], seq: seq += 100, flow_type: 'I',
                sign_by: "#{email.downcase}@l-e-i.com", creator: current_user, updater: current_user
            )
          else
            messages.append "郵件地址錯誤"
          end
        end
      end
    else
      messages.append "核准人郵件地址錯誤."
    end
    messages.append "簽核名單已建立, 簽核流程開始." if messages.empty?
    messages
  end

  def z_before_create
    if assign_id.blank?
      assign_uuid
      self.assign_id = uuid
    end
  end

end
