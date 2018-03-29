using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace odev
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=NufusAdresSistemi;Integrated Security=True");
            DataTable dt = new DataTable();
            SqlCommand com = new SqlCommand("Select il_adi from il where il_plaka_kodu = "+45+"", con);  //Sql sorgusu ile Users tablomuzdaki tüm verileri bağlantı içerisinde istedik.
            com.CommandType = CommandType.Text;
            com.Connection = con;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);


            try
            {
             /*   con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                Label1.Text =  //Default.aspx sayfamızda oluşturduğumuz Repeater nesnemiz.
                dr.Close();  //DataReader işlemimizi kapatalım.*/
           /* }
            catch(Exception enes)
            {
                Response.Write(enes +"İşlem Sırasında Bir Hata Oluştu.");
            }
            finally
            {
                con.Close(); // Tüm işlemler sonunda veritabanı bağlantımızı kapatıyoruz şekilde.
            }
            */
        }
    }
}