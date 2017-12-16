using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using Comp229_Assign04.Models;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
    public partial class AddModels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btnSaveModel_Click(object sender, EventArgs e)
        {
            Added added = new Added();
            added.Name = txtbxName.Text;
            added.Faction = ddlFaction.SelectedValue;
            added.Rank = Convert.ToInt32(rblRank.SelectedValue);
            added.Base = Convert.ToInt32(txtBase.Text);
            added.Size = Convert.ToInt32(txtSize.Text);
            added.DeploymentZone = rblDeploymentZone.SelectedValue;
            added.Mobility = Convert.ToInt32(txtMobility.Text);
            added.Willpower = Convert.ToInt32(txtMobility.Text);
            added.Resiliance = Convert.ToInt32(txtResiliance.Text);
            added.Wounds = Convert.ToInt32(txtWounds.Text);

            var filepath = MapPath("~/Assets/Assign04.json");
            if (File.Exists(filepath))
            {
                //Deserialize json file
                var jsonData = JsonConvert.DeserializeObject<List<Added>>(File.ReadAllText(filepath));

                //Add object to jsonData
                jsonData.Add(added);

                //Serialize jsonData to file
                File.WriteAllText(filepath, JsonConvert.SerializeObject(jsonData));

                this.SendEmail();

                //Redirect
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void SendEmail()
        {
            SmtpClient smtpClient = new SmtpClient("smtp-mail.outlook.com", 587);
            MailMessage message = new MailMessage();
            try
            {
                // These values are probably set by the client.
                message.Subject = "Testing!";
                message.Body = "This is the body of a sample message";

                // These could be static, or dynamic, depending on situation.
                MailAddress toAddress = new MailAddress("amyrzaly@my.centennialcollege.ca", "You");
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229");
                message.From = fromAddress;
                message.To.Add(toAddress);
                smtpClient.Host = "smtp-mail.outlook.com";

                // Note that EnableSsl must be true, and we need to turn of default credentials BEFORE adding the new ones
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "password");

                smtpClient.Send(message);
                Response.Write("E-mail sent!");
            }
            catch (Exception ex)
            {
                Response.Write("Couldn't send the e-mail - there is error: " + ex.Message);
            }
        }
    }
}