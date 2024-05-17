<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarDenuncias.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Caso: Denuncias"></asp:Label>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Administrar Denuncias"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Denuncias"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/NuevaDenuncia.aspx">Nueva Denuncia</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="X-Large" NavigateUrl="~/BuscarDenuncia.aspx">Buscar Denuncia</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Categorías"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" NavigateUrl="~/Categorias.aspx">Categorías</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
