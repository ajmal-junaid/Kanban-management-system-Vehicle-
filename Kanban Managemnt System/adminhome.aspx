<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="COPY.adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard Admin </title>
    <!--

    Template 2108 Dashboard

    http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
   <%-- <link rel="stylesheet" href="css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->--%>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">

</head>
<body>

   <%-- <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
            
            
        }
    </script>--%>

<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">

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
                        <ul class="navbar-nav mx">
                            <li class="nav-item">
                                <a class="nav-link" href="addemployee.aspx">Add Employee
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                          
                            <li class="nav">
                                <a class="nav-link" href="register.aspx">Add Financer</a>
                            </li>

                            
                        </ul>
                        </div>
                
            
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-flex" href="login.aspx">
                                    <i class="far fa-user mr-2 tm-logout-icon"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
         </div>           
        </div>
        <!-- row -->
        <div class="row tm-mt-big">
            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-block-title d-inline-block"><u>Admin Panel</u></h2>
                        </div>
                    </div>
                    <div class="row mt-4 tm-edit-product-row">
                        <div class="col-xl-7 col-lg-7 col-md-12">
                            <form action="" class="tm-edit-product-form">
                               
                                <div class="input-group mb-3">

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/employeelist.aspx">Show Employee Details</asp:LinkButton>
        
       
                                </div>
                       
                                <div class="input-group mb-3">
                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/addproject.aspx">Add Project</asp:LinkButton>
                                   
                                     </div>
                                <div class="input-group mb-3">
                                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/viewproduct.aspx">View Product</asp:LinkButton>
                                </div>
                         <%-- <div class="input-group mb-3">
                             <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/addemployee.aspx">Add Employee</asp:LinkButton>
                              </div>--%>
                             <div class="input-group mb-3">
                             <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/addvehicletype.aspx">Add Type</asp:LinkButton>
                                   
                                     </div>
                          <div class="input-group mb-3">
                             <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/viewtypes.aspx">View Type</asp:LinkButton>
                                   
                                     <br />
                                   
                                     </div> 

                                <div class="input-group mb-3">
                             <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/userlist.aspx">View User</asp:LinkButton>
                                   
                                     <br />
                                   
                                     </div> 
                            </form>
                        </div>
                          
                       
                    </div>
                </div>
            </div>
        </div>
        <footer class="row tm-mt-big">
            <div class="col-12 font-weight-light">
                <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                    Copyright &copy;
                    
                </p>
            </div>
        </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
   
        
    </form>
</body>
</html>
