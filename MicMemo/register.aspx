﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MicMemo.register" %>

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
                   <asp:HyperLink ID="reg_btn_ic"  href="/reg_result" OnClick="nSubmit_Click" runat="server">
                        <span>立即注册</span>
                   </asp:HyperLink>
               </div>

           </div>

       </div>
    
    </div>
    </form>
</body>
</html>
