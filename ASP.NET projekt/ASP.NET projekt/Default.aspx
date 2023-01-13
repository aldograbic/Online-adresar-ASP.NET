<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET_projekt.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/style.css" type="text/css" rel="stylesheet"/>
    <link href="~/address-book.ico" type="image/x-icon" rel="shortcut icon" />
    <script type="text/javascript">
        function odjaviMe() {
            if (confirm("Želite li se odjaviti?") == false) {
                event.preventDefault();
            }
        }
    </script>
    <title>Online adresar</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                
                <asp:View ID="ViewPocetna" runat="server">
                    <header>
                        <nav>
                            <ul>
                                <li><asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Login.aspx">Prijava</asp:HyperLink></li>
                                <li><asp:HyperLink ID="HyperLinkRegistration" runat="server" NavigateUrl="~/Registration.aspx">Registracija</asp:HyperLink></li>
                            </ul>
                        </nav>
                    </header>
                    <main>
                        <section class="default">
                            <h1>Online adresar</h1>
                            <p>Nemojte pamtiti, tu je adresar da pamti za Vas!</p>
                            
                            <asp:Image ID="ImageNaslovna" runat="server" ImageUrl="~/naslovna-slika.png"/>
                            <p>Samo registrirani korisnici mogu koristiti aplikaciju.</p>
                        </section>
                    </main>
                    <footer>Copyright &copy; 2023 Aldo Grabić</footer>

                </asp:View>

                <asp:View ID="ViewAdresar" runat="server">
                    <header>
                        <nav>
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLinkOsobniPodaci" runat="server" NavigateUrl="~/OsobniPodaci.aspx">Osobni podaci</asp:HyperLink>
                                </li>
                            </ul>
                            <ul>
                                <li><asp:LoginName ID="LoginName1" runat="server"/></li>
                                <li><asp:LoginStatus ID="LoginStatus1" runat="server" LogoutText="Odjava" ForeColor="#0065b9"/></li>
                            </ul>

                        </nav>
                        
                        
                    </header>
                    <main>
                        <section class="default">
                            <h1>Online adresar</h1>
                            <p>Ovdje unesite svoje kontakte!</p>
                            <table>
                                <tr>
                                    <td>Ime:</td>
                                    <td><asp:TextBox ID="TextBoxIme" runat="server"></asp:TextBox></td>
                                    <td><asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="TextBoxIme" ErrorMessage="Name is required." ToolTip="Name is required." ValidationGroup="unos">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>Prezime:</td>
                                    <td><asp:TextBox ID="TextBoxPrezime" runat="server"></asp:TextBox></td>
                                    <td><asp:RequiredFieldValidator ID="SurnameRequired" runat="server" ControlToValidate="TextBoxPrezime" ErrorMessage="Surname is required." ToolTip="Surname is required." ValidationGroup="unos">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>Adresa:</td>
                                    <td><asp:TextBox ID="TextBoxAdresa" runat="server"></asp:TextBox></td>
                                    <td><asp:RequiredFieldValidator ID="AdressRequired" runat="server" ControlToValidate="TextBoxAdresa" ErrorMessage="Address is required." ToolTip="Address is required." ValidationGroup="unos">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>Telefon:</td>
                                    <td><asp:TextBox ID="TextBoxTelefon" runat="server"></asp:TextBox></td>
                                    <td><asp:RequiredFieldValidator ID="PhoneRequired" runat="server" ControlToValidate="TextBoxTelefon" ErrorMessage="Phone number is required." ToolTip="Phone number is required." ValidationGroup="unos">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td>Email:</td>
                                    <td><asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></td>
                                    <td><asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="unos">*</asp:RequiredFieldValidator></td>
                                </tr>
                            </table>
                            <asp:Button ID="ButtonUnesi" CssClass="unesi_gumb" runat="server" Text="Unesi" OnClick="ButtonUnesi_Click" ValidationGroup="unos"/>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:konekcija %>" SelectCommand="SELECT [Id], [Ime], [Prezime], [Adresa], [Telefon], [Email] FROM [Adresar] WHERE ([UnesenoOd] = @UnesenoOd)" DeleteCommand="DELETE FROM Adresar WHERE Id = @Id" InsertCommand="UPDATE Adresar SET Ime = @Ime, Prezime = @Prezime, Adresa = @Adresa, Telefon = @Telefon, Email = @Email WHERE Id = @Id" UpdateCommand="UPDATE Adresar SET Ime = @Ime, Prezime = @Prezime, Adresa = @Adresa, Telefon = @Telefon, Email = @Email WHERE Id = @Id">
                                <DeleteParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="Ime" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Prezime" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Adresa" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Telefon" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Email" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="UnesenoOd" SessionField="UserName" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="Ime" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Prezime" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Adresa" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Telefon" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Email" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AllowPaging="True" PageSize="5" BackColor="White" ForeColor="#333333" DataKeyNames="Id">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime"/>
                                    <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime" />
                                    <asp:BoundField DataField="Adresa" HeaderText="Adresa" SortExpression="Adresa"/>
                                    <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon"/>
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"/>
                                </Columns>
                            </asp:GridView>
                        </section>
                    </main>
                    <footer>Copyright &copy; 2023 Aldo Grabić</footer>
                </asp:View>

            </asp:MultiView>
        </div>
    </form>
    
</body>
</html>
