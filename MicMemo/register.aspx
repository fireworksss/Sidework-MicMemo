<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MicMemo.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="web_nologin">
        <div class="web_header_line"></div>
        <div class="web_reg_header web_reg_logo">
            <div class="web_reg_logo_big"></div>
        </div>

    </div>
    <form id="form1" runat="server">
    <div class="main_register_box">
        <div class="main_register_nav">
            <a class="main_register_person" href="/null">Person Register</a>
        </div>
       <div class="main_register_infobox clearfix" id="main_register_free">
           <div class="web_reg_infolist clearfix">
               <div class="field_name">
                   <span class="account_ic"></span>
                   <i>*</i>
                   Account Name
               </div>
               <div class="field_box">
                   <div class="account_box clearfix">
                       <div class="account_input">
                           <asp:TextBox ID="register_account" runat="server"/>
                       </div>
                   </div>
               </div>
               <div class="field_ind"></div>
           </div>
           <div class="web_reg_infolist clearfix">
               <div class="field_name">
                   <%--<span class="account_ic"></span>--%>
                   <i>*</i>
                   PassWord
               </div>
               <div class="field_box">
                   <div class="account_box clearfix">
                       <div class="account_input">
                           <asp:TextBox ID="password_ini" runat="server"/>
                       </div>
                   </div>
               </div>
               <div class="field_ind"></div>
           </div>
           <div class="web_reg_infolist clearfix">
               <div class="field_name">
                   <%--<span class="account_ic"></span>--%>
                   <i>*</i>
                   PassWord
               </div>
               <div class="field_box">
                   <div class="account_box clearfix">
                       <div class="account_input">
                           <asp:TextBox ID="password_cor" runat="server"/>
                       </div>
                   </div>
               </div>
               <div class="field_ind"></div>
           </div>
           <div class="web_reg_submit clearfix">
               <div class="submit_box">
                   <asp:Button ID="reg_btn_ic"  OnClick="cSubmit_Click" runat="server" Text="立即注册">
                        
                   </asp:Button>
<%--                   <asp:HyperLink ID="reg_btn_box" NavigateUrl="/main_page.aspx?userid=<%=reg_account_name%>" runat="server">
                       <i class="reg_btc_ic"/>
                       Register
                   </asp:HyperLink>--%>
                   <a class="reg_btn_box" href="/do_register.aspx?userid=<%# register_account.Text %>&pwdini=<%= password_ini.Text %>&pwdcor=<%= password_cor.Text %>">
                       <i class="reg_btc_ic"/>
                       Register
                   </a>
               </div>

           </div>

       </div>
    
    </div>
    </form>
</body>
</html>
