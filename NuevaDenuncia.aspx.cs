using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "")
            {
                Label5.Text = "No se puede cargar denuncia sin un Detalle";

            }
            else
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["IssdTP42024"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("insert into denuncias (texto,idDenunciaCategoria) values(@Texto, @IdDenunciaCategoria)", conexion);
                comando.Parameters.AddWithValue("@Texto", TextBox1.Text);
                comando.Parameters.AddWithValue("@IdDenunciaCategoria", DropDownList1.SelectedValue);
                comando.ExecuteNonQuery();

                // Obtener el máximo id
                SqlCommand gestion = new SqlCommand("select max(id) as id from denuncias", conexion);
                SqlDataReader registro = gestion.ExecuteReader();

                registro.Read();

                // Leer el ID máximo
                int idDenuncia = registro.GetInt32(registro.GetOrdinal("id"));
                Label5.Text = "Se registró la denuncia con el número de gestión: " + idDenuncia;

                Button1.Visible = false;
                Button2.Visible = true;
                DropDownList1.Enabled = false;
                TextBox1.ReadOnly = true;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Button1.Visible = true;
            Label5.Text = "";
            TextBox1.Text = "";
            TextBox1.ReadOnly = false;
            DropDownList1.Enabled = true;
        }
    }
}