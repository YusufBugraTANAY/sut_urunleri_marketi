using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nypsutcuprojesi
{
    public partial class saticisayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uruneklebtn_Click(object sender, EventArgs e)
        {
            eklenenUrun urun = new eklenenUrun(urunaditxt.Text,int.Parse(urunadettxt.Text));
            urun.urunadlari.Add(urunaditxt.Text);
        }
    }
}