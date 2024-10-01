<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appstate.aspx.cs" Inherits="ApplicationState.Appstate" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Application State Elnet</title>
    <script type="text/javascript">
        // Function to restrict input to numbers only
        function validateNumberInput(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            // Allow only numbers (charCode between 48 and 57)
            if (charCode < 48 || charCode > 57) {
                evt.preventDefault();
            }
        }
    </script>
</head>
<style>
    .container {
        display: flex;
        flex-direction: column;
        width: 300px;
    }
    .fname {
        color: #304FFE;
    }
    .lname {
        color: #AA00FF;
    }
    .course {
        color: #D50000;
    }
</style>
<body>
    <form id="form" runat="server">
        <h3 class="fname">Jundel</h3>
        <h3 class="lname">Malazarte</h3>
        <h3 class="course">BSIT</h3>

        <div class="container">
            <!-- Form fields -->
            <!-- ID Number -->
            <label for="idnumber">ID Number:</label>
            <asp:TextBox ID="intNum" runat="server" MaxLength="10" onkeypress="validateNumberInput(event)"></asp:TextBox><br>
            
            <!-- First name -->
            <label for="fname">First name:</label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br>
            
            <!-- Last name -->
            <label for="lname">Last name:</label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br>
            
            <!-- Course -->
            <label for="course">Course</label>
            <asp:DropDownList ID="ddlCourse" runat="server">
                <asp:ListItem Value="BSIT">BSIT</asp:ListItem>
                <asp:ListItem Value="BSCS">BSCS</asp:ListItem>
                <asp:ListItem Value="BSIS">BSIS</asp:ListItem>
                <asp:ListItem Value="BSCE">BSCE</asp:ListItem>
                <asp:ListItem Value="BEED">BEED</asp:ListItem>
                <asp:ListItem Value="BSBA">BSBA</asp:ListItem>
                <asp:ListItem Value="BSHM">BSHM</asp:ListItem>
                <asp:ListItem Value="BSME">BSME</asp:ListItem>
                <asp:ListItem Value="BSEE">BSEE</asp:ListItem>
                <asp:ListItem Value="BSCA">BSCA</asp:ListItem>
                <asp:ListItem Value="BSIE">BSIE</asp:ListItem>
            </asp:DropDownList><br>

            <!-- Address -->
            <label for="address">Address</label>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><br>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

            <!-- Label to display the result -->
            <br><br>
            <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Skyblue"></asp:Label>
        </div>
    </form>
</body>
</html>
