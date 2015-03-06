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

        static RedisClient redisClient = new RedisClient("42.159.198.42",8080);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
  

            }else{

            }
            myPubs = redisClient.GetAllItemsFromList("userpub");
            if (myPubs.Count == 0)
            {

                redisClient.EnqueueItemOnList("userpub", "I am now start to use it.");
                myPubs = redisClient.GetAllItemsFromList("userpub");

            }   

        }


        protected void nSubmit_Click(object sender, EventArgs e)
        {
            String input_Message = this.nMessage.Text;
            if (input_Message == null || input_Message == " " || IsPageRefreshed)
            { }
            else
            {
                redisClient.EnqueueItemOnList("userpub", input_Message);
               // redisClient.LPush("userpub", getbyte"hello");
                
                //for (int i = 0; i < redisClient.GetListCount("userpub"); i++) { }
                myPubs = redisClient.GetAllItemsFromList("userpub");
                this.nMessage.Text = null;
                //foreach(String myPub in myPubs){
            }


            //}
            

        }

        private String buildDetails(String web_message)
        {
            StringBuilder result = null;
            result.Append("<div class=\"web_recieve\">");
            return result.ToString();
        }
        
    }
}