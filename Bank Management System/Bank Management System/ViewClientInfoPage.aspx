﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewClientInfoPage.aspx.cs" Inherits="Bank_Management_System.ViewClientInfoPage" EnableEventValidation ="false" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./client-info.css" />
  <link rel="stylesheet" href="./about-us.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap" />
</head>

<body>
  <div class="about-us">
    <br><br><br>

    <nav class="navbar  navbar-expand-md navbar-dark fixed-top bg-dark" style="min-height: 95px;">
      <span class="container-fluid">
        <a class="navbar-brand"> <img src="public/bank.svg" alt=""><label class="txtSlog"
            style="font-weight: bold;">&nbsp;&nbsp; DIGI Bank</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">

          <ul class="navbar-nav me-auto mb-2 mb-md-0">

            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="HomePage.aspx">&nbsp;&nbsp;&nbsp;Home</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="AboutUsPage.aspx">&nbsp;&nbsp;&nbsp;&nbsp;About</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="ServicesPage.aspx"> &nbsp;&nbsp;&nbsp;&nbsp;Services</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="ResourcesPage.aspx"> &nbsp;&nbsp;&nbsp;&nbsp;Resources</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="ContactUsPage.aspx"> &nbsp;&nbsp;&nbsp;&nbsp;Contact us</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#"> &nbsp;&nbsp;&nbsp;&nbsp;Location</a>
            </li>&nbsp;&nbsp;&nbsp;

            <button style="font-size: 13px; font-weight: bolder;" class="btn btn-outline-info ">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-bs-toggle="dropdown"
                  aria-expanded="false">Log in</a>
                <ul class="dropdown-menu" aria-labelledby="dropdown04">
                  <li><a class="dropdown-item" href="AdminLoginPage.aspx">Admin</a></li>
                  <li><a class="dropdown-item" href="BankStaffLoginPage.aspx">Bank Staff</a></li>
                  <li><a class="dropdown-item" href="ClientLoginPage.aspx">Client</a></li>
                </ul>
              </li>
            </button>

          </ul>

        </div>
      </span>
    </nav>
  </div>

    <form id="form1" runat="server">
<div class="client-info">
    <main class="client-info-inner">
        <section class="frame-section">
            <div class="client-information-wrapper">
                <h1 class="client-information1"><br /> Client Information</h1>
            </div>
            <div class="frame-parent13">


<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="form-group">
            <div class="table-scroll">
<asp:GridView ID="gv" Width="100%" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-hover"
    runat="server" OnRowDataBound="gv_RowDataBound" OnSelectedIndexChanged="gv_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="ClientId" HeaderText="Client ID" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField DataField="CNIC" HeaderText="CNIC" />
    </Columns>
    <AlternatingRowStyle BackColor="White" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
    <RowStyle BackColor="#f5f5f5" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
</asp:GridView>

            </div>
        </div>
    </div>
