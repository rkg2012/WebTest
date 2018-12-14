<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript">
        function test() {
            alert("Enrty Condition");
            var label = $('#lblCondition').text()
            if (label == "Prep") {
                alert("Prep");
                $("#drpList option").remove();
            var value_variable1 = 5;
            var text_variable1 = 'jack2';
            $('#drpList').append('<option value="' + value_variable1 + '">' + text_variable1 + '</option>');
            
            }
            else if(label == "Sub"){
                alert("Sub");
                $("#drpList option").remove();
            var value_variable1 = 6;
            var text_variable1 = 'rkg';
            $('#drpList').append('<option value="' + value_variable1 + '">' + text_variable1 + '</option>');
            
            }
            else {
                alert("last condition");
            }

            
        }
    </script>
</head>
<body onload="test()">
    <form id="form1" runat="server">
        <div>
            <label  id="lblCondition" >+Prep</label>
            <asp:DropDownList ID="drpList" runat="server">
                <asp:ListItem Value="1">In Prep</asp:ListItem>
                <asp:ListItem Value="2">Submitted</asp:ListItem>
                <asp:ListItem Value="3">Acrived</asp:ListItem>

            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
