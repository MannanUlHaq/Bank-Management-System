<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationsAdminViewPage.aspx.cs" Inherits="Bank_Management_System.WebForm1" EnableEventValidation ="false"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./loan-applications.css" />
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
              <a class="nav-link " aria-current="page" href="home.html">&nbsp;&nbsp;&nbsp;Home</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="about-us.html">&nbsp;&nbsp;&nbsp;&nbsp;About</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="mains-services.html"> &nbsp;&nbsp;&nbsp;&nbsp;Services</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html"> &nbsp;&nbsp;&nbsp;&nbsp;Resources</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="contact-form.html"> &nbsp;&nbsp;&nbsp;&nbsp;Contact us</a>
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
  <div class="loan-applications1">
  <section class="content-area2">
    <div class="loan-application-structure">
      <div class="loan-applications-header">
        <h1 class="loan-applications2"><br />Loan Applications</h1>
      </div>
      <div class="loan-applications-content">

          <div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="form-group">
            <div class="table-scroll">
                <asp:GridView ID="gv" Width="100%" AutoGenerateColumns="false" CssClass="table table-bordered table-condensed table-hover"
                    runat="server" OnSelectedIndexChanged="gv_SelectedIndexChanged" OnRowDataBound="gv_RowDataBound">
    <Columns>
        <asp:BoundField DataField="LoansId" HeaderText="Loan ID" />
        <asp:BoundField DataField="ClientId" HeaderText="Client ID" />
        <asp:BoundField DataField="LoanType" HeaderText="Loan Type" />
        <asp:BoundField DataField="Status" HeaderText="Status" />
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

          <div class="search-and-filter-area">
            <div class="input-fields-area">
              <div class="name-inputs1">
                <div class="form32">
                  <div class="input16">
                    <div class="first-name7">First Name</div>
                    <div class="field50">
                      <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="label47" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                    </div>
                  </div>
                </div>
                <div class="form33">
                  <div class="input17">
                    <div class="client-id">Client ID</div>
                    <div class="field51">
                        <asp:TextBox ID="TextBoxClientID" runat="server" CssClass="label49" placeholder="0001" TextMode="SingleLine"></asp:TextBox>
                    </div>
                  </div>
                </div>
                <div class="loan-details-inputs">
                  <div class="loan-detail-fields">
                    <div class="loan-type1">Loan Type</div>
                    <div class="field52">
                      <asp:TextBox ID="LoanTypeTextBox" runat="server" CssClass="label49" placeholder="Personal/Student etc" TextMode="SingleLine"></asp:TextBox>
                    </div>
                  </div>
                  <div class="loan-detail-fields1">
                    <div class="amount">Amount</div>
                    <div class="field53">
                      <asp:TextBox ID="AmountTextBox" runat="server" CssClass="label50" placeholder="1000000" TextMode="SingleLine"></asp:TextBox>
                    </div>
                  </div>
                </div>
              </div>
              <div class="last-name-input-area">
                <div class="last-name7">Last Name</div>
                <div class="field54">
                  <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="label51" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                </div>
              </div>
            </div>
            <div class="action-area2">
              <div class="action-buttons">
                  <asp:Button ID="ApproveButton" runat="server" CssClass="button11" Text="Approve" OnClick="ApproveButton_Click" />
                  <asp:Button ID="NotApproveButton" runat="server" CssClass="button11" Text="Not Approve" OnClick="NotApproveButton_Click" />
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