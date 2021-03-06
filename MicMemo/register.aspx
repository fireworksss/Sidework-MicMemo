﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MicMemo.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css"></style>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="Style/main_page.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <nav class =" navbar navbar-default navbar-fixed-top ">
        <div class ="container-fluid">
            <div class ="navar-header">
                <button type ="button" class="navbar-toggle collapsed" data-toggle ="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> 
                    <span class="icon-bar"></span> 
                    <span class="icon-bar"></span> 
                    <span class="icon-bar"></span> 
                </button>
                <a class="navbar-brand" href="#">SideWork</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="navbar-nav nav">
                    <%--<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>--%>
                    <li><a href="/main_page.aspx?trhyfgh">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">More <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">My pub</a></li>
                            <li><a href="#">@me</a></li>
                            <li class="divider"></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="searchBtn btn btn-default">Search</button>
                </form>
                <ul class="navbar-nav nav navbar-right">
                   <%-- <li class="active"><a href="#">defaultUser</a></li>--%>
                    <li><a href="/register.aspx">Login</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">DefaultUser <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Account</a></li>
                            <li><a href="#">setting</a></li>
                            <li><a href="#">theme</a></li>
                            <li class="divider"></li>
                            <li><a href="#">policy</a></li>
                            <li class="divider"></li>
                            <li><a href="#">logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
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
