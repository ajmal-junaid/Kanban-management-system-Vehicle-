<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adddesign.aspx.cs" Inherits="COPY.adddesign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>ADD DESIGN</title>
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
<body id="form1" class="bg03">
    <form runat="server">
      
        <div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
                           
                            <h2 class="tm-block-title mt-3">upload design details</h2>
                        </div>
                         <div class="input-group">
                                    <label for="description" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 mb-2">Project Name</label>
                         </div>
                        &nbsp &nbsp &nbsp<asp:DropDownList ID="drpproject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpproject_SelectedIndexChanged"></asp:DropDownList>
                                &nbsp;<div class="input-group">
                            <label for="design" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Product name</label>
                                    <asp:DropDownList ID="drpvtype" runat="server"></asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <label for="design" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">upload design<asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </label>
                            &nbsp;</div>
                        <div class="input-group">
                                    <asp:Button ID="Button3" runat="server" Text="submit" OnClick="Button3_Click" />
                                </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                                
                               
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
    </form>
</body>
</html>
