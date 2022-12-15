<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addvehicletype.aspx.cs" Inherits="COPY.addvehicletype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADD VEHICLE TYPE</title>
    <!--

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
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
                    <a class="navbar-brand" href="main.aspx">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                        <h1 class="tm-site-title mb-0">Dashboard</h1>
                    </a></nav>
                    </div></div>

        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
                            <h2 class="tm-block-title mt-3">vehicle type</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            
                                <%--<div class="input-group">
                                    <label for="vehicle type" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Vehicle type  id</label>
                                    <asp:TextBox ID="vtype" runat="server"></asp:TextBox>
                                </div>--%>
                                <div class="input-group mt-3">
                                    <label for="vehiclename" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">vehicle type</label>
                                    <asp:TextBox ID="vname" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group mt-3">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" Visible="True" OnClick="Button1_Click"/> 
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
