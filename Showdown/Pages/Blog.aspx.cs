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


    public partial class Blog : System.Web.UI.Page
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
                catch(System.Exception exc)
                {
                    
                }
            }

            if (c != null && c.Value != "")
            {
                uid = int.Parse(c.Value);
            }
            else
            {
                uid = -1;
            }

            if (!this.IsPostBack && uid != -1)
            {
                //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT Username FROM test WHERE UserID='" + uid + "'"))
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
                        cmd.CommandText = "SELECT *FROM post WHERE UserID IN ( SELECT UserID FROM test WHERE UserID = "+ uid+")";

                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                try
                                {
                                    sda.Fill(dt);
                                    //Query_Result.Text = dt.Rows[0][0].ToString();
                                    for (int i=0; i<dt.Rows.Count; i++)
                                    {
                                        LiteralControl BlogElem = new LiteralControl();
                                        {
                                            BlogElem.ID = "divcreated";
                                        }
                                        string html_text = "<div style=\"wdith: 85%; background-color:dimgray; margin: 4% auto; padding: 2% 2%;\">" +
                                            "<h1 style = \"text-align: center; color: black;\" > " + dt.Rows[i][1].ToString() + " </ h1 >" +
                                             "<h4 style = \"text-align: left; color: black;\" >" + dt.Rows[i][2].ToString() + "</ h4 >" +
                                             "</div>";
                                        BlogElem.Text = html_text;
                                        Button del_button = new Button();
                                        del_button.ID = "del" + dt.Rows[i][0].ToString();
                                        del_button.Text = "Delete this post";
                                        del_button.Command += Del_button_Command;
                                        del_button.CommandArgument = dt.Rows[i][0].ToString();
                                        //del_button.Click += del_button.CommandName.;
                                        BlogString.Controls.Add(BlogElem);
                                        BlogString.Controls.Add(del_button);
                                    }
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

        private void Del_button_Command(object sender, CommandEventArgs e)
        {
            Label myLabel = new Label();
            myLabel.Text = "Label" + e.CommandArgument;
            BlogString.Controls.Add(myLabel);
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            HttpCookie c = HttpContext.Current.Response.Cookies.Get("User");
            c.Value = "";
            Query_Result.Text = "";
            //Page_Load(sender, e);
            Response.Redirect("../index.aspx");
        }

        protected void DeleteButton_Click(string id)
        {
            
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' You'd delete post#"+id+" if the developer wasnt lazy enough. ');");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}