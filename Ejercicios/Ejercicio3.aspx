<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="Ejercicios.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FINANCIERA</title>
    <script type="text/javascript">
        function verificar() {
            apellido = form1.apellido.value;
            edad = form1.edad.value;
            sueldo = form1.sueldo.value;
            if (apellido == "" && edad == "")
            {
                alert("Debe ingresar correctamente los datos!");
                form1.edad.focus();
                return false;
            }
            if (apellido !== "" && edad == "") {
                alert("Hola " + apellido + " debe ingresar su edad");
                form1.edad.focus();
                return false;
            }
            if (apellido == "" && edad !== "") {
                alert("Debe ingresar su apellido");
                form1.apellido.focus();
                return false;
            }
            if (sueldo == "") {
                alert("Debe ingresar un rango de sueldo");
                form1.sueldo.focus();
                return false;
            }
            form1.submit();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" action="Ejercicio3_calcprestamo.aspx" method="post">
        <div>
            INGRESE SU APELLIDO</div>
        <asp:TextBox ID="apellido" runat="server"></asp:TextBox>
        <br />
        <br />
        INGRESE SU EDAD<br />
        <asp:TextBox ID="edad" runat="server" Width="20px"></asp:TextBox>
        <br />
        <br />
        CUAL ES EL RANGO EN QUE SE ENCUENTRA SU SUELDO?<br />
        <asp:DropDownList ID="sueldo" runat="server">
            <asp:ListItem Value="">SELECCIONE EL RANGO</asp:ListItem>
            <asp:ListItem Value="A">Menor o igual a 36000</asp:ListItem>
            <asp:ListItem Value="B">Entre 36001 a 72000</asp:ListItem>
            <asp:ListItem Value="C">Mayor a 72001</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="btnEnviar" runat="server" Text="Verificar y enviar" OnClientClick="return verificar();" />
        </p>
    </form>
</body>
</html>
