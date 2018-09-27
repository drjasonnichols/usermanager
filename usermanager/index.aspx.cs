using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace usermanager
{
	public partial class userdataform : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void createButton_Click(object sender, EventArgs e)
		{
			string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
			string sqlSelect = "insert into useraccount (username, password) values (@uid, @pass);";

			SqlConnection sqlConnection = new SqlConnection(sqlConnectString);
			SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

			sqlCommand.Parameters.Add("@uid", System.Data.SqlDbType.NVarChar);
			sqlCommand.Parameters["@uid"].Value = idBox.Text;
			sqlCommand.Parameters.Add("@pass", System.Data.SqlDbType.NVarChar);
			sqlCommand.Parameters["@pass"].Value = pwdBox.Text;

			sqlConnection.Open();
			sqlCommand.ExecuteNonQuery();
			sqlConnection.Close();

			idBox.Text = "";
			pwdBox.Text = "";
			userView.DataBind();
		}
	}
}