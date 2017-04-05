<%@ Page Language="vb" Title="HOME" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="emptyapp._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>
        List of Users</h2>
    <p>
        <asp:GridView runat="server" ID="gv" CellPadding="3" Width="100%" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            DataSourceID="sdUsers">
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="USERID" InsertVisible="False" ReadOnly="True"
                    SortExpression="userid" />
                <asp:BoundField DataField="empno" HeaderText="EMPNO" SortExpression="empno" />
                <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                <asp:BoundField DataField="pin" HeaderText="PIN" SortExpression="pin" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdUsers" runat="server" ConnectionString="<%$ ConnectionStrings:appharbor %>"
            SelectCommand="SELECT [userid], [empno], [name], [pin] FROM [users] ORDER BY [userid], [empno]">
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
