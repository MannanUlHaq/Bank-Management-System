<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientDashboard.aspx.cs" Inherits="Bank_Management_System.ClientDashboard" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./user-dashboard.css" />
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
<div class="userdashboard">
    <section class="header-1-parent1">
        <img class="welcome-icon4" loading="lazy" alt="" src="./public/welcome@2x.png" />
    </section>
    <section class="userdashboard-inner">
        <div class="frame-parent110">
            <div class="moneytransfer-parent">
                <div class="moneytransfer2">
                    <div class="rectangle-do11"></div>
                    <img class="moneytransferimage-icon" loading="lazy" alt="" src="./public/moneytransferimage@2x.png" />

                    <div class="moneytransfer-inner">
                        <div class="frame-parent111">
                            <div class="frame-wrapper46">
                                <div class="money-transfer-parent">
                                    <h3 class="money-transfer">Money Transfer</h3>
                                    <div class="experience-hassle-free-money1">
                                        Experience hassle-free money transfers with our secure services.
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btnMoneyTransfer" runat="server" CssClass="transferbutton1" Text="Transfer Now" OnClick="btnMoneyTransfer_Click" />
                            <asp:Button ID="btnTransferHistory" runat="server" CssClass="transferbutton1" Text="Check History" OnClick="btnTransferHistory_Click" />
                        </div>
                    </div>
                </div>
                <div class="accountdetails2">
                    <div class="rectangle-do12"></div>
                    <img class="accountimage-icon" loading="lazy" alt="" src="./public/accountimage@2x.png" />

                    <div class="accountdetails-inner">
                        <div class="frame-parent112">
                            <div class="personal-details-parent">
                                <h3 class="personal-details">Personal Details</h3>
                                <div class="click-below-for">
                                    Click below for secure access to your personal insights.
                                </div>
                            </div>
                            <asp:Button ID="btnPersonalInfo" runat="server" CssClass="transferbutton" Text="See Now" OnClick="btnPersonalInfo_Click" />
                        </div>
                    </div>
                </div>
                <div class="carddetails2">
                    <div class="rectangle-do13"></div>
                    <img class="cardimage-icon1" loading="lazy" alt="" src="./public/cardimage1@2x.png" />

                    <div class="carddetails-inner">
                        <div class="frame-parent113">
                            <div class="frame-wrapper47">
                                <div class="account-card-details-parent">
                                    <h3 class="account-card">Account & Card Details</h3>
                                    <div class="click-below-for1">
                                        Click below for secure access to insights related to your accounts and debit cards.
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btnAccountCardInfo" runat="server" CssClass="transferbutton" Text="See Now" OnClick="btnAccountCardInfo_Click" />
                        </div>
                    </div>
                </div>
                <div class="customersupport" style="margin-bottom: 30px;">
                    <div class="rectangle-do14"></div>
                    <img class="suuportimage-icon" loading="lazy" alt="" src="./public/suuportimage@2x.png" />

                    <div class="customersupport-inner">
                        <div class="customer-support-parent">
                            <h3 class="customer-support34">Customer Support</h3>
                            <div class="supportbutton-wrapper">
                                <asp:Button ID="btnCustomerSupport" runat="server" CssClass="supportbutton2" Text="Get Now" OnClick="btnCustomerSupport_Click" />
                            </div>
                            <div class="supportbutton-container">
                                <asp:Button ID="btnMessageBox" runat="server" CssClass="supportbutton2" Text="Message Box" OnClick="btnMessageBox_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="frame-parent114" >
                <div class="money-flow-wrapper">
                    <img class="money-flow-icon" loading="lazy" alt="" src="./public/money-flow@2x.png" />
                </div>
                <div class="bar-chart">
                    <div class="daily-actitvity">Daily Activity</div>
                    <div class="lines">
                        <img class="lines-child" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <img class="lines-item" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <img class="lines-inner" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <img class="lines-child1" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <img class="lines-child2" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <img class="lines-child3" loading="lazy" alt="" src="./public/vector-1.svg" />
                        <div class="h-parent">
                            <b class="h">5h</b>
                            <b class="h1">4h</b>
                            <b class="h2">3h</b>
                            <b class="h3">2h</b>
                            <b class="h4">1h</b>
                        </div>
                        <div class="frame-parent115">
                            <div class="bar-list-wrapper">
                                <div class="bar-list">
                                    <div class="bar"></div>
                                    <div class="bar1"></div>
                                    <div class="bar2"></div>
                                    <div class="bar3"></div>
                                    <div class="bar4"></div>
                                    <div class="bar5"></div>
                                    <div class="bar6"></div>
                                </div>
                            </div>
                            <div class="x-axis">
                                <div class="mon">Mon</div>
                                <div class="tue">Tue</div>
                                <div class="wed">Wed</div>
                                <div class="thurs">Thu</div>
                                <div class="fri">Fri</div>
                                <div class="sat">Sat</div>
                                <div class="sun">Sun</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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