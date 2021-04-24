using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpisakUcenika
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDodaj_Click(object sender, EventArgs e)
        {
            string line = txtIme.Text + "|" + txtPrezime.Text + "|" + txtRazred.Text;
            Ucenik.DodajUcenika(line);
        }
    }
}
