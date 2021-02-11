<%@ Page Title="Expense List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExpenseList.aspx.cs" Inherits="NimbusSharp.ExpenseList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %></h2>
    <h3>Review Open Claims</h3>

    <asp:GridView ID="ExpensesGridView"
        DataKeyNames="ClaimID"
        AutoGenerateColumns="false"
        EmptyDataText="N/A"
        AllowPaging="true"
        UseAccessibleHeader="true"
        CssClass="table table-bordered table-hover table-striped"
        runat="server">
        <Columns>
            <asp:BoundField DataField="ClaimID" HeaderText="Claim ID" InsertVisible="false" Visible="false" ReadOnly="true" SortExpression="ClientID" />
            <asp:BoundField DataField="Name" HeaderText="Claimer Name" SortExpression="Name" />
            <asp:BoundField DataField="ClaimAmount" HeaderText="Claim Amount($0.00)" SortExpression="ClaimAmount" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
                       <asp:TemplateField HeaderText="Claim Description">

           </asp:TemplateField>
            <%--<asp:BoundField DataField="ClaimDescription" HeaderText="Description from Claimer" SortExpression="ClaimDescription" />--%>
            <asp:BoundField DataField="DateSubmitted" HeaderText="Submission Date" SortExpression="DateSubmitted" />
            <asp:BoundField DataField="StatusName" HeaderText="Status" SortExpression="StatusName" />
            <asp:BoundField DataField="DateClosed" HeaderText="Date Closed" SortExpression="DateClosed" />
            <asp:BoundField DataField="ClosedDescription" HeaderText="Closing Comments" SortExpression="ClosedDescription" />
            <asp:TemplateField HeaderText="Receipts" ItemStyle-HorizontalAlign="Center">
                 <ItemTemplate>
                    <asp:LinkButton ID="btnReceipt" runat="server" >
                        <span id="icoExpenseReceipt" aria-hidden="true" class="fas fa-receipt"></span>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton ID="btnEdit" runat="server" >
                        <span id="icoExpenseEdit" aria-hidden="true" class="fas fa-edit"></span>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>



</asp:Content>

