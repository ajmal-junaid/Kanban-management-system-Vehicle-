<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stagetransaction.aspx.cs" Inherits="COPY.stagetransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Add Stage transaction</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" />
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css" />
</head>
<body class="bg03">
    <form id="form1" runat="server">
        <div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h4>Stage Transaction</h4>
                            
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                           
                                <div class="input-group">
                                    &nbsp;Product Name
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    
                                &nbsp;&nbsp;&nbsp;
                                    <br />
                                    Current Status<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    
                                </div>
                                <div class="input-group mt-3">
                                    &nbsp;Transaction ID<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    
                                </div>
                                <div class="input-group mt-3">
                                    <label for="status" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Status Of Project<asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>select</asp:ListItem>
                                        <asp:ListItem>Shear</asp:ListItem>
                                        <asp:ListItem>Production</asp:ListItem>
                                        <asp:ListItem>Final</asp:ListItem>
                                    </asp:DropDownList>
                                    </label>&nbsp;</div>
                                <div>
                                    
                                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Status" />
                                    
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
