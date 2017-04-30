$(document).ready(function (){

    $('.btn-submit').data('save-text', 'Saving...');
    $('.btn-submit').click(function(){
        $(this).button('save');
        $(this).attr("disabled", true);
        this.form.submit();
    });

    $(".clickAll").click(function () {
        if ($(".clickAll").prop("checked")) {
            $("input[name='ids[]']").each(function () {
                $(this).prop("checked", true);
            });
        }
        else {
            $("input[name='ids[]']").each(function () {
                $(this).prop("checked", false);
            });
        }
    });

    $('.datepicker').datetimepicker({
        autoclose: true,
        todayBtn: true,
        minView:'2',
        pickerPosition: "bottom-left",
        format: 'yyyy-mm-dd hh:ii'
    });

    $('.datetimepicker').datetimepicker({
        autoclose: true,
        todayBtn: true,
        pickerPosition: "bottom-left",
        format: 'yyyy-mm-dd hh:ii'
    });
});