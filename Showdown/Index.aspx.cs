using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Showdown
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = -1;

            HttpCookie c = HttpContext.Current.Request.Cookies.Get("User");

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                
                try
                {
                    con.Open();
                }
                catch (System.Exception ex)
                {
                    ErrorLog.InnerText = "SQL DB Access error.";
                }
            }

                if (c != null && c.Value != "")
            {
                uid = int.Parse(c.Value);
                LogRes.Visible = false;
                UserHotbar.Visible = true;
            }
            else
            {
                uid = -1;
                LogRes.Visible = true;
                UserHotbar.Visible = false;
            }

            if (!this.IsPostBack && uid != -1)
            {
                //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT Username FROM test WHERE UserID='"+uid+"'"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                try
                                {
                                    sda.Fill(dt);
                                    //GridView GridView1 = new GridView();
                                    //GridView1.DataSource = dt.Select("text");
                                    //GridView1.DataBind();
                                    Query_Result.Text = dt.Rows[0][0].ToString();
                                }
                                catch (MySql.Data.MySqlClient.MySqlException exc)
                                {

                                }
                                

                            }
                        }
                    }
                }
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            HttpCookie c = HttpContext.Current.Response.Cookies.Get("User");
            c.Value = "";
            Query_Result.Text = "";
            //Page_Load(sender, e);
            Response.Redirect("index.aspx");
        }
    }
}