using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nypsutcuprojesi
{
    public abstract class saticilar
    {
        public Dictionary<string, string> hesaplar = new Dictionary<string, string>(){
                {"",""}
            };
        public int ID { get;}
        private string pass;
        public string Pass { get { return pass; } }
        private int girisSayisi;
        public int GirisSayisi { get { 
            if (girisSayisi < 0)
                {
                    girisSayisi = 0;
                    return girisSayisi;
                }
            else
                {
                    return girisSayisi;
                }
            } set { girisSayisi = value; } }

        public saticilar(int ıD, string pass, int girisSayisi)
        {
            ID = ıD;
            this.pass = pass;
            GirisSayisi = girisSayisi;
        }

        public virtual string sifreGoster()
        {
            return "";
        }

    }

    public class satici1 : saticilar

    {

        public satici1(int ıD, string pass, int girisSayisi) : base(ıD, pass, girisSayisi)
        {

        }

        public override string sifreGoster()
        {
            hesaplar.Add(ID.ToString(), Pass.ToString());
            return hesaplar[ID.ToString()];
        }
    }
}