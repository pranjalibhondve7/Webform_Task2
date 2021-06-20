<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="Webform_Task2.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Form.css" rel="stylesheet" />
       
</head>

<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-3"></div>

            <div class="col-md-6">
                <div class="container-fluid bg-transperent" style="width: 80%; height: 800px">
                    <h1 class="reg">Form</h1>

                    <div class="form-group">
                        <asp:Label ID="lblusername" runat="server"  Text="Username : "  ></asp:Label>
                        <%-- <div class="input-group">--%>

                        <asp:TextBox ID="txtusername" runat="server"  CssClass="form-control fristname"   ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                        ControlToValidate="txtusername" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblsrno" runat="server"  Text="Sr No : "  ></asp:Label>
                        <%-- <div class="input-group">--%>

                        <asp:TextBox ID="txtsrno" runat="server"  CssClass="form-control fristname"   ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                        ControlToValidate="txtsrno" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="lblname" runat="server"  Text="FULL NAME : "  ></asp:Label>
                        <%-- <div class="input-group">--%>

                        <asp:TextBox ID="txtname" runat="server"  CssClass="form-control fristname"   ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtname" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblmob1" runat="server" Text="MOBILE NUMBER 1 :"></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtmob1" runat="server" TextMode="Phone"  CssClass="form-control mobileno1"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtmob1" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True" ></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblmob2" runat="server" Text="MOBILE NUMBER 2 :"></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtmob2" runat="server" TextMode="Phone" CssClass="form-control mobileno2"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtmob2" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblmob3" runat="server" Text="MOBILE NUMBER 3 :"></asp:Label>

                        <asp:TextBox ID="txtmob3" runat="server" TextMode="Phone" CssClass="form-control mobileno3"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtmob3" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="lblgender" runat="server" Text="GENDER : "></asp:Label>
                        <%-- <div class="input-group">--%>
                        <%--<asp:RadioButton ID="rbmale" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="rbfemale" runat="server" Text="Female" GroupName="Gender" />
                        <asp:RadioButton ID="rbother" runat="server" Text="Other" GroupName="Gender" />--%>
                      <asp:TextBox ID="txtgender" runat="server" CssClass="form-control gender"></asp:TextBox>--%>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblemail" runat="server" Text="EMAIL ID : "></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtemail" TextMode="Email" runat="server" CssClass="form-control emailid" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lbladdress" runat="server" Text="ADDRESS : "></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control address" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="txtaddress" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblcity" runat="server" Text="CITY : "></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control city" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ControlToValidate="txtcity" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblcomname" runat="server" Text="COMPANY NAME : "></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtcomname" runat="server" CssClass="form-control compyname" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ControlToValidate="txtcomname" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lbldesignation" runat="server" Text="DESIGNATION : "></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtdesignation" runat="server" CssClass="form-control designation"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ControlToValidate="txtdesignation" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>

                    <%--</div>--%>


                    <div class="form-group">
                        <asp:Label ID="lblstate" runat="server" Text="STATE:"></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtstate" runat="server" CssClass="form-control state" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ControlToValidate="txtstate" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>
                    <div class="form-group">
                        <asp:Label ID="lblpin" runat="server" Text="PINCODE:"></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtpin" runat="server" CssClass="form-control pincode"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ControlToValidate="txtpin" ErrorMessage="??" ForeColor="black"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lbldob" runat="server" Text="DOB:"></asp:Label>
                        <%--<div class="input-group">--%>

                        <asp:TextBox ID="txtdob" TextMode="Date" runat="server" CssClass="form-control dob"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                        ControlToValidate="lbldob" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    </div>
                    <%--</div>--%>

                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success submit" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
