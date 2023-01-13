<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OsobniPodaci.aspx.cs" Inherits="ASP.NET_projekt.OsobniPodaci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/style.css" type="text/css" rel="stylesheet"/>
    <link href="~/address-book.ico" type="image/x-icon" rel="shortcut icon" />
    <title>Osobni podaci</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <nav>
                    <ul>
                        <li>
                            <asp:HyperLink ID="HyperLinkOsobniPodaci" runat="server" NavigateUrl="~/Default.aspx">Natrag</asp:HyperLink>
                        </li>
                    </ul>
                    <ul>
                        <li><asp:LoginName ID="LoginName1" runat="server"/></li>
                        <li><asp:LoginStatus ID="LoginStatus1" runat="server" LogoutText="Odjava" ForeColor="#0065b9"/></li>
                    </ul>
                </nav>
            </header>
            <main>
                <section class="osobni_podaci">
                    <h1>Vaši osobni podaci</h1>
                    <p>Korisničko ime:</p>
                    <asp:Label ID="LabelKorisnickoIme" runat="server" Text=""></asp:Label>
                    <p>Ime:</p>
                    <asp:Label ID="LabelIme" runat="server" Text=""></asp:Label>
                    <p>Prezime:</p>
                    <asp:Label ID="LabelPrezime" runat="server" Text=""></asp:Label>
                    <p>E-mail:</p>
                    <asp:Label ID="LabelEmail" runat="server" Text=""></asp:Label>
                </section>
            </main>
            <footer>Copyright &copy; 2023 Aldo Grabić</footer>
        </div>
    </form>
</body>
</html>
