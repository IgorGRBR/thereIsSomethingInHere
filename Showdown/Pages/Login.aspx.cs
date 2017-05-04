using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Showdown.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        string UID;
        HttpCookie c;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["User"] == null)
            {
                c = new HttpCookie("User");
                //c.Value = UID;
                c.Expires = DateTime.Today.AddDays(365);
            }
            else
            {
                c = HttpContext.Current.Request.Cookies.Get("User");
            }
            if (c.Value != null)
            {
                UID = c.Value;
            }
            c.Shareable = true;
        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {

            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    if (con.State == ConnectionState.Open || con.State == ConnectionState.Broken)
                    {
                        con.Close();
                    }
                    try
                    {
                        con.Open();
                    }
                    catch (SystemException exc)
                    {
                        Error_Text.InnerText = "Database access error.";
                    }
                    string un = UN_Box.Text;
                    string pw = PS_Box.Text;
                    //string mv;
                    if (!(con.State == ConnectionState.Closed || con.State == ConnectionState.Broken))
                    using (MySqlCommand cmd = new MySqlCommand("select UserID from test where Username='"+ un +"' and Password='"+ pw +"'"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                if (dt.Rows.Count > 0)
                                {
                                    UID = dt.Rows[0][0].ToString();
                                    
                                    Error_Text.InnerText = "";

                                    c = new HttpCookie("User");
                                    c.Expires = DateTime.Today.AddDays(365);
                                    c.Value = UID;
                                    HttpContext.Current.Response.Cookies.Add(c);
                                    Response.Redirect("../Index.aspx", true);
                                }
                                else
                                {
                                    Error_Text.InnerText = "Incorrect username/password!";
                                }
                                //mv = (int.Parse(dt.Rows[0][0].ToString()) + 1).ToString();

                            }
                        }
                    }
                }
            }
        }
    }
}