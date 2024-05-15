﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionProcessPage.aspx.cs" Inherits="Bank_Management_System.TransactionProcessPage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./transaction-form.css" />
  <link rel="stylesheet" href="./about-us.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap" />
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
  <div class="transaction-form">
    <section class="transaction-form-inner" >
        <div class="frame-parent45">
            <div class="transaction-process-wrapper">
                <h1 class="transaction-process" style="margin-right:530px"><br>Transaction Process</h1>
            </div>
            <div class="form-parent7">

                <div class="frame-wrapper15">
                    <div class="frame-parent46">
                        <div class="frame-wrapper16">
                            <div class="form-parent8">

                                <form id="DepositForm" runat="server">
                                    <div class="form84">
                                        <div class="input47">
                                            <div class="account-id">Account ID</div>
                                            <div class="field110">
                                                <asp:TextBox ID="AccountIDTextBox1" runat="server" CssClass="label102" placeholder="0001" type="text"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form85">
                                        <div class="form86">
                                            <div class="form87">

                                                <div class="form88">
                                                    <div class="input48">
                                                        <div class="account-holder-name">
                                                            Account Holder Name
                                                        </div>
                                                        <div class="field111">
                                                            <asp:TextBox ID="AccountHolderNameTextBox" runat="server" CssClass="label103" placeholder="Jane" type="text"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-wrapper6">
                                        <div class="form89">
                                            <div class="form90">
                                                <div class="form91">
                                                    <div class="form92">
                                                        <div class="input49">
                                                            <div class="amount-to-deposit">
                                                                Amount to Deposit
                                                            </div>
                                                            <div class="field112">
                                                                <asp:TextBox ID="AmountToDepositTextBox" runat="server" CssClass="label104" placeholder="1000000" type="number"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="button-wrapper2">
                                        <asp:Button ID="DepositButton" runat="server" CssClass="button24" Text="Deposit" OnClick="DepositButton_Click" />
                                    </div>
                               

                                
                                    <div class="form-wrapper7">
                                        <div class="form93">
                                            <div class="input50">
                                                <div class="account-id1">Account ID</div>
                                                <div class="field113">
                                                    <asp:TextBox ID="AccountIDTextBox2" runat="server" CssClass="label105" placeholder="0001" type="text"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                            <div class="form94">
                                                <div class="form95">
                                                    <div class="form96">
                                                        <div class="form97">
                                                            <div class="input51">
                                                                <div class="account-holder-name1">
                                                                    Account Holder Name
                                                                </div>
                                                                <div class="field114">
                                                                    <asp:TextBox ID="AccountHolderNameTextBox2" runat="server" CssClass="label106" placeholder="Jane" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form94">
                                                <div class="form95">
                                                    <div class="form96">
                                                        <div class="form97">
                                                            <div class="input51">
                                                                <div class="amount-to-withdraw">
                                                                    Amount to Withdraw
                                                                </div>
                                                                <div class="field115">
                                                                    <asp:TextBox ID="AmountToWithdrawTextBox" runat="server" CssClass="label107" placeholder="1000000" type="number"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    <div class="button-wrapper3">
                                        <asp:Button ID="WithdrawButton" runat="server" CssClass="button24" Text="Withdraw" OnClick="WithdrawButton_Click" />
                                    </div>
                                </form>
                            </div>
                        </div>
                        <img class="trend-icon" loading="lazy" alt="" src="./public/trend@2x.png" />
                    </div>
                </div>
            </div>
        </div>
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