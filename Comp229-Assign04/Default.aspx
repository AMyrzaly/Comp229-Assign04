<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-offset-3 col-md-6">
        <img src="Content/Pictures/Logo.png" />
        <asp:GridView ID="GVListModels" runat="server"></asp:GridView>
        <columns>
            <asp:HyperLinkField DataTextField="Name" DataNavigateUrlFields="Name" DataNavigateUrlFormatString="Model.aspx?Name={0}" HeaderText="Model Name" />
        </columns>
        <a href="AddModels.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add New Model</a>
    </div>


</asp:Content>
