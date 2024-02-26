<%@ Page Title="" Language="C#" MasterPageFile="~/Oursite.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="RainbowSchool_AzureWeb.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 232px;
        height: 152px;
        position: absolute;
        top: 44px;
        left: 13px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>Student details!!</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="StudentAddress" HeaderText="StudentAddress" SortExpression="StudentAddress" />
                    <asp:BoundField DataField="classId" HeaderText="classId" SortExpression="classId" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDbazure1ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @original_StudentId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [StudentAddress] = @original_StudentAddress AND (([classId] = @original_classId) OR ([classId] IS NULL AND @original_classId IS NULL))" InsertCommand="INSERT INTO [Students] ([StudentId], [FirstName], [LastName], [Age], [StudentAddress], [classId]) VALUES (@StudentId, @FirstName, @LastName, @Age, @StudentAddress, @classId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDbazure1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [StudentAddress] = @StudentAddress, [classId] = @classId WHERE [StudentId] = @original_StudentId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [StudentAddress] = @original_StudentAddress AND (([classId] = @original_classId) OR ([classId] IS NULL AND @original_classId IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_StudentId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_StudentAddress" Type="String" />
                    <asp:Parameter Name="original_classId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StudentId" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="StudentAddress" Type="String" />
                    <asp:Parameter Name="classId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="StudentAddress" Type="String" />
                    <asp:Parameter Name="classId" Type="Int32" />
                    <asp:Parameter Name="original_StudentId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_StudentAddress" Type="String" />
                    <asp:Parameter Name="original_classId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
