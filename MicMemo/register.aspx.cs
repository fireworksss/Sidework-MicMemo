using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicMemo
{
    public partial class register : RefreshServe
    {
        String reg_account_name;
        String reg_password_ini;
        String reg_password_cor;
        String reg_account_pwd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void nSubmit_Click(object sender, EventArgs e)
        {
            if(IsPageRefreshed)
            { }
            else
            {
                reg_account_name = this.register_account.Text;
                reg_password_ini = this.password_ini.Text;
                reg_password_cor = this.password_cor.Text;
                if (reg_password_ini == reg_password_cor) { 

                }else{

                }
            }
        }
    }
}