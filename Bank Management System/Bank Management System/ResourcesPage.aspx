<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourcesPage.aspx.cs" Inherits="Bank_Management_System.ResourcesPage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./index.css" />
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
              <a class="nav-link active" aria-current="page" href="ResourcesPage.aspx"> &nbsp;&nbsp;&nbsp;&nbsp;Resources</a>
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
  <div class="recourse">

    <section class="featured-visuals">
      <div class="feature-images">
        <img class="visuals-icon" loading="lazy" alt="" src="./public/rectangle-26@2x.png" />
      </div>
      <div class="left-banner"></div>
      <div class="feature-images1">
        <img class="visuals-icon1" loading="lazy" alt="" src="./public/rectangle-28@2x.png" />
      </div>
      <img class="visuals-icon2" loading="lazy" alt="" src="./public/rectangle-27@2x.png" />
    </section>
    <div class="header-3">
      <div class="header-3-child"></div>
    </div>


          <section class="frauds">
      <div class="frauds-child"></div>
      <div class="frauds-inner">
        <div class="digi-bank-prevent-identity-t-parent">
          <h1 class="digi-bank-2">Digi Bank - Crafting Your Financial Plan for Success</h1>
          <div class="stay-vigilant-against">
                          Learn to create a budget that fits your lifestyle and goals.
              Discover tips for tracking expenses and prioritizing spending.
          </div>
          <div class="financial-security">
            <button class="security-visual">
              <img class="security-visual-child" alt="" src="./public/rectangle-24.svg" />

              <b class="explore-more2">Explore More</b>
            </button>
          </div>
        </div>
      </div>
      <div class="fraud-prevention">
        <div class="fraud-prevention-child"></div>
        <img class="fraud-1-icon" loading="lazy" alt="" src="./public/b3-3@2x.png" />
      </div>
    </section>


    <section class="saving">
      <div class="saving-options-breakdown">
        <img class="saving-1-icon" loading="lazy" alt="" src="./public/saving-1@2x.png" />

        <div class="financial-future">
          <div class="financial-goals">
            <h1 class="digi-bank-1">
              Digi Bank - Building a Secure Financial Future
            </h1>
            <div class="explore-strategies-to">
              Explore strategies to build a solid savings plan, from setting
              achievable goals to automating contributions.
            </div>
            <div class="financial-growth">
              <div class="savings-visual"></div>
              <b class="explore-more1">Explore More</b>
            </div>
          </div>
        </div>
        <div class="saving-options-breakdown-child"></div>
      </div>
    </section>
    <section class="frauds">
      <div class="frauds-child"></div>
      <div class="frauds-inner">
        <div class="digi-bank-prevent-identity-t-parent">
          <h1 class="digi-bank-2">Digi Bank - Prevent Identity Theft</h1>
          <div class="stay-vigilant-against">
            Stay vigilant against scams with these tips. Secure your personal
            info, spot phishing attempts, and safeguard your finances from
            fraudsters
          </div>
          <div class="financial-security">
            <button class="security-visual">
              <img class="security-visual-child" alt="" src="./public/rectangle-24.svg" />

              <b class="explore-more2">Explore More</b>
            </button>
          </div>
        </div>
      </div>
      <div class="fraud-prevention">
        <div class="fraud-prevention-child"></div>
        <img class="fraud-1-icon" loading="lazy" alt="" src="./public/fraud-1@2x.png" />
      </div>
    </section>
    <section class="finance">
      <div class="finance-1-parent">
        <img class="finance-1-icon" loading="lazy" alt="" src="./public/finance-1@2x.png" />

        <img class="frame-inner" alt="" src="./public/rectangle-101.svg" />

        <div class="empowerment-options">
          <div class="frame-parent">
            <div class="financial-empowerment-wrapper">
              <div class="financial-empowerment">
                <h1 class="digi-bank-3">Digi Bank - Empower Your Finances</h1>
                <div class="information-on-community">
                  Information on community events or workshops related to
                  personal finance and money management; adding a valuable
                  recourse for your better future
                </div>
              </div>
            </div>
            <div class="event-details-parent">
              <div class="event-details"></div>
              <b class="explore-more3">Explore More</b>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="law-parent">
      <section class="law">
        <div class="law-child"></div>
        <div class="law-inner">
          <div class="frame-group">
            <div class="digi-bank-legal-and-regulato-parent">
              <h1 class="digi-bank-4">
                Digi Bank - Legal and Regulatory Essentials
              </h1>
              <div class="access-important-disclosures">
                Access important disclosures, and consumer rights information.
                Understand the laws and regulations governing financial
                services to protect your rights and interests
              </div>
            </div>
            <div class="vector-container">
              <img class="rectangle-icon" alt="" src="./public/rectangle-24.svg" />

              <b class="explore-more4">Explore More</b>
            </div>
          </div>
        </div>
        <div class="fraud-visual">
          <div class="fraud-visual-child"></div>
          <img class="fraud-1-icon1" loading="lazy" alt="" src="./public/fraud-1-1@2x.png" />
        </div>
      </section>
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