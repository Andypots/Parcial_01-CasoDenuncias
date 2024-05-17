<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarDenuncia.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            width: 200px;
            text-align: right;
        }
        .auto-style5 {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Caso: Denuncias"></asp:Label>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Buscar Denuncia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdministrarDenuncias.aspx">Volver</asp:HyperLink>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Número de Gestión: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Buscar" Width="116px" OnClick="Button1_Click" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Buscar Otra" Visible="False" Width="116px" />
&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Detalle: " Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="141px" ReadOnly="True" TextMode="MultiLine" Width="616px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Editar" Visible="False" Width="119px" OnClick="Button2_Click" />
                &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Eliminar" Visible="False" Width="116px" OnClick="Button3_Click" />
&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
