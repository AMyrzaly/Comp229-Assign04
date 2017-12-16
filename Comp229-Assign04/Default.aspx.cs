using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string path = @"C:\Users\Abubakir\Desktop\Semest 3\COMP 229 (Web Application Development)\Assignment 4\Comp229-Assign04\Comp229-Assign04\Assign04.json";
            string path = System.Web.Hosting.HostingEnvironment.MapPath("~/Scripts/Assign04.json");
            string data = File.ReadAllText(path);
            if (File.Exists(path))
            {
                var collection = JsonConvert.DeserializeObject<List<Test>>(data);


                GVListModels.DataSource = collection;
                GVListModels.DataBind();

            }
        }
    }
}