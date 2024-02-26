<%@ Page Title="" Language="C#" MasterPageFile="~/Oursite.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="RainbowSchool_AzureWeb.Classes" %>
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
        <td>Class details!!&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style6" style="z-index: 1" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="classId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="classId" HeaderText="classId" ReadOnly="True" SortExpression="classId" />
                    <asp:BoundField DataField="className" HeaderText="className" SortExpression="className" />
                    <asp:BoundField DataField="SeatsCount" HeaderText="SeatsCount" SortExpression="SeatsCount" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDbazure1ConnectionString2 %>" DeleteCommand="DELETE FROM [Classes] WHERE [classId] = @original_classId AND [className] = @original_className AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))" InsertCommand="INSERT INTO [Classes] ([classId], [className], [SeatsCount]) VALUES (@classId, @className, @SeatsCount)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDbazure1ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [className] = @className, [SeatsCount] = @SeatsCount WHERE [classId] = @original_classId AND [className] = @original_className AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_className" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="classId" Type="Int32" />
                    <asp:Parameter Name="className" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="className" Type="String" />
                    <asp:Parameter Name="SeatsCount" Type="Int32" />
                    <asp:Parameter Name="original_classId" Type="Int32" />
                    <asp:Parameter Name="original_className" Type="String" />
                    <asp:Parameter Name="original_SeatsCount" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
