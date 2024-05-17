<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarDenuncias.aspx.cs" Inherits="WebApplication2.ListarDenuncias" %>

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
        .auto-style4 {
            width: 219px;
            height: 23px;
        }
        .auto-style5 {
            width: 133px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            text-align: left;
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
                <td class="auto-style7" colspan="3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdministrarDenuncias.aspx">Volver</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listar Denuncias"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Categoría: "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42024Categorias %>" SelectCommand="SELECT * FROM [DenunciaCategorias]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="2" CellSpacing="1" DataKeyNames="Numero de Gestión" DataSourceID="SqlDataSource2" GridLines="Vertical" ShowHeaderWhenEmpty="True" Width="500px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Numero de Gestión" HeaderText="Numero de Gestión" InsertVisible="False" ReadOnly="True" SortExpression="Numero de Gestión" />
                            <asp:BoundField DataField="Detalle" HeaderText="Detalle" SortExpression="Detalle" />
                            <asp:BoundField DataField="Categoría" HeaderText="Categoría" SortExpression="Categoría" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42024Denuncias %>" SelectCommand="DenunciasPorCategoria" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="idCategoria" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
