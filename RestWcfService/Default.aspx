<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RestWcfService._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <button onclick=" doWork(); return false;">DoWork</button>
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
    </script>
</asp:Content>
