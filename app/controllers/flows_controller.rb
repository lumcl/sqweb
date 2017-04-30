class FlowsController < ApplicationController
  before_action :set_flow, only: [:show, :edit, :update, :destroy]

  # GET /flows
  def index
    @flows = Flow.all
  end

  # GET /flows/1
  def show
  end

  # GET /flows/new
  def new
    @flow = Flow.new
  end

  # GET /flows/1/edit
  def edit
  end

  # POST /flows
  def create
    @flow = Flow.new(flow_params)

    if @flow.save
      redirect_to @flow, notice: 'Flow was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flows/1
  def update

    @flow.sign_at = Time.now
    @flow.sign_ip = request.ip
    @flow.result = params[:result]
    @flow.remark = params[:remark]
    @flow.updater = current_user.email

    if params[:document].present?
      Filerack.create(parent_id: @flow.uuid, document: params[:document], remark: params[:remark],
                      creator: current_user.email, create_ip: request.ip)
    end

    @flow.countersign(params[:email].split(',')) if params[:email].present?

    if @flow.result.eql?('N')
      @flow.reject
    else
      @flow.next_workflow
    end

    @flow.status = '9'

    if @flow.update(flow_params)
      redirect_to "#{params[:request_url]}#anchor_flow"
    else
      render :edit
    end
  end

  # DELETE /flows/1
  def destroy
    @flow.destroy
    redirect_to flows_url, notice: 'Flow was successfully destroyed.'
  end

  def create_workflow
    if params[:parent_id].present?
      messages = Flow.create_workflows(params, current_user.email)
    end
    redirect_to "#{params[:request_url]}#anchor_flow", notice: messages.join(" ")
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_flow
    @flow = Flow.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def flow_params
    #params.require(:flow).permit(:uuid, :parent_id, :seq, :flow_type, :notify_at, :sign_by, :sign_at, :sign_ip, :result, :remark, :assign_id, :assign_by, :assign_at, :status, :creator, :updater)
    params.fetch(:flow, {})
  end
end
