<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="Ejercicios.Ejercicio4" %>

<!DOCTYPE html>
<script runat="server">
    protected void botonClick(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Response.Redirect("ffff.aspx");
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Que comience con P y 4 números seguidos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>INSERTE UN CÓDIGO DE PRODUCTO QUE COMIENCE CON "P" (MAYÚSCULA) Y CON CUATRO NÚMEROS SEGUIDOS.
                <br />
            </h3>
            <asp:TextBox ID="CodigoProducto" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="AA"
                runat="server" 
                Controltovalidate="CodigoProducto"
                text="Este campo debe llenarse">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="BB" 
                runat="server" 
                Controltovalidate="CodigoProducto"
                text="El código de producto es inválido."
                ValidationExpression="P[0-9]{4}">
            </asp:RegularExpressionValidator>
            <br />
        </div>
        <asp:Button 
            ID="btnSend" 
            runat="server" 
            Text="Enviar" 
            OnClick="botonClick"
        />        
    </form>
</body>
</html>