</div>




                <div class="frame-parent14">
                     <div class="picture-box">
                      <asp:Image ID="Image1" runat="server" ImageUrl="PhotoBox.png"/>
                    </div>
                    <div class="frame-parent16">
                        <div class="frame-parent17">
                            <div class="frame-parent18">
                                <div class="form-parent">
                                    <div class="form1">
                                        <div class="input1">
                                            <div class="first-name1">First Name</div>
                                            <div class="field8">
                                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="label7" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-wrapper">
                                        <div class="form2">
                                            <div class="form3">
                                                <div class="form4">
                                                    <div class="input2">
                                                        <div class="gender">Gender</div>
                                                        <div class="field9">
                                                            <asp:TextBox ID="txtGender" runat="server" CssClass="label8" placeholder="Male/Female" TextMode="SingleLine"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="email-address1">Email Address</div>
                                </div>
                                <div class="frame-parent19">
                                    <div class="last-name-parent">
                                        <div class="last-name1">Last Name</div>
                                        <div class="field10">
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="label9" placeholder="Cane" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="frame-wrapper8">
                                        <div class="form-group">
                                            <div class="form5">
                                                <div class="form6"></div>
                                            </div>
                                            <div class="form7">
                                                <div class="input3">
                                                    <div class="age">Age</div>
                                                    <div class="field11">
                                                        <asp:TextBox ID="txtAge" runat="server" CssClass="label10" placeholder="18" TextMode="SingleLine"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="field12">
                                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="label11" placeholder="email@janesfakedomain.net" TextMode="SingleLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="address-parent">
                            <div class="address">Address</div>
                            <div class="field13">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="label12" placeholder="Street - 1234" TextMode="SingleLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="frame-parent20">
                            <div class="frame-parent21">
                                <div class="cnic-parent">
                                    <div class="cnic1">CNIC</div>
                                    <div class="field14">
                                        <asp:TextBox ID="txtCNIC" runat="server" CssClass="label13" placeholder="123456789" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="city-parent">
                                    <div class="city">City</div>
                                    <div class="field15">
                                        <asp:TextBox ID="txtCity" runat="server" CssClass="label14" placeholder="Lahore" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form8">
                                    <div class="input4">
                                        <div class="username">Username</div>
                                        <div class="field16">
                                            <asp:TextBox ID="username" runat="server" CssClass="label14" placeholder="Jane1234" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-parent1">
                                <div class="form9">
                                    <div class="form10">
                                        <div class="input5">
                                            <div class="date-of-birth">Date of Birth</div>
                                            <div class="field17">
                                                <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="label16" placeholder="1 Jan 2000" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="date-field-area">
                                    <div class="form11">
                                        <div class="form12">
                                            <div class="input6">
                                                <div class="phone1">Phone</div>
                                                <div class="field18">
                                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="label17" placeholder="987654321" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="password-field-area">
                                    <div class="password">Password</div>
                                    <div class="field19">
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="label18" placeholder="J1234@" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
</form>

  <!-- Footer                    Footer                                     Footer -->
  <div style="background-color: black; color: white; min-height: 325px;">

    <div class="b-example-divider"></div>

    <div class="container">
      <footer class="py-3">
        <div class="row">
          <div class="col-2">
            <h5>Who we are</h5>
            <ul class="nav flex-column ">
              <li class="nav-item mb-2"><a href="home.html" class="nav-link p-0 ">Home</a></li>
              <li class="nav-item mb-2"><a href="about-us.html" class="nav-link p-0 ">About us</a></li>
              <li class="nav-item mb-2"><a href="index.html" class="nav-link p-0 ">Resources</a></li>
              <li class="nav-item mb-2"><a href="mains-services.html" class="nav-link p-0 ">Services</a></li>
            </ul>
          </div>

          <div class="col-2">
            <h5>Help desk</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="contact-form.html" class="nav-link p-0">Contact us</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0">Feedbacks</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0">Nearby Branches</a></li>
            </ul>
          </div>

          <div class="col-2">
            <h5>Features</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 ">Money Transfer</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 ">Credit Cards</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 ">Easy Loan Installments</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 ">24/7 Customer Support</a></li>
            </ul>
          </div>

          <!-- Subscription          Subscription            Subscription       -->
          <div class="col-4 offset-1">
            <form>
              <h5>Subscribe to our newsletter</h5>
              <p>Monthly digest of whats new and exciting from us.</p>
              <div class="d-flex w-100 gap-2 ">
                <label for="newsletter1" class="visually-hidden">Email address</label>
                <input id="newsletter1" style="font-weight: bold;" type="text" class="form-control "
                  placeholder="Email address" required>
                <button class="btn btn-danger " type="submit">Subscribe</button>
              </div>
            </form>
          </div>
        </div>
        <br>
        <!-- Social Media               Social Media -->
        <div class="d-flex justify-content-between  my-1 border-top">
          <p><br><b>"We DO what we say & we own what we DO"</b></i></p>

          <ul class="list-unstyled d-flex">
            <li class="mt-3 "><a class="link-dark" target="_blank" href="#">
                <img src="public/linkedin.svg" alt="">
              </a></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li class="mt-3 "><a class="link-dark" target="_blank" href="#">
                <img src="public/twitter.svg" alt="">
              </a></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li class="mt-3 "><a class="link-dark" target="_blank" href="#">
                <img src="public/instagram.svg" alt="">
              </a></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li class="mt-3 "><a class="link-dark" target="_blank" href="#">
                <img src="public/facebook-f.svg" alt="">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li class="mt-3 "><a class="link-dark" target="_blank" href="#">
                <img src="public/youtube.svg" alt="">
              </a></li>
          </ul>
        </div>

      </footer>
    </div>

  </div>
  <script src="Assests/Examples/bootstrap-5.0.2-examples/assets/dist/js/bootstrap.bundle.min.js"></script>


</body>

</html>