<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddClientPage.aspx.cs" Inherits="Bank_Management_System.AddClientPage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./add-client.css" />
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

<div class="add-client">
    <section class="add-client-inner">
        <form id="form1" runat="server" class="frame-parent29">
            <div class="add-new-client-wrapper">
                <h1 class="add-new-client">Add New Client</h1>
            </div>
            <div class="frame-parent30">
                <div class="frame-parent31">
                    <div class="frame-parent32">
                        <div class="frame-parent33">
                            <div class="form-parent2">
                                <div class="form35">
                                    <div class="input23">
                                        <div class="first-name9">First Name</div>
                                        <div class="field61">
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="label55" placeholder="Jane" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-frame">
                                    <div class="form36">
                                        <div class="form37">
                                            <div class="form38">
                                                <div class="input24">
                                                    <div class="gender3">Gender</div>
                                                    <div class="field62">
                                                        <asp:TextBox ID="txtGender" runat="server" CssClass="label56" placeholder="Male/Female" TextMode="SingleLine"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="email-address6">Email Address</div>
                            </div>
                            <div class="frame-parent34">
                                <div class="last-name-group">
                                    <div class="last-name9">Last Name</div>
                                    <div class="field63">
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="label57" placeholder="Cane" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="frame-wrapper10">
                                    <div class="form-parent3">
                                        <div class="form39">
                                            <div class="form40"></div>
                                        </div>
                                        <div class="form41">
                                            <div class="input25">
                                                <div class="age3">Age</div>
                                                <div class="field64">
                                                    <asp:TextBox ID="txtAge" runat="server" CssClass="label58" placeholder="18" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field65">
                            <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="label59" placeholder="email@janesfakedomain.net" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="frame-parent35">
                    <div class="frame-wrapper12">
                        <div class="frame-parent36">
                            <div class="address-group">
                                <div class="address1">Address</div>
                                <div class="field66">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="label60" placeholder="Street - 1234" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="frame-parent37">
                                <div class="frame-parent38">
                                    <div class="cnic-group">
                                        <div class="cnic2">CNIC</div>
                                        <div class="field67">
                                            <asp:TextBox ID="txtCNIC" runat="server" CssClass="label61" placeholder="123456789" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="city-group">
                                        <div class="city1">City</div>
                                        <div class="field68">
                                            <asp:TextBox ID="txtCity" runat="server" CssClass="label62" placeholder="Lahore" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form42">
                                        <div class="input26">
                                            <div class="username4">Username</div>
                                            <div class="field68">
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="label62" placeholder="Jane1234" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-parent4">
                                    <div class="form43">
                                        <div class="form44">
                                            <div class="input27">
                                                <div class="date-of-birth1">Date of Birth</div>
                                                <div class="field70">
                                                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="label64" placeholder="" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="date-container">
                                        <div class="form45">
                                            <div class="form46">
                                                <div class="input28">
                                                    <div class="phone5">Phone</div>
                                                    <div class="field71">
                                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="label65" placeholder="987654321" TextMode="SingleLine"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="password-container">
                                        <div class="password4">Password</div>
                                        <div class="field72">
                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="label66" placeholder="J1234@" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
<div class="picture-container">
    <div class="row-container">
    <div class="picture-box" style="margin-left:150px">
        <asp:Image ID="Image2" runat="server"/>
    </div>
<div class="add-button-container2">
    <asp:FileUpload ID="fileUpload1" runat="server" CssClass="button123" OnChange="displayImage();" />
</div>
<asp:Image ID="Image1" runat="server" />

</div>

    <img class="users-icon4" loading="lazy" alt="" src="./public/users1@2x.png" />
</div>

                </div>
            </div>
            <div class="add-button-container">
                <asp:Button ID="Button1" runat="server" CssClass="button16" Text="Add" OnClick="Button1_Click" />
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

<script>
    function displayImage() {
        var fileInput = document.getElementById('<%= fileUpload1.ClientID %>');
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                var image = document.getElementById('<%= Image2.ClientID %>');
                image.src = e.target.result;
                image.style.display = 'block'; // Show the image
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
  </script>



</body>

</html>