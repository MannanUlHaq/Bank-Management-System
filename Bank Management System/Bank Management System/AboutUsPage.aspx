<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsPage.aspx.cs" Inherits="Bank_Management_System.AboutUsPage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./about-us.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap" />
</head>

<body>
  <div class="about-us">
    <br><br><br><br>

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
              <a class="nav-link active" aria-current="page" href="AboutUsPage.aspx">&nbsp;&nbsp;&nbsp;&nbsp;About</a>
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


  <section class="intro">
    <div class="slogan">
      <div class="slogan-child"></div>
      <h3 class="digi-bank-represents-container">
        <p class="digi-bank-represents">
          “DIGI Bank” represents a return to how banking used to be, where
          the staff knew everyone by name and treated customers like people
          instead of numbers.
        </p>
        <p class="blank-line">&nbsp;</p>
        <p class="we-bring-this">
          We bring this nostalgic approach into modern times and offer the
          best of both worlds: the fast, personal service of a local bank,
          along with the convenient, secure products and services of a large
          one.
        </p>
      </h3>
    </div>
    <div class="slogan-background">
      <img class="bank-1-icon" alt="" src="./public/bank-1@2x.png" />

      <div class="slogan-background-child"></div>
    </div>
  </section>


  <div class="services4">

    <div class="loans">
      <img class="loans-child" loading="lazy" alt="" src="./public/rectangle-102@2x.png" />

      <div class="loandetails">
        <div class="pursuing-excellence-in" style="font-size: 22px;">
          Pioneering new solutions and technologies to enhance customer experiences and meet evolving needs.
        </div>
      </div>
    </div>

    <div class="loans">
      <img class="loans-child" loading="lazy" alt="" src="./public/rectangle-10-1@2x.png" />

      <div class="loandetails">
        <div class="pursuing-excellence-in" style="font-size: 22px;">
          Upholding honesty and transparency in every interaction, ensuring trust and credibility.

        </div>
      </div>
    </div>


    <div class="loans">
      <img class="loans-child" loading="lazy" alt="" src="./public/rectangle-10-2@2x.png" />

      <div class="loandetails">
        <div class="pursuing-excellence-in" style="font-size: 22px;">
          Pursuing excellence in all aspects of banking operations, setting
          high standards for performance and service delivery.
        </div>
      </div>
    </div>

    <div class="loans">
      <img class="loans-child" loading="lazy" alt="" src="./public/rectangle-10-3@2x.png" />

      <div class="loandetails">
        <div class="pursuing-excellence-in" style="font-size: 22px;">
          Embracing diversity and fostering an inclusive environment where everyone feels valued and respected.

        </div>
      </div>
    </div>

    <div class="loans">
      <img class="loans-child" loading="lazy" alt="" src="./public/rectangle-10-4@2x.png" />

      <div class="loandetails">
        <div class="pursuing-excellence-in" style="font-size: 22px;">
          Taking responsibility for actions and outcomes, ensuring accountability at all levels of the organization.

        </div>
      </div>
    </div>


    <div class="customersupprot">
      <img class="customersupprot-child" loading="lazy" alt="" src="./public/rectangle-10-5@2x.png" />

      <div class="supportdetails">
        <div class="placing-customers-at" style="font-size: 22px;">
          Placing customers at the heart of every decision, striving to
          exceed expectations and build lasting relationships.
        </div>
      </div>
    </div>
  </div>
  <section class="group-section">
    <img class="frame-child10" alt="" src="./public/rectangle-46@2x.png" />

    <img class="frame-child11" alt="" src="./public/rectangle-47.svg" />

    <div class="team-info">
      <div class="team-title-area">
        <div class="team-title-container">
          <div class="meet-our-team1">Meet Our Team</div>
        </div>
        <img class="team-title-area-child" alt="" src="./public/line-11.svg" />
      </div>
    </div>
    <img class="team-indicators-icon" alt="" src="./public/team-indicators@2x.png" />

    <img class="team-indicators-icon1" alt="" src="./public/team-indicators1@2x.png" />

    <img class="team-indicators-icon2" alt="" src="./public/team-indicators2@2x.png" />

    <div class="frame-child12"></div>
    <div class="frame-child13"></div>
    <div class="frame-child14"></div>
    <div class="team-members">
      <div class="manager-area">
        <div class="manager-card">
          <div class="manager-info">
            <img class="manager-info-child" alt="" src="./public/rectangle-172.svg" />

            <div class="manager-role">
              <div class="regional-manager1">Regional Manager</div>
            </div>
            <div class="our-regional-manager-container1">
              <span>
                <p class="our-regional-manager1">
                  Our Regional Manager plays a pivotal role in ensuring operational excellence and customer satisfaction
                  across multiple branches.
                </p>
              </span>
            </div>

          </div>
          <div class="documentation-area">
            <div class="documentation-image"></div>
            <div class="documentation-info">
              <div class="documentation-role">
                <div class="documentation-head1">Chief Executive</div>
                <img class="documentation-photo-icon" alt="" src="./public/ellipse-8@2x.png" />
              </div>
            </div>
            <div class="our-documentation-head-container1">
              <span class="as-the-visionary-container3">
                <p>
                  As visionary leader of our bank <br> our Chief Executive drives our organization
                  forward with unwavering dedication.
                </p>
              </span>
            </div>
          </div>




        </div>
      </div>
      <div class="director-area">
        <div class="director-card">
          <div class="director-info">
            <img class="director-info-child" alt="" src="./public/rectangle-172.svg" />

            <div class="marketing-director1">Marketing Director</div>
            <div class="director-description">
              <div class="our-marketing-director-container1">
                <span>
                  <p class="our-marketing-director1">
                    Our Marketing Director is the creative force behind our bank's brand identity and
                    market positioning.
                  </p>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div class="documentation-area">
          <div class="documentation-image"></div>
          <div class="documentation-info">
            <div class="documentation-role">
              <div class="documentation-head1">Documentation Head</div>
              <img class="documentation-photo-icon" alt="" src="./public/documentation-photo@2x.png" />
            </div>
          </div>
          <div class="our-documentation-head-container1">
            <span class="as-the-visionary-container3">
              <p class="our-documentation-head1">Our Documentation Head
              </p>
              <p class="ensures-that-our1">ensures that our processes</p>
              <p class="and-procedures-adhere1">and procedures adhere to</p>
              <p class="the-highest-standards1">the highest standards of</p>
              <p class="governance-and-transparency1">
                governance and transparency.
              </p>
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>

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
