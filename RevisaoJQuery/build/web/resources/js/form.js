$(document).ready(function () {
    $("#btnLogin").click(function () {
        var login = $("#user").val();
        var password = $("#passwd").val();
        $.ajax({
            type: 'POST',
            url: 'login',
            data: {
                login: login,
                passwd: password
            },
            success: function (result) {
                console.log(result);
                $('#usuario').addClass(" has-error");
                $('#senha').addClass(" has-error");
                $('#teste').append(result);
            }
        });
    });
    $(document).ajaxSend(function (event, request, settings) {
        $('#loading-indicator').show();
        $('#teste').empty();
    });

    $(document).ajaxComplete(function (event, request, settings) {
        $('#loading-indicator').hide();
    });

});