<%@ Page Title="Expense Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExpenseForm.aspx.cs" Inherits="NimbusSharp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Submit your claim</h3>

    <div class="row">
        <div class="col mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName">
        </div>
        <div class=" col mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName">
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label class="form-label">Amount</label>
            <div class="input-group mb-3">
                <span class="input-group-text">$</span>
                <input type="text" class="form-control" aria-label="Amount">
            </div>
        </div>
        <div class="col">
            <label for="selCategory" class="form-label">Category</label>
            <select id="selCategory" runat="server" class="form-select" aria-label="Select Category">
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col mb-3">
            <label for="expenseDescription" class="form-label">Description of Expense</label>
            <textarea class="form-control" id="expenseDescription" placeholder="..."></textarea>
        </div>
        <div class="col-sm-1 form-button-wrapper">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>

</asp:Content>
