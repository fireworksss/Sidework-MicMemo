using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceStack.Redis;

namespace MicMemo
{
    public partial class register : RefreshServe
    {
        String reg_account_name;
        String reg_password_ini;
        String reg_password_cor;
        String reg_account_pwd;
        static RedisClient redisClient = new RedisClient("42.159.197.190", 8080);
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
                    int createUser = 0;
                    createUser = createNewUser(reg_account_name,reg_password_cor);
                }else{

                }
            }
        }
        private int createNewUser(String userName, String userPass)
        {
            bool nameCreate = false;
            bool passCreate = false;
            int result = 0;
            nameCreate = redisClient.SetEntryInHashIfNotExists(userName + "info", "userName", userName);
            passCreate = redisClient.SetEntryInHashIfNotExists(userName + "info", "userPass", userPass);

            if (nameCreate && passCreate) { result = 1; }
            else
            {
                result = 0;
            }

            return result;

        }
    }
}