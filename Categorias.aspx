<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="WebApplication2.WebForm3" %>

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
            width: 206px;
        }
        .auto-style4 {
            width: 219px;
            height: 23px;
        }
        .auto-style5 {
            width: 206px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style8 {
            width: 206px;
            text-align: right;
        }
        .auto-style7 {
            width: 206px;
            height: 23px;
            text-align: right;
        }
        .auto-style9 {
            width: 219px;
            height: 107px;
        }
        .auto-style10 {
            width: 206px;
            height: 107px;
        }
        .auto-style11 {
            height: 107px;
        }
        .auto-style12 {
            width: 219px;
            height: 34px;
        }
        .auto-style13 {
            width: 206px;
            text-align: right;
            height: 34px;
        }
        .auto-style14 {
            height: 34px;
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
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Categorías"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdministrarDenuncias.aspx">Volver</asp:HyperLink>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Categorias: "></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="177px" PageSize="5" Width="399px">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="nombre" HeaderText="Categoría" SortExpression="nombre" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42024 %>" SelectCommand="SELECT * FROM [DenunciaCategorias]"></asp:SqlDataSource>
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
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Nueva Categoría"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Descripción: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Crear" Width="112px" OnClick="Button1_Click" />
                &nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Crear Otra" Visible="False" Width="103px" />
&nbsp;
                    <asp:Label ID="Label12" runat="server"></asp:Label>
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
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Editar Categoría"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server" Text="id: "></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Width="237px" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Buscar" Width="112px" OnClick="Button2_Click" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Buscar Otro" Visible="False" Width="111px" />
&nbsp;
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="Descripción: "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="237px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Modificar" Width="112px" OnClick="Button3_Click" Visible="False" />
                &nbsp;<asp:Label ID="Label14" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Eliminar Categoría"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Text="id: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="237px" TextMode="Number"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Buscar" Width="112px" />
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Buscar Otro" Visible="False" Width="110px" />
&nbsp;
                    <asp:Label ID="Label15" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server" Text="Descripción: "></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="237px" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Eliminar" Width="112px" OnClick="Button4_Click" Visible="False" />
                &nbsp;&nbsp;
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
