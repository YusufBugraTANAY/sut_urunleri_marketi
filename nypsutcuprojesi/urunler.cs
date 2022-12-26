using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nypsutcuprojesi
{
    public class urunler
    {
        public List<string> aliciBilgileri = new List<string>() { };
        public List<string> urunadlari = new List<string>() { "Süt", "Yoğurt", "Kefir", "Ayran"};
        private string urunAdi;
        public string UrunAdi { get { return urunAdi; } set { urunAdi = value; } }

        private int urunAdedi;
        public int UrunAdedi { get {
                if (urunAdedi < 0)
                {
                    urunAdedi = 0;
                    return urunAdedi;
                }
                return urunAdedi;

            } set { urunAdedi = value; } }

        public urunler(string UrunAdi,int UrunAdedi)
        {
            this.UrunAdi = UrunAdi;
            this.UrunAdedi = UrunAdedi;
        }

        public virtual List<string> urunEkle() {
            return urunadlari;
        }
    }
    interface IalinanUrun
    {
        void urunAl(string tarih,string urunAdi, string pnumber, string adres);
        string urunuKaldir(string urunAdi);
    }

    public class eklenenUrun : urunler, IalinanUrun  {
        public eklenenUrun(string UrunAdi, int UrunAdedi) : base(UrunAdi, UrunAdedi)
        {
        }

        public void urunAl(string tarih, string urunAdi ,string pnumber, string adres)
        {
            aliciBilgileri.Add("Adres: " + adres + "Tarih: " + tarih + "Numara: " + pnumber + "Alınan Ürün: " + urunAdi);
        }

        public string urunuKaldir(string urunAdi)
        {
            return urunAdi;
        }
        public override List<string> urunEkle() {
            foreach(string urunAdi in urunadlari)
            {
                return urunadlari;
            }
            return urunadlari;
        }
    }
}