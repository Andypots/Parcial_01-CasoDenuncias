using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label12.Text = "La descripción no puede ser vacía";
            }
            else
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("insert into DenunciaCategorias(nombre) values('" + TextBox1.Text + "')", conexion);
                comando.ExecuteNonQuery();

                Label12.Text = "Se registro la categoría";
                Button1.Visible = false;
                Button5.Visible = true;
                TextBox1.ReadOnly = true;

                conexion.Close();
                GridView1.DataBind();
            }
        }
        protected void Button5_Click1(object sender, EventArgs e)
        {
            Button5.Visible = false;
            Button1.Visible = true;
            TextBox1.ReadOnly = false;
            TextBox1.Text = "";
            Label12.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select nombre from DenunciaCategorias " + " where id='" + TextBox3.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                TextBox2.Text = registro["nombre"].ToString();
                Button3.Visible = true;
                TextBox3.ReadOnly = true;
            }
            else
            {
                Label13.Text = "No existe un categoría con este id";
                Button3.Visible = false;
                TextBox3.ReadOnly = true;
            }

            Button2.Visible = false;
            Button6.Visible = true;
            conexion.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label13.Text = "";
            Label14.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox2.ReadOnly = false;
            TextBox3.ReadOnly = false;
            Button2.Visible = true;
            Button6.Visible = false;
            Button3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("update DenunciaCategorias set nombre ='" + TextBox2.Text + "' where id ='" + TextBox3.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Label14.Text = "Datos Modificados";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox2.ReadOnly = true;
                TextBox3.ReadOnly = true;
                Button3.Visible = false;
                Button6.Visible = true;
                Button2.Visible = false;
                GridView1.DataBind();
            }
            else
            {
                Label2.Text = "No se pudieron actualizar los datos";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Button3.Visible = false;
                Button6.Visible = false;
                Button2.Visible = true;
            }  

            conexion.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("delete from DenunciaCategorias where id ='" + TextBox4.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Label15.Text = "Se borró la categoría";
                TextBox4.Text = "";
                TextBox5.Text = "";
                Button4.Visible = false;
                Button7.Visible = false;
                Button8.Visible = true;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No fue posible eliminar la categoría";
            }
            
            conexion.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select nombre from DenunciaCategorias " + " where id='" + TextBox4.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            if (registro.Read())
            {
                TextBox5.Text = registro["nombre"].ToString();
                Button4.Visible = true;
                Button7.Visible = false;
                Button8.Visible = true;
                Label15.Text = "";
            }

            else
            {
                Label15.Text = "No existe un categoría con este id";
                Button4.Visible = false;
                Button7.Visible = false;
                Button8.Visible = true;
            }
            TextBox4.ReadOnly = true;
            TextBox5.ReadOnly = true;

            conexion.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label15.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox4.ReadOnly = false;
            Button8.Visible = false;
            Button7.Visible = true;
        }
    }
}