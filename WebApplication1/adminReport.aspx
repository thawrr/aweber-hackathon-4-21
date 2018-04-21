<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminReport.aspx.cs" Inherits="WebApplication1.adminReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="well well-sm">
            <div class="row">
                <div class="col-lg-12">
            <h2>Test Master Tag Page</h2>
    </div>
</div>       


       <div class="container-fluid">
           <div class="row">
               <div class="headButton">
                <div class="col-lg-2 col-lg-offset-10">
           <h2 class="text">Create New Tags</h2>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Create New Category &raquo;</a></p>
       </div>
</div>
</div>
</div>

<!--<div class="modal-backdrop fade in"  ></div>-->
   <div class="modal hide fade in" id="myModal" style="display: none;">
       <div class="modal-header">
           <a class="close" href="#">×</a>
           <h3>Modal Heading</h3>
       </div>
       <div class="modal-body">
            <p>One fine body…</p>
       </div>
       <div class="modal-footer">
           <a class="btn primary" href="#">Primary</a>
           <a class="btn secondary" href="#">Secondary</a>
       </div>
    </div>

<div class="bs-docs-example" style="padding-bottom: 24px;">
       <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-large" data-backdrop="static" >Launch demo modal</a>
</div>

</asp:Content>
