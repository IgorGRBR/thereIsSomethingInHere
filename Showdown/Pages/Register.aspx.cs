using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;

namespace Showdown.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool validate_Input()
        {
            if (PW_Box.Text == PW2_Box.Text)
            {
                Error_Text.Text = "";
                return true;
            }
                
            Error_Text.Text = "Passwords must match";
            return false;
        }

        protected void Button_Register_Click(object sender, EventArgs e)
        {
            string un = UN_Box.Text;
            string ps = PW_Box.Text;
            string tp = DDL_Type.SelectedValue;
            if (validate_Input())
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }
                    con.Open();
                    string mv;
                    using (MySqlCommand cmd = new MySqlCommand("select max(UserID) AS MV from test"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                mv = (int.Parse(dt.Rows[0][0].ToString())+1).ToString();

                            }
                        }
                    }
                    using (MySqlCommand cmd = new MySqlCommand("INSERT INTO `test`(`UserID`, `Username`, `Password`, `Type`) VALUES (" + mv + ",'" + un + "','" + ps + "','" + tp + "')"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
            }

            Response.Redirect("../Index.aspx", true);
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' You are now registered. ');");
        }
    }
}