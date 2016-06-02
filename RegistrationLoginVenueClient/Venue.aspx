<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Venue.aspx.cs" Inherits="Venue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset>
            <legend>Add an Artist</legend>
            <table>
                <tr>
                    <td>Artist Name:</td>
                    <td>
                        <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="ArtistNameFieldValidator" runat="server" ErrorMessage="Name is required" ControlToValidate="ArtistNameTextBox" ValidationGroup="AddArtist"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Artist Email:</td>
                    <td>
                        <asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="ArtistEmailFieldValidator" runat="server" ErrorMessage="Email is required" ControlToValidate="ArtistEmailTextBox" ValidationGroup="AddArtist"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Artist WebSite:</td>
                    <td>
                        <asp:TextBox ID="ArtistWebsiteTextBox" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ArtistAddButton" runat="server" Text="Submit"  causesvalidation="true" ValidationGroup="AddArtist" OnClick="artistSubmit_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ArtistErrorLabel" runat="server" Text=""></asp:Label></td>
                </tr>

            </table>
        </fieldset>
        <fieldset>
            <legend>Add a Show</legend>
            <table>
                <tr>
                    <td>Show Name:</td>
                    <td>
                        <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="ShowNameRequiredFieldValidator" runat="server" ErrorMessage="Show Name is required" ControlToValidate="ShowNameTextBox" ValidationGroup="AddShow"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Show Date:</td>
                    <td>

                        <asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="ShowDateRequiredFieldValidator" runat="server" ErrorMessage="Show Date is required" ControlToValidate="ShowDateTextBox" ValidationGroup="AddShow"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="ShowDateRegularExpressionValidator" runat="server" ErrorMessage="Not a valid date" ControlToValidate="ShowDateTextBox"  Visible="True"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Show Time:</td>
                    <td>
                        <asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="ShowTimeRequiredFieldValidator" runat="server" ErrorMessage="Show Time is required" ControlToValidate="ShowTimeTextBox"></asp:RequiredFieldValidator></td>
                </tr>
                
                    <tr>
                    <td>Ticket Info:</td>
                    <td>
                        <asp:TextBox ID="TicketInfoTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Show Name is required" ControlToValidate="ShowNameTextBox"></asp:RequiredFieldValidator>--%></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="AddShowButton" runat="server" Text="Submit" causesvalidation="true" ValidationGroup="AddShow" OnClick="showSubmit_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ShowErrorLabel" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </table>
        </fieldset>
        <fieldset>
            <legend>Add Show Details</legend>
            <table>
                <tr>
                    <td>Choose a show</td>
                    <td><asp:DropDownList ID="ShowsDropDownList" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Choose an artist</td>
                    <td><asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList></td>
                </tr>
            <tr>
                    <td>Artist Start Time</td>
                    <td>
                        <asp:TextBox ID="StartTimeTextBox" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Additional Information</td>
                    <td>
                        <asp:TextBox ID="AdditionalTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="showDetails" runat="server" Text="Add Show Details" OnClick="showDetailsButton_Click" /></td>
                </tr>
               </table> 
                </fieldset>
    </form>

</body>
</html>
