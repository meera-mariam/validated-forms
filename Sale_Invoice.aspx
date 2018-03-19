<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Page.Master" AutoEventWireup="true" CodeBehind="Sale_Invoice.aspx.cs" Inherits="My_Project.Sale_Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .wrapper1, .wrapper2 {
        width: 300px;
        border: none 0px RED;
        overflow-x: scroll;
        overflow-y: hidden;
    }

    .wrapper1 {
        height: 20px;
    }

    /*.wrapper2 {
        height: 200px;
    }*/

    .div1 {
        width: 1000px;
        height: 20px;
    }

    .div2 {
        width: 1000px;
        background-color: #88FF88;
        overflow: auto;
    }
    .auto-style1 {
    }
    .auto-style3 {
        width: 43px;
    }
    .auto-style4 {
        width: 116px;
    }
</style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <p>
        <br />
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
    <p style="border: medium solid #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#006699" Text="SALE BILL" Font-Italic="True"></asp:Label>
        &nbsp;</p>
    <p style="border: medium solid #808080">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#006699" Text="BILL DETAILS" ToolTip="BILL DETAILS" Font-Italic="True"></asp:Label>
    &nbsp;</p>
    <p style="border: medium solid #808080; width: 727px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#333333" Text="INVOICE NO:"></asp:Label>
&nbsp;<asp:Label ID="lblbillno" runat="server" ForeColor="#CC0000"></asp:Label>
        &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#333333" Text="DATE:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtdate" runat="server" TextMode="DateTime"></asp:TextBox>
    &nbsp;
                <asp:Button ID="btnsearch" runat="server" Text="SELECT " BackColor="#006699" Font-Bold="True" ForeColor="White" OnClick="btnsearch_Click" />
    </p>
    <p style="border: medium solid #808080">
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#333333" Text="ITEM NAME:"></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
            <asp:ListItem Value="0">--select--</asp:ListItem>
            
        </asp:DropDownList>
        &nbsp;
&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#333333" Text="SIZE:"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtsize" runat="server" Width="76px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#333333" Text="QTY:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtqty" runat="server" Width="59px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#333333" Text="TOTAL:"></asp:Label>
        <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
    </p>
    <p style="border: medium solid #808080">


      <script>
    $(function () {
        $(".wrapper1").scroll(function () {
            $(".wrapper2")
                .scrollLeft($(".wrapper1").scrollLeft());
        });
        $(".wrapper2").scroll(function () {
            $(".wrapper1")
                .scrollLeft($(".wrapper2").scrollLeft());
        });
    });
</script>

            <asp:GridView ID="GridView1" CssClass="form-control" runat="server" AutoGenerateColumns="False" Width="756px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                     <asp:TemplateField HeaderText="BILL_NO">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Bill_No") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ITEM NAME">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SIZE">
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="QUANTITY">
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TAX TOTAL">
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Tax_Total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SGST">
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Sgst") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CGST">
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("Cgst") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="GROSS AMOUNT">
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("[Gross Amount]") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField Text="DELETE" />
                </Columns>
            </asp:GridView>
        
       <%-- <div style="border: medium solid #808080; width: 1042px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#666666" Text="TOTAL "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>--%>

       
       
       


      
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
    </p>
    <p style="border: medium solid #808080">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label15" runat="server" Text="TOTAL" Font-Bold="True" ForeColor="#006699" Font-Italic="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncalculate" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#CC0000" OnClick="btncalculate_Click" Text="CALCULATE" />
    </p>
    <table class="nav-justified">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label16" runat="server" Text="TAX TOTAL" Font-Bold="True" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttax" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label20" runat="server" Text="CGST" Font-Bold="True" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcgst" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label21" runat="server" Text="SGST" Font-Bold="True" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsgst" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label22" runat="server" Text="AMOUNT" Font-Bold="True" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamount" CssClass="form-control" runat="server" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label23" runat="server" Text=" NET AMOUNT" Font-Bold="True" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtgross" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="#990000" Text="GROSS AMOUNT"></asp:Label>
            </td>
            <td>
                <br />
                <br />
                <asp:TextBox ID="txtfinalamnt" CssClass="form-control" runat="server" ForeColor="#333333" Height="54px"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3" style="border: medium solid #808080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btninsert" runat="server" Text="ADD TO LIST" BackColor="#006699" Font-Bold="True" ForeColor="White" OnClick="btninsert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddnew" runat="server" Text="NEW ITEM" BackColor="#006699" Font-Bold="True" ForeColor="White" OnClick="btnaddnew_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
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



</asp:Content>
