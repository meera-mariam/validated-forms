<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Page.Master" AutoEventWireup="true" CodeFile="SalesInv.aspx.cs" Inherits="Welgate_Organic_Projects.SalesInv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <%-- <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
     <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
     <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>
    <p>

    </p>--%>

   
    <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                --Sales Invoice--
              </header>
              <div class="panel-body">
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="lblbillno"><b>BILL NO:</b></label>
                      <asp:Label ID="lblbillno" CssClass="form-control" runat="server"></asp:Label>
                      </div>
                    </div>
                  <div class="col-lg-6">
                  <div class="form-group">
                    <label for="txtdate"><b>DATE:</b></label>
                      <asp:TextBox ID="txtdate" CssClass="form-control" placeholder="DATE" runat="server" TextMode="DateTime"></asp:TextBox>
                   
                  </div>
                      </div>
                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1"><b>Tax</b></label>
                      <asp:TextBox ID="txttax" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                   <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b>Sgst</b></label>
                      <asp:TextBox ID="txtsgst" CssClass="form-control" placeholder="sgst" runat="server" ></asp:TextBox>
                   
                  </div>
                      </div>
                  
                  </div>
                    <div class="col-lg-6" style="align-content:center">
                  <div class="form-group">
                   
                      <asp:GridView ID="GridView1" CssClass="form-control" runat="server" AutoGenerateColumns="False" BackColor="#FFFFCC" BorderColor="#0099CC" Caption="ITEM LIST" CaptionAlign="Top" Font-Bold="True" ForeColor="#0099CC" HorizontalAlign="Center" Width="133px" Height="16px"   OnRowDataBound="Gridview1_RowDataBound" DataKeyNames="Size">
                          <Columns>
                              <asp:TemplateField HeaderText="Item Name">
                                  <ItemTemplate>
                                      <asp:DropDownList ID="ddl1" runat="server" Height="52px" Width="196px" >
                                          <asp:ListItem>--SELECT ITEMS--</asp:ListItem>
                                      </asp:DropDownList>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="Size">
                                  <ItemTemplate>
                                      <asp:TextBox ID="txtsize" runat="server" Height="30px" Width="164px" ></asp:TextBox>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="Quantity">
                                  <ItemTemplate>
                                      <asp:TextBox ID="txtqty" runat="server" Height="29px" Width="168px" ></asp:TextBox>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="Unit_Price">
                                  <ItemTemplate>
                                      <asp:TextBox ID="txtunit_price" runat="server" Height="29px" Width="168px" ></asp:TextBox>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="Total">
                                  <ItemTemplate>
                                      <asp:TextBox ID="txttotal" runat="server" Height="25px" Width="154px" ></asp:TextBox>
                                  </ItemTemplate>
                              </asp:TemplateField>
                          </Columns>
                          <EditRowStyle BackColor="#FFFFCC" />
                      </asp:GridView> 

         </div>
                 
                       </div>
                    
                  


                   

                    </section>
                 <br /><br /><br /><br /><br />

                  
                 <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b>Cgst</b></label>
                      <asp:TextBox ID="txtcgst" CssClass="form-control" placeholder="cgst" runat="server" ></asp:TextBox>
                   
                  </div>
                      </div>


                 <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b>Amount</b></label>
                      <asp:TextBox ID="txtamount" CssClass="form-control" placeholder="Amount" runat="server" ></asp:TextBox>
                   
                  </div>
                      </div>



                 <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1"><b>Total</b></label>
                      <asp:TextBox ID="txttotal" CssClass="form-control" placeholder="Total" runat="server" ></asp:TextBox>
                   
                  </div>
                      </div>


                 <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnsave" CssClass="form-control" runat="server" Text="SAVE" BackColor="#0099CC" Font-Bold="True" ForeColor="White" />


                   
                  </div>
                      </div>


                 <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btnaddnewrow" CssClass="form-control" runat="server" Text="ADD NEW ROW" BackColor="#0099CC" Font-Bold="True" ForeColor="#FFFFCC" />


                   
                  </div>

                    </div>

                <div class="col-lg-6">
                  <div class="form-group">
                      <asp:Button ID="btncalculate" CssClass="form-control" runat="server" Text="CALCULATE" BackColor="#0099CC" Font-Bold="True" ForeColor="White" />


                   
                  </div>
                      </div>
                  
                
                      
                      </div>
                  </div>
</asp:Content>
