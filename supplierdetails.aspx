﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="supplierdetails.aspx.cs" Inherits="My_Project.supplierdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               --- ADD SUPPLIER---
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="Supplier Name"><b>Supplier Name</b></label>
                      <asp:TextBox ID="txtsuppliername" CssClass="form-control" placeholder="Supplier Name" runat="server"></asp:TextBox>
                  </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="Supplier Code"><b>Supplier Code</b></label>
                      <asp:TextBox ID="txtsuppliercode" CssClass="form-control" placeholder="Code" runat="server"></asp:TextBox>
                   
                  </div>
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Address</b></label>
                      <asp:TextBox ID="txtaddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Email Id</b></label>
                      <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Contact</b></label>
                      <asp:TextBox ID="txtcontact" CssClass="form-control" placeholder=" Contact" runat="server"></asp:TextBox>
                   
                  </div>
                    
                      </div>

                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="contact"><b>Gsttin</b></label>
                      <asp:TextBox ID="txttin" CssClass="form-control" placeholder="Gsttin" runat="server"></asp:TextBox>
                   
                  </div>
                    
                      </div>


                    <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:Button ID="btnaddsupplier" runat="server" OnClick="btnaddsupplier_Click" Text="SUBMIT" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                      <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="UPDATE" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />

                         <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="DELETE" BackColor="#0099FF" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />


                    &nbsp;</div>
                  </div>

                  
                 <%--   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                    &nbsp;</div>
                  </div>

                   <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                    &nbsp;</div>
                  </div>
</div>
                </section>
                </div>
        
        </div>--%>
</asp:Content>
