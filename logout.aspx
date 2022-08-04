 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html>
    <script type="text/javascript">
                function noBack() { window.history.forward(); }
                noBack();
                window.onload = noBack;
                window.onpageshow = function (evt) { if (evt.persisted) noBack(); }
                window.onunload = function () { void (0); }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
