<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="COPY.employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EMPLOYEE HOME</title>
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
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-xl navbar-light bg-light">
                    <a class="navbar-brand" href="index.html">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                        <h1 class="tm-site-title mb-0">Dashboard</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-flex" href="main.aspx">
                                    <i class="far fa-user mr-2 tm-logout-icon"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
                   
        <div class="row tm-mt-big">
            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                             <div class="input-group mb-3">
                                    
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addproduct.aspx">Add Product</asp:HyperLink>
                                </div>
                     <div class="input-group mb-3">
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adddesign.aspx">Add Design</asp:HyperLink>
                         </div>
                  <div class="input-group mb-3">
                      </div>
                  <div class="input-group mb-3">
                      <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/viewstagetransaction.aspx">View Stages</asp:HyperLink>
                      </div>
                  <div class="input-group mb-3">
                      <asp:HyperLink ID="HyperLink5" runat="server">WorkFlow</asp:HyperLink>
                      </div>
                  <div class="input-group mb-3">
                      <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/viewreleased.aspx">Final Product</asp:HyperLink>
                      </div>
                             <div class="input-group mb-3">
                                 <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/viewdesign.aspx">View Design</asp:HyperLink>
                      </div>
    </form>
    </form>
    </form>
    </form>
</body>
</html>
