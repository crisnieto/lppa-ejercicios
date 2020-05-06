<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="Ejercicios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="Ejercicio1_Vuelta.aspx">
        <div>
            Apellido:
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            Edad:
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar"/>
    </form>
</body>
</html>
