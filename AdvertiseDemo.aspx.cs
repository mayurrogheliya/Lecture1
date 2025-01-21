using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lecture1
{
    public partial class AdvertiseDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile) { 
                string filename = FileUpload1.FileName;
                string path = Server.MapPath("~/UploadFiles/") + filename;
                FileUpload1.SaveAs(path);
                Label1.Text = "File upload successfully";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = "Selected Date: " + Calendar1.SelectedDate.ToString("dd-MM-yyyy")+"\nSelected Day: "+Calendar1.SelectedDayStyle.ToString();
        }
    }
}