using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select texto from denuncias where id ='" + TextBox1.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                TextBox1.ReadOnly = true;
                TextBox2.ReadOnly = false;
                TextBox2.Visible = true;
                TextBox2.Text = registro["texto"].ToString();
                Button1.Visible = false;
                Button4.Visible = true;
                Button2.Visible = true;
                Button3.Visible = true;
            }
            else
            {
                Label6.Text = "No existe una denuncia con este número de gestión";
                Button1.Visible = false;
                Button4.Visible = true;
                TextBox1.ReadOnly = true;
                TextBox2.ReadOnly = true;
            }
            conexion.Close();
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox1.ReadOnly = false;
            TextBox2.Text = "";
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Label5.Text = "";
            Label6.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("update denuncias set texto ='" + TextBox2.Text + "' where id ='" + TextBox1.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Label5.Text = "Datos Modificados";
                TextBox1.ReadOnly = true;
                TextBox2.ReadOnly = true;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = true;

            }
            else
            {
                Label5.Text = "No existe la denuncia";
            }

            conexion.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("delete from denuncias where id ='" + TextBox1.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Label5.Text = "Se borró la denuncia";
                TextBox1.ReadOnly = true;
                TextBox2.ReadOnly = true;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = true;
            }
            else
            {
                Label5.Text = "No existe la denuncia";
            }
                
            conexion.Close();
        }
    }
}