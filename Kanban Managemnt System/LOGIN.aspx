<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="COPY.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login Page - Dashboard Admin Template</title>
    <!--

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" />
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css" />
</head>
<body class="bg03">

        <div>
        </div><div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
                            <h2 class="tm-block-title mt-3">Login</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <form runat="server" method="post" class="tm-login-form">
                                 <div class="input-group">
                                    <label for="usertype" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">UserType</label>
                                     <asp:RadioButton ID="admin" runat="server" Text="Admin " GroupName="usertype" />
                                     <asp:RadioButton ID="employee" runat="server" Text="Employee " GroupName="usertype" />
                                     <asp:RadioButton ID="finance" runat="server" Text="Finance " GroupName="usertype" />
                                   
                                </div>
                                <div class="input-group">
                                    <label for="username" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Username</label>
                                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group mt-3">
                                    <label for="password" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Password</label>
                                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="input-group mt-3">
                                    <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
                                </div>
                                <div>
                                    <h9>if you don't have an account</h9>
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register.aspx" OnClick="LinkButton1_Click">Signup</asp:LinkButton>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
</body>
</html>
