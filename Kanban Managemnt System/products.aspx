﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="COPY.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products Page - Dashboard Template</title>
        <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
</head>
<bodyid="reportsPage" class="bg02">
    <form id="form1" runat="server">
        <div>
            
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="home.aspx">
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
                                    <a class="nav-link" href="home.aspx">Dashboard
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Reports
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Daily Report</a>
                                        <a class="dropdown-item" href="#">Weekly Report</a>
                                        <a class="dropdown-item" href="#">Yearly Report</a>
                                    </div>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="products.aspx">Products</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="accounts.html">Accounts</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Settings
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <a class="dropdown-item" href="#">Billing</a>
                                        <a class="dropdown-item" href="#">Customize</a>
                                    </div>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="login.aspx">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Login</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">Products</h2>

                            </div>
                            <div class="col-md-4 col-sm-12 text-right">
                                <a href="addproduct.aspx" class="btn btn-small btn-primary">Add New Product</a>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                    <tr class="tm-bg-gray">
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Process Name</th>
                                        <th scope="col" class="text-center">Stage</th>
                                        <th scope="col" class="text-center">completed percentage</th>
                                        <th scope="col">quantity</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">1.process 1 (hover)</td>
                                        <td class="text-center">145</td>
                                        <td class="text-center">255</td>
                                        <td>2018-10-28</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">2.process 2</td>
                                        <td class="text-center">240</td>
                                        <td class="text-center">260</td>
                                        <td>2018-10-24</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">3.process 3</td>
                                        <td class="text-center">360</td>
                                        <td class="text-center">440</td>
                                        <td>2019-02-14</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">4. process 4</td>
                                        <td class="text-center">445</td>
                                        <td class="text-center">655</td>
                                        <td>2019-03-22</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                           <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">5. process 5</td>
                                        <td class="text-center">445</td>
                                        <td class="text-center">655</td>
                                        <td>2019-03-22</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">6. process 6</td>
                                        <td class="text-center">445</td>
                                        <td class="text-center">655</td>
                                        <td>2019-03-22</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">7. process 7</td>
                                        <td class="text-center">445</td>
                                        <td class="text-center">655</td>
                                        <td>2019-03-22</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:CheckBox runat="server"></asp:CheckBox>
                                        </th>
                                        <td class="tm-product-name">8. finalisation</td>
                                        <td class="text-center">445</td>
                                        <td class="text-center">655</td>
                                        <td>2019-03-22</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="tm-table-mt tm-table-actions-row">
                            <div class="tm-table-actions-col-left">
                                <asp:Button runat="server" Text="delete selected process" />
                            </div>
                           <%-- <div class="tm-table-actions-col-right">
                                <span class="tm-pagination-label">Page</span>
                                <nav aria-label="Page navigation" class="d-inline-block">
                                    <ul class="pagination tm-pagination">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <span class="tm-dots d-block">...</span>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">13</a></li>
                                        <li class="page-item"><a class="page-link" href="#">14</a></li>
                                    </ul>
                                </nav>
                            </div>--%>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title d-inline-block">Process Categories</h2>
                        <table class="table table-hover table-striped mt-3">
                            <tbody>
                                <tr>
                                    <td>1. requirement collection</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>2. material collection</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>3. assembling</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>4. crosschecking</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>5. painting</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>6. ready for packing</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                               <%-- <tr>
                                    <td>7. In malesuada</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>8. Placerat</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>9. Donec semper</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>--%>
                            </tbody>
                        </table>

                        <a href="#" class="btn btn-primary tm-table-mt">Add New Category</a>
                    </div>
                </div>
            </div>
            <footer class="row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                        Copyright &copy; 2018 Admin Dashboard .
                       <%-- <a rel="nofollow" href="https://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a>--%>
                    </p>
                </div>
            </footer>
        </div>
    </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
        $(function () {
            $('.tm-product-name').on('click', function () {
                window.location.href = "editproduct.aspx";
            });
        })
    </script>

        </div>
    </form>
</body>
</html>
