<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ATMExpwithSP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ATM Money Transfer<br />
        <br />
        <br />
        Choose Your account :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [Table1]"></asp:SqlDataSource>
        <br />
        <br />
        Amount In Your Account :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Salary" DataValueField="Salary">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Salary] FROM [Table1]"></asp:SqlDataSource>
        <br />
        <br />
        How much Amount You want to Transfer :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Transfer account Number :
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
