<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Webform_Task2.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <style>
        h1{
            text-align:center;
        }
        .text-center{
            margin-top:5px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Report</h1>
            <asp:GridView ID="GridView1" runat="server" 
                ForeColor="#333333" GridLines="Both"  BorderWidth="1px" CellPadding="4" Width="1750px"  AutoGenerateColumns="False" HorizontalAlign="Center" >
                <AlternatingRowStyle BackColor="White"   />
                <Columns>
                    <asp:BoundField HeaderText="Sr No" DataField="Sr.No" />
                    <asp:BoundField HeaderText="Full Name" DataField="Name" />
                    <asp:BoundField HeaderText="MobileNo 1" DataField="Mob_No_1" />
                    <asp:BoundField HeaderText="MobileNo 2" DataField="Mob_No_2" />
                    <asp:BoundField HeaderText="MobileNo 3" DataField="Mob_No_3" />
                    <asp:BoundField HeaderText="Gender" DataField="Gender" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />                  
                    <asp:BoundField HeaderText="Address" DataField="Address" />
                    <asp:BoundField HeaderText="City" DataField="City" />
                    <asp:BoundField HeaderText="Company Name" DataField="Company_Name" />
                    <asp:BoundField HeaderText="Designation" DataField="Designation" />
                    <asp:BoundField HeaderText="State" DataField="State" />
                    <asp:BoundField HeaderText="Pincode" DataField="Pincode" />
                     <asp:BoundField HeaderText="Date Of Birth" DataField="DateOfBirth" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#b30000" Font-Bold="True" ForeColor="White" />               
            </asp:GridView>
            <div class="text-center">
                <asp:Button ID="btnexcel" runat="server" Text="Download In Excel" OnClick="btnexcel_Click"/>
                <asp:Button ID="btnpdf" runat="server" Text="Download In PDF" OnClick="btnpdf_Click" />
            </div>
        </div>
    </form>
</body>
</html>
