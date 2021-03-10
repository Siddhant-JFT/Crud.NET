using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                toAdd();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=crudDB;Integrated Security=True");
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into EMPLOYEES(Name, Age, Contact, Designation) values('"+nameBox.Text+"','"+int.Parse(ageBox.Text)+"','"+contactBox.Text+"','"+ designationList.SelectedValue + "')", con);

            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Added New Employee');", true);

            toAdd();
        }

        void toAdd()
        {
            SqlCommand comm = new SqlCommand("select * from EMPLOYEES", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}