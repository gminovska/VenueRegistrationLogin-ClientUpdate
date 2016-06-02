using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void loginButton_Click(object sender, EventArgs e)
    {
        VenueLogin();
    }
    protected void VenueLogin()
    {
        VenueRegLog.VenueRegistrationLoginServiceClient rs = new VenueRegLog.VenueRegistrationLoginServiceClient();
        int key = rs.VenueLogin(userTextBox.Text, passTextBox.Text);
        if(key != 0)
        {
            //errorLabel.Text = "Welcome!";
            Session["Userkey"] = key;
            Response.Redirect("Venue.aspx");

        }
        else
        {
            errorLabel.Text = "Invalid Login";
        }
    }
}