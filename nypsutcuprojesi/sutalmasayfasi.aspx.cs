using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nypsutcuprojesi
{
    public partial class sutalmasayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            eklenenUrun urun = new eklenenUrun(uruntipiddl.SelectedItem.Text, int.Parse(urunadediddl.SelectedItem.Text));
            if (!IsPostBack)
            {
                foreach (var item in urun.urunadlari)
                {
                    uruntipiddl.Items.Add(item);
                }
            }
        }

        protected void satinalbtn_Click(object sender, EventArgs e)
        {
            eklenenUrun urun = new eklenenUrun(uruntipiddl.SelectedItem.Text,int.Parse(urunadediddl.SelectedItem.Text));
            urun.urunAl(tarihtxt.Text, uruntipiddl.SelectedItem.Text, telefontxt.Text, adrestxt.Text);
            uruntipiddl.Items.Remove(urun.urunuKaldir(uruntipiddl.SelectedItem.Text));
            almabilgisi.Text = urun.aliciBilgileri.Last();
        }



    }
}