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



            <!-- MODAL Edit Tag -->
<!-- Button trigger modal -->
 <div class="col-lg-2 col-lg-offset-10">
<button type="button" class="btn btn-link" data-toggle="modal" data-target="#modalOne">
  Edit Tag
</button>
</div>

<!-- Modal -->
<div class="modal fade" id="modalOne" tabindex="-1" role="dialog" aria-labelledby="modalOneLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalOneLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Edit your tag name here:</p>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




    <div class="row">
        <div class="col-lg-12">
        <asp:Repeater ID="Repeater1" runat="server">

        <HeaderTemplate>
            <table border="1">
                <tr>
                    <th scope="col" style="width: 80px">
                        id
                    </th>
                    <th scope="col" style="width: 120px">
                        name
                    </th>
                    <th scope="col" style="width: 100px">
                        tag
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="lbltag" runat="server" Text='<%# Eval("tag") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
        </asp:Repeater>

        </div>
    </div><!--end repeater row-->

</asp:Content>
