<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .menu
        {
            font-size:40px;
            color:black;
        }
        .img 
        {
            border:thin black;
        }
        .button 
         {
             background-color: #808080;
             border:outset;
             color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
         }

        .image 
        {
            width:80%;
            height:480px;
            margin-left:10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <br />
    <div>
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
             </Triggers>
             <ContentTemplate> 
                <asp:Timer ID="Timer1" Interval="500" runat="server" ></asp:Timer>
                 <asp:AdRotator ID="AdRotator" runat="server" AdvertisementFile  ="~/adver_health.xml" CssClass="image"/>
        </ContentTemplate>
        </asp:UpdatePanel>
       <!-- <br />
        <img src="Images/Advertise/home1.png" style="width: 100%; height: 480px" />
        <img src="Images/Advertise/home2.png" style="width: 100%; height: 480px" />-->
    </div>
     
            </asp:Content>

