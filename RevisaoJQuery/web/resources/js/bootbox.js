$(document).ready(function () {
    $("#table").on("click", "#remove",
            function () {
                var button = $(this);
                bootbox.confirm("Tem certeza que quer remover este usuário?",
                        function (result) {
                            if (result) {
                                $.ajax({
                                    url: "user?do=deleteclient&clientId=" + button.attr("data-customer-id"),
                                    method: "GET",
                                    success: function () {
                                        button.parents("tr").remove();
                                    }
                                });
                            }
                        });
            });
});