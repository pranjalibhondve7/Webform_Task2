using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Task2
{
    public partial class Form1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        string text;
        string firstLetterOfEachWord, address, city, state;       
        string company_name;
        //SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }       
      
        protected void Button1_Click(object sender, EventArgs e)
        {            
            cmd = new SqlCommand("Insert into Registraton(Username,Sr.No,Name,Email,Address,DateOfBirth,Gender,City,State,Pincode,Company_Name,Designation,Mob_No_1,Mob_No_2,Mob_No_3,Date) values(@username,@Srno,@Full_Name,@Email_Id,@Address1,@DOB1,@Gender1,@City1,@State1,@Pincode1,@Company_Name1,@Designation1,@Mobile_No1,@Mobile_No2,@Mobile_No3,GETDATE())", con);
            cmd.Parameters.AddWithValue("@Full_Name",txtname.Text); 
            cmd.Parameters.AddWithValue("@Email_Id", txtemail.Text);
            cmd.Parameters.AddWithValue("@Address1", txtaddress.Text);
            cmd.Parameters.AddWithValue("@DOB1", txtdob.Text);
            cmd.Parameters.AddWithValue("@Company_Name1", txtcomname.Text);
            cmd.Parameters.AddWithValue("@Pincode1", txtpin.Text);
            cmd.Parameters.AddWithValue("@Mobile_No1", txtmob1.Text);
            cmd.Parameters.AddWithValue("@Mobile_No2", txtmob2.Text);
            cmd.Parameters.AddWithValue("@Mobile_No3", txtmob3.Text);
            cmd.Parameters.AddWithValue("@City1",txtcity.Text);
            cmd.Parameters.AddWithValue("@State1",txtstate.Text);
            cmd.Parameters.AddWithValue("@Designation1", txtdesignation.Text);
            cmd.Parameters.AddWithValue("@Gender1", txtgender.Text);
 
            //if (rbmale.Checked)
            //{
            //    cmd.Parameters.AddWithValue("@Gender1", "Male");

            //}
            //if (rbfemale.Checked)
            //{
            //    cmd.Parameters.AddWithValue("@Gender1", "Female");

            //}
            //if (rbother.Checked)
            //{
            //    cmd.Parameters.AddWithValue("@Gender1", "Other");

            //}
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Record Insert Successfully...!')</script>");
                //Response.Redirect("Report.aspx");
                clear();
                Response.Redirect("Report.aspx");
            }
            else
            {
                Response.Write("<script>alert('Failed......!!!')</script>");
            }
            con.Close();
        }
        void clear()
        {
            txtname.Text = string.Empty; txtemail.Text = string.Empty; txtmob1.Text = string.Empty;
            txtmob2.Text = string.Empty; txtmob3.Text = string.Empty; txtaddress.Text = string.Empty;
            txtdob.Text = string.Empty; txtcomname.Text = string.Empty; txtpin.Text = string.Empty;
            txtcity.Text = string.Empty; txtstate.Text = string.Empty; txtdesignation.Text = string.Empty;
            txtname.Focus();
        }
        //protected void txtname_TextChanged(object sender, EventArgs e)
        //{
        //    text = txtname.Text;
        //    string firstLetterOfString = text.Substring(0, 1).ToUpper() + text.Substring(1);
        //    firstLetterOfEachWord = string.Join(" ", text.Split(' ').ToList().ConvertAll(word => word.Substring(0, 1).ToUpper() + word.Substring(1))
        //);
        //    //char[] array = value.ToCharArray();
        //}

        //protected void txtaddress_TextChanged(object sender, EventArgs e)
        //{
        //    text = txtaddress.Text;
        //    string firstLetterOfString = text.Substring(0, 1).ToUpper() + text.Substring(1);
        //     address = string.Join(" ", text.Split(' ').ToList().ConvertAll(word => word.Substring(0, 1).ToUpper() + word.Substring(1)));
        //}

        //protected void txtcity_TextChanged(object sender, EventArgs e)
        //{
        //    text = txtcity.Text;
        //    string firstLetterOfString = text.Substring(0, 1).ToUpper() + text.Substring(1);
        //    city = string.Join(" ", text.Split(' ').ToList().ConvertAll(word => word.Substring(0, 1).ToUpper() + word.Substring(1))
        //    );
        //}

        //protected void txtcomname_TextChanged(object sender, EventArgs e)
        //{
        //    text = txtcomname.Text;
        //    string firstLetterOfString = text.Substring(0, 1).ToUpper() + text.Substring(1);
        //    company_name = string.Join(" ", text.Split(' ').ToList().ConvertAll(word => word.Substring(0, 1).ToUpper() + word.Substring(1))
        //    );
        //}

        //protected void txtstate_TextChanged(object sender, EventArgs e)
        //{
        //    text = txtstate.Text;
        //    string firstLetterOfString = text.Substring(0, 1).ToUpper() + text.Substring(1);
        //    state = string.Join(" ", text.Split(' ').ToList().ConvertAll(word => word.Substring(0, 1).ToUpper() + word.Substring(1))
        //    );
        //}
    }
}
