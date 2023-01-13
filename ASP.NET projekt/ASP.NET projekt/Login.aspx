<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET_projekt.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="~/address-book.ico" type="image/x-icon" rel="shortcut icon" />
    <title>Prijava</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <asp:Login ID="Login1" runat="server" LoginButtonStyle-CssClass="log_gumb" DisplayRememberMe="False" OnAuthenticate="Login1_Authenticate" FailureText="Prijava neuspješna. Pokušajte ponovno." LoginButtonText="Potvrdi" PasswordLabelText="Lozinka:" TitleText="Prijava" TitleTextStyle-Font-Underline="true" TitleTextStyle-Font-Size="XX-Large" UserNameLabelText="Korisničko ime:" TitleTextStyle-ForeColor="#00447c">
<LoginButtonStyle CssClass="log_gumb"></LoginButtonStyle>

<TitleTextStyle Font-Size="XX-Large" Font-Underline="True"></TitleTextStyle>
            </asp:Login>
            <p>Nemate račun? <asp:HyperLink ID="HyperLinkRegistration" runat="server" NavigateUrl="~/Registration.aspx">Registrirajte se!</asp:HyperLink></p> 
        </div>
    </form>
</body>
</html>
