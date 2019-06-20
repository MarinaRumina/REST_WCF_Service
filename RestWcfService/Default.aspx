<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RestWcfService._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <button onclick=" doWork(); return false;">DoWork</button>
        <br />
        <br />
        <input type="text" id="squareValue" />
        <button onclick=" doSquare(); return false;">DoSquare</button>
        <br />
        <br />
        <input type="text" id="value1" />
        <input type="text" id="value2" />
        <button onclick=" doAddValues(); return false;">DoAddValues</button>
        
    </div>


    <script type="text/javascript">
        function doWork() {
            console.info("Hello");


            $.ajax({
                url: "Service/Service1.svc/DoWork", //folder/service_file/Uri
                type: "GET",
                dataType: "json",
                success: function (result) {
                    console.info(result);
                }
            });
        }

        function doSquare() {
            var value = $('#squareValue').val();

            $.ajax({
                url: "Service/Service1.svc/DoSquare", //folder/service_file/Uri
                type: "POST",
                data: JSON.stringify(value),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    console.info(result);
                }
            });
        }

        function doAddValues() {
            var values = {
                'Value1': $('#value1').val(),
                'Value2': $('#value2').val()
            };

            $.ajax({
                url: "Service/Service1.svc/DoAddValues", //folder/service_file/Uri
                type: "POST",
                data: JSON.stringify(values),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    console.info(result);
                },
                error: function (error) {
                    console.error(error);
                }
            });
        }
    </script>
</asp:Content>
