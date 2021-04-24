using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace SpisakUcenika
{
    public class Ucenik
    {
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string Razred { get; set; }

        public Ucenik(string line)
        {
            string[] podaci = line.Split('|');
            Ime = podaci[0];
            Prezime = podaci[1];
            Razred = podaci[2];              
        }

        public static List<Ucenik> PreuzmiUcenike()
        {
            List<Ucenik> ucenici = new List<Ucenik>();
            using (StreamReader sr = new StreamReader(HttpContext.Current.Server.MapPath("~/ucenici.txt")))
            {
                try
                {
                    string line = sr.ReadLine();
                    while (!string.IsNullOrEmpty(line))
                    {
                        Ucenik ucenik = new Ucenik(line);
                        ucenici.Add(ucenik);
                        line = sr.ReadLine();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
            return ucenici;
        }

        public static void DodajUcenika(string line)
        {
            using (StreamWriter sw = new StreamWriter(HttpContext.Current.Server.MapPath("~/ucenici.txt"), true))
            {
                sw.WriteLine(line);
            }
        }
    }
}