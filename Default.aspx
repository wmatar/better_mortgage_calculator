<%@ Page
     Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <h2 id= "h2">Mike's Mortgage Calculator</h2>

        <br /><br /><br /><br />

        Loan Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvLoanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br /><br />

        Annual Interest %:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbAnnualInterest" runat="server"
></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvAnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter a number"></asp:RequiredFieldValidator>

        <br /><br />

        Loan Term (Yrs):&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="rtvLoanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="please enter a number"></asp:RequiredFieldValidator>

        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />

        <br />
        <br />
        <br />


        <% If Not IsPostBack Then%>
                
                <p>welcome!</p>
                
                
                
            <% Else%>


        Monthly Payment: &nbsp; <span class="bold" > </span><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>

        <br /><br />

        <asp:GridView ID="loanGridView" runat="server" />
        <% End If%> 

        </div>
    </form>
</body>
</html>
