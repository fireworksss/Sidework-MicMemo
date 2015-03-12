using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceStack.Redis;
using ServiceStack.Text;
using ServiceStack.Commands;
using System.Text;



namespace MicMemo
{
    public partial class main_page : RefreshServe
    {
        public List<String> myPubs;

        static RedisClient redisClient = new RedisClient("42.159.193.100",8080);
        String userId = null;
        String userInfo = null;
        String userPub = null;
        String localUrl = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
  

            }else{

            }
            localUrl = HttpContext.Current.Request.Url.PathAndQuery;
            String userQuery = HttpContext.Current.Request.Url.Query;
            userId = userQuery.Substring(8, userQuery.Length-8);
            //userId = "trhyfgh";
            userInfo = userId + "info";
            userPub = userId + "pub";
            hot_user_name.Text = tag_user_name.Text = userId;
            myPubs = redisClient.GetAllItemsFromList(userPub);
            if (myPubs.Count == 0)
            {

                redisClient.EnqueueItemOnList(userPub, "I am now start to use it.");
                myPubs = redisClient.GetAllItemsFromList(userPub);

            }   

        }


        protected void nSubmit_Click(object sender, EventArgs e)
        {
            String input_Message = this.nMessage.Text;
            if (input_Message == null || input_Message == " " || IsPageRefreshed)
            { }
            else
            {
                redisClient.EnqueueItemOnList(userPub, input_Message);
               // redisClient.LPush("userpub", getbyte"hello");
                
                //for (int i = 0; i < redisClient.GetListCount("userpub"); i++) { }
                myPubs = redisClient.GetAllItemsFromList(userPub);
                this.nMessage.Text = null;
                //foreach(String myPub in myPubs){
            }


            //}
            

        }

        //private String buildDetails(String web_message)
        //{
        //    StringBuilder result = null;
        //    result.Append("<div class=\"web_recieve\">");
        //    return result.ToString();
        //}
        
    }
}