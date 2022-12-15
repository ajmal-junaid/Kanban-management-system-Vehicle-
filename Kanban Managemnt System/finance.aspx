<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finance.aspx.cs" Inherits="COPY.finance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Cost</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
</head>
<body class="bg02">
    <form id="form1" runat="server">
       <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-xl navbar-light bg-light">
                    <a class="navbar-brand" href="main.aspx">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                        <h1 class="tm-site-title mb-0">Dashboard</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="main.aspx">Dashboard
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                   
                                </div>
                            </li>
                            <li class="nav-item active">
                                
                            </li>

                            <li class="nav-item">
                                
                            </li>
                             <li class="nav-item active">
                                
                            </li>
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-flex" href="login.aspx">
                                    <i class="far fa-user mr-2 tm-logout-icon"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-mt-big">
            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
                <div class="bg-white tm-block">
                    <div class="row">
                         <div class="input-group">
                                    <label for="project" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Select Project</label>
                             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                    </div>
                    <div>
                         <div class="input-group">
                                    <label for="product" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Select Product</label>
                             <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                </div>
                        <div class="input-group">
                                    <label for="DesignCost" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Design Cost</label>
                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </div>
                        <div>
                            <div class="input-group">
                                    <label for="stagecost" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Stage Cost</label>
                                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                </div>
                            <div>
                                <div class="input-group">
                                    <label for="othercost" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Other Cost</label>
                                    <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                </div>
                                <div>
                                    <div class="input-group">
                                    <label for="total" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Grand Total</label>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-4 tm-edit-product-row">
                        <div class="col-xl-7 col-lg-7 col-md-12">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                        </div>
         
                           
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
