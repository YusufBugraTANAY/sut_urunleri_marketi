using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nypsutcuprojesi
{
    public partial class girisekrani : System.Web.UI.Page
    {
        Dictionary<int, string> IDler = new Dictionary<int, string>() { 
            { 12,"123" },
            { 23,"123" },
            { 45,"123" },
            { 66,"123" },
            };
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void satinalmaekranbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sutalmasayfasi.aspx");
        }

        protected void saticigirisbtn_Click(object sender, EventArgs e)
        {
            int gonderilecekID = int.Parse(saticiIDtxt.Text);
            string gonderilecekSifre = sifretxt.Text;
            int gonderilecekGirisSayisi = 0;
            foreach (var x in IDler) {
                if(x.Key == gonderilecekID && x.Value == gonderilecekSifre)
                {
                    gonderilecekGirisSayisi++;
                    satici1 satici = new satici1(gonderilecekID, gonderilecekSifre, gonderilecekGirisSayisi);
                    Response.Redirect("/saticisayfasi.aspx");
                    break;
                }
                else
                {
                    Response.Write("<script>alert('Hatalı kullanıcı adı ve şifre girdiniz.')</script>");
                    break;
                }
            };


        }
    }
}