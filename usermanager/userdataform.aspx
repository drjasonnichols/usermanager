<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdataform.aspx.cs" Inherits="usermanager.userdataform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%">
			<div style="display: table; margin: 0 auto; font-family:'Century Gothic';
				color:#666666">
				Add an account
				<asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed" BorderColor="#333333" BorderWidth="1px" Width="280px">
					
					ID: <asp:TextBox ID="idBox" runat="server" Width="80px"></asp:TextBox>
					Pwd: <asp:TextBox ID="pwdBox" runat="server" TextMode="Password" Width="80px"></asp:TextBox>
					<asp:LinkButton ID="createButton" runat="server" Font-Size="Small" OnClick="createButton_Click">Add</asp:LinkButton>

				</asp:Panel>

			<asp:SqlDataSource ID="userData" runat="server" 
				DataSourceMode="DataReader"
				ConnectionString="<%$ ConnectionStrings:myDB %>"
				SelectCommand="Select id, username, password from useraccount;">
			</asp:SqlDataSource>
			Accounts
			<asp:GridView ID="userView" runat="server" DataSourceID="userData" Width="280px">
				<HeaderStyle Font-Names="Century Gothic" ForeColor="#333333" />
				<RowStyle Font-Names="Century Gothic" ForeColor="#666666" />
			</asp:GridView>

			</div>
		</div>
    </form>
</body>
</html>
