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
        public String reg_account_name;
        public String reg_password_ini;
        public String reg_password_cor;
        public String reg_account_pwd;
        
        static RedisClient redisClient = new RedisClient("fairspark.cloudapp.net", 6379);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cSubmit_Click(object sender, EventArgs e)
        {
            String url;
            String error;
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
                    if (createUser == 1)
                    {
                        url = "/main_page.aspx?userid=" + reg_account_name;
                        Response.Redirect(url);
                    }
                    else
                    {
                        error = "failure, don't know why";
                        url = "/main_page.aspx?userid=" + error;
                        Response.Redirect(url);
                    }

                }else{
                    error = "password does not match";
                    url = "/error.aspx?error=" + error;
                    Response.Redirect(url);

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

            if (nameCreate && passCreate) {
                redisClient.EnqueueItemOnList(userName+"Pub", "I am now start to use it.");
                result = 1; }
            else
            {
                result = 0;
            }

            return result;

        }
    }
}