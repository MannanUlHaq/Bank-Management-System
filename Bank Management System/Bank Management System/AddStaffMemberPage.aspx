﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStaffMemberPage.aspx.cs" Inherits="Bank_Management_System.AddStaffMemberPage" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" href="./add-bank-staff.css" />
    <link rel="stylesheet" href="./about-us.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap"
    />
   <link href="Styles/sweetalert.css" rel="stylesheet" />
  <script src="Scripts/sweetalert.min.js"></script>
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

<div class="add-bank-staff">
    <div class="form14"></div>
    <div class="headline"></div>
    <section class="form-container1">
        <form id="form1" runat="server" class="form-header1">
            <div class="form-title-area">
                <h1 class="add-staff-member">Add Staff Member</h1>
            </div>
            <div class="input-fields">
                <div class="name-inputs">
                    <div class="first-name-input">
                        <div class="first-name-area">
                            <div class="first-name-label-area">
                                <div class="first-name-field">
                                    <div class="form15">
                                        <div class="input7">
                                            <div class="first-name2">First Name</div>
                                            <div class="field20">
                                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="label19" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form16">
                                    <div class="form17">
                                        <div class="form18">
                                            <div class="input8">
                                                <div class="gender1">Gender</div>
                                                <div class="field21">
                                                    <asp:TextBox ID="txtGender" runat="server" CssClass="label20" placeholder="Male/Female" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="email-address2">Email Address</div>
                            </div>
                            <div class="age-input">
                                <div class="age-area">
                                    <div class="last-name2">Last Name</div>
                                    <div class="field22">
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="label21" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="age-area1">
                                    <div class="age1">Age</div>
                                    <div class="field23">
                                        <asp:TextBox ID="txtAge" runat="server" CssClass="label22" placeholder="20" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field24">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="label23" placeholder="email@janesfakedomain.net" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="phone-input">
                        <div class="phone2">Phone</div>
                        <div class="field25">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="label24" placeholder="987654321" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="credentials-input">
                        <div class="username-input-area">
                            <div class="username-input-box-area">
                                <div class="username-field">
                                    <div class="form19">
                                        <div class="input9">
                                            <div class="username1">Username</div>
                                            <div class="field25">
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="label24" placeholder="Jane1234" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="designation">Designation</div>
                            </div>
                            <div class="password-input-area">
                                <div class="password1">Password</div>
                                <div class="field27">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="label26" placeholder="J1234@" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                                                            <asp:DropDownList ID="DropDownList2" CssClass="dropdownstyle" runat="server">
      <asp:ListItem Text="Account Manager" Value="AccountManager"></asp:ListItem>
      <asp:ListItem Text="Transaction Manager" Value="TransactionManager"></asp:ListItem>
      <asp:ListItem Text="Financial Products Coordinator" Value="FinancialProductsCoordinator"></asp:ListItem>
</asp:DropDownList>
                    </div>
                </div>
                <div class="action-area">
                    <div class="users-button-area">
                        <img class="users-icon1" loading="lazy" alt="" src="./public/users1@2x.png" />
                        <div class="add-button-area" style="margin-right: 0px;">
                            <asp:Button ID="Button2" runat="server" CssClass="button6" Text="Add" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>




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


