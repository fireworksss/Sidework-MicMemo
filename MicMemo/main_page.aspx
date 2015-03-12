<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_page.aspx.cs" Inherits="MicMemo.main_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css"></style>
    <link href="Style/main_page.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: black">
    <form id="main_form" runat="server">
        <div class="main_panel">
            <div class="main_panel_l">
                <div id="main_nav_group">
                    <div class="main_nav_l">
                    </div>
                </div>
            </div>
            <div id="pic_panel">
                <div class="main_panel_c">
                    <div class="sender_panel">
                        <div class="sender_box">
                            <asp:TextBox ID="nMessage" runat="server" TextMode="MultiLine" />
                        </div>
                        <asp:Button ID="nSubmit" runat="server" Text="Say" OnClick="nSubmit_Click" />
                    </div>
                    <div class="recevier_panel">
                        <div class="web_recieve" style="display: none">
                            <div class="web_recieve_detail">
                                <div class="recieve_text">
                                    <asp:Label ID="hot_text" runat="server" />
                                </div>
                                <div class="recieve_media"></div>
                            </div>

                            <div class="web_recieve_handle"></div>
                        </div>

                        <div class="web_recieve" style="display: none">
                            <div class="web_recieve_detail">
                                <div class="recieve_text">
                                    <asp:Label ID="hot_text1" runat="server" />
                                </div>
                                <div class="recieve_media"></div>
                            </div>

                            <div class="web_recieve_handle"></div>
                        </div>
                        <% foreach (String myPub in myPubs)
                           {%>

                        <div class="web_recieve clearfix">
                            <div class="web_details">
                                <div class="web_portrait W_fl">
                                    <div class="web_puber_portrait">
                                        <a class="web_portrait_radius" href="/null">
                                            <img class="web_portrait_radius" src="http://cn.bing.com/th?id=HN.608026404455909783&w=103&h=103&c=8&pid=3.1&qlt=90" />
                                        </a>
                                    </div>
                                </div>
                                <div class="web_recieve_detail">
                                    <div class="web_user_name,name_string">
                                        <a class="web_user_link,name_string">
                                            <asp:Label ID="hot_user_name" runat="server"/>
                                        </a>
                                    </div>
                                    <div class="recieve_text">
                                        <% hot_message.Text = myPub; %>
                                        <asp:Label ID="hot_message" runat="server" />
                                        
                                    </div>
                                    <div class="recieve_media"></div>
                                </div>

                                <div class="web_recieve_handle"></div>
                            </div>

                        </div>
                        <%} %>
                    </div>
                </div>
                <div class="main_panel_r">
                    <div class="web_myinfo">
                        <div class="web_recieve">
                            <div class="web_details">
                                <div class="web_person_info">
                                    <div class="my_cover" id="my_cover_skin">
                                        <div class="my_headpic">
                                            <a href="/null">
                                                <img class="web_portrait_radius" src="http://cn.bing.com/th?id=HN.608026404455909783&w=103&h=103&c=8&pid=3.1&qlt=90" />
                                            </a>
                                        </div>
                                    </div>
                                    <div class="my_internal_info">
                                        <div class="my_name_board">
                                            <a class="my_name S_txt1" href="/null">
                                                <asp:Label ID="tag_user_name" runat="server"/>
                                            </a>
                                        </div>
                                        <ul class="my_status clearfix W_f18">
                                            <li class="S_line1">
                                                <a class="S_txt1" href="/null">
                                                    <strong>0</strong>
                                                    <span class="S_txt2">follow</span>
                                                </a>
                                            </li>
                                            <li class="S_line1">
                                                <a class="S_txt1" href="/null">
                                                    <strong>0</strong>
                                                    <span class="S_txt2">fansss </span>
                                                </a>
                                            </li>
                                            <li class="S_line1">
                                                <a class="S_txt1" href="/null">
                                                    <strong>0</strong>
                                                    <span class="S_txt2">twitter</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
