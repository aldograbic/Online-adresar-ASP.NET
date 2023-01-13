<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ASP.NET_projekt.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="~/address-book.ico" type="image/x-icon" rel="shortcut icon" />
    <script type="text/javascript">
        function uspjesnaReg() {
            alert("Uspješna registracija");
        }
    </script>
    <title>Registracija</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="registracija">
            <asp:CreateUserWizard ID="CreateUserWizard1" CreateUserButtonStyle-CssClass="reg_gumb" runat="server" OnCreatingUser="CreateUserWizard1_CreatingUser" LoginCreatedUser="False" CreateUserButtonText="Potvrdi" CompleteSuccessText="Korisnički račun je uspješno stvoren." DuplicateEmailErrorMessage="E-mail adresa je već u upotrebi. Unesite drugu adresu," DuplicateUserNameErrorMessage="Unesite drugo korisničko ime." InvalidAnswerErrorMessage="Unesite drugačije sigurnosno pitanje." InvalidEmailErrorMessage="Unesite valjanu e-mail adresu." InvalidPasswordErrorMessage="Minimalna duljina lozinke: {0}.  Posebni znakovi potrebni: {1}." InvalidQuestionErrorMessage="Unesite drugačiji sigurnosni odgovor." UnknownErrorMessage="Korisnički račun nije napraljen. Pokušajte ponovno.">
            <CreateUserButtonStyle CssClass="reg_gumb"></CreateUserButtonStyle>
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center" colspan="2" style="text-decoration: underline; font-size: xx-large; padding-bottom: 10px; color: #00447c;">Registracija</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Korisničko ime:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Korisničko ime je potrebno." ToolTip="Korisničko ime je potrebno." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Lozinka:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Lozinka je potrebna." ToolTip="Lozinka je potrebna." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Potvrdi lozinku:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Potvrda lozinke je potrebna." ToolTip="Potvrda lozinke je potrebna." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="ImeLabel" runat="server" AssociatedControlID="Password">Ime:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Ime" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ImeRequired" runat="server" ControlToValidate="Ime" ErrorMessage="Ime je potrebno." ToolTip="Ime je potrebno." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PrezimeLabel" runat="server" AssociatedControlID="Password">Prezime:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Prezime" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PrezimeRequired" runat="server" ControlToValidate="Prezime" ErrorMessage="Prezime je potrebno." ToolTip="Prezime je potrebno." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail je potreban." ToolTip="E-mail je potreban." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Sigurnosno pitanje:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Sigurnosno pitanje je potrebno." ToolTip="Sigurnosno pitanje je potrebno." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Sigurnosni odgovor:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Sigurnosni odgovor je potreban." ToolTip="Sigurnosni odgovor je potreban." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Lozinke moraju biti identične." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </form>
</body>
</html>
