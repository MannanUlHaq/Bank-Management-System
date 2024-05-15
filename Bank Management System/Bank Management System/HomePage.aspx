<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Bank_Management_System.HomePage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./home.css" />
  <link rel="stylesheet" href="./about-us.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap" />
</head>

<body>
  <div class="home">
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
                <a class="nav-link active" aria-current="page" href="HomePage.aspx">&nbsp;&nbsp;&nbsp;Home</a>
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

    <section class="intro-video">
      <div class="intro-video-child"></div>
      <img class="p1-1-icon" loading="lazy" alt="" src="./public/p1-1@2x.png" />

      <div class="intro-section">
        <img class="untitled-design2-2" loading="lazy" alt="" src="./public/untitled-design2-2@2x.png" />

        <img class="untitled-design1-1" loading="lazy" alt="" src="./public/untitled-design1-1@2x.png" />

        <div class="video-overlay"></div>
        <h1 class="your-business">Your Business</h1>
        <h1 class="see-how-the">See How The Right Bank Can</h1>
        <h1 class="grow">Grow</h1>
      </div>
    </section>
    <div class="financial-solutions">
      <div class="rectangle-solution"></div>
      <b class="your-financial-solutions-container">
        <p class="your-financial-solutions">Your Financial Solutions Here</p>
      </b>
    </div>

    <section class="why-digi">
      <div class="why-digi-child"></div>
      <div class="reason-content">
        <div class="reason-container">
          <div class="reason-title-area">
            <h2 class="why-to-choose">Why To Choose DiGi ?</h2>
            <div class="reason-description">
              <div class="digi-bank-offers">
                Seamless banking experience tailored to your needs. Enjoy
                competitive rates, personalized financial solutions,
                convenient digital banking, and a trusted partner for all your
                financial goals.
              </div>
            </div>
          </div>
          <div class="bottom-decoration" style="margin-top: 30px;">
            <div class="button-shape"></div>
            <b class="explore-more5">Explore More</b>
          </div>
        </div>
      </div>
      <div class="explore-button">
        <div class="explore-button-child"></div>
        <img class="b3-1-icon" loading="lazy" alt="" src="./public/b3-1@2x.png" />
      </div>
    </section>
    <section class="do-every-thing">
      <div class="b1b62b60-0544-4b34-b842-1a7d61-parent">
        <img class="b1b62b60-0544-4b34-b842-1a7d61-icon" loading="lazy" alt=""
          src="./public/-b1b62b6005444b34b8421a7d61c3aca7-1@2x.png" />

        <div class="capabilities-content">
          <div class="capabilities-container">
            <div class="capabilities-highlight-parent">
              <div class="capabilities-highlight"></div>
              <b class="make-your-move">Make Your Move</b>
            </div>
            <div class="offering-description">
              <h2 class="offering-everything-what">
                Offering everything, what you need.
              </h2>
              <div class="digi-bank-offers">
                Digi Bank offers a comprehensive suite of products and
                services including treasury, business, and personal banking.
                But what truly sets us apart is our entrepreneurial spirit. 
              </div>
            </div>
          </div>
        </div>
        <div class="rectangle-do"></div>
      </div>
    </section>
    <section class="banking-since">
      <div class="banking-since-child"></div>
      <i class="banking-since-1996">Banking Since 1996</i>
    </section>
    <section class="our-values">
      <img class="our-values-child" alt="" src="./public/rectangle-16@2x.png" />

      <div class="values-background"></div>
      <div class="values-content">
        <div class="time-efficiency">
          <h1 class="our-values1">Our Values</h1>
          <div class="time-efficiency-child"></div>
        </div>
      </div>
      <div class="value-items">
        <div class="value-rows">
          <div class="diversity-row">
            <div class="first-row">
              <img class="first-row-child" alt="" src="./public/rectangle-17.svg" />

              <div class="quality-row-parent">
                <div class="quality-row">
                  <h2 class="diversity">Diversity</h2>
                </div>
                <div class="diversity-icon"></div>
              </div>
              <div class="teamwork-icon-area">
                <img class="flip-vertical-circle-1-flip-b-icon" loading="lazy" alt=""
                  src="./public/flipverticalcircle1flipbottomobjectwork.svg" />
              </div>
            </div>
          </div>
          <div class="rectangle-group">
            <div class="frame-child4"></div>
            <div class="values-title-area">
              <div class="time-efficiency-items">
                <h2 class="on-time">On Time</h2>
              </div>
              <div class="time-efficiency-icons"></div>
            </div>
            <div class="profile-icon-wrapper">
              <img class="profile-icon" alt="" src="./public/profile-icon.svg" />
            </div>
          </div>
          <div class="diversity-container">
            <div class="diversity-container-child"></div>
            <div class="diversity-content">
              <div class="effective-wrapper">
                <h2 class="effective">Effective</h2>
              </div>
              <div class="diversity-content-child"></div>
            </div>
            <div class="user-identifier-card-wrapper">
              <img class="user-identifier-card-icon" loading="lazy" alt="" src="./public/useridentifiercard.svg" />
            </div>
          </div>
        </div>
        <div class="diversity-title-area">
          <div class="quality-container">
            <div class="quality-items">
              <div class="frame-container">
                <div class="frame-wrapper">
                  <div class="rectangle-container">
                    <div class="frame-child5"></div>
                    <h2 class="calculated">Calculated</h2>
                  </div>
                </div>
                <div class="icon-background"></div>
              </div>
              <div class="calendar-icon-container">
                <img class="calendar-edit-calendar-date-d-icon" loading="lazy" alt=""
                  src="./public/calendareditcalendardatedaycomposeeditnote.svg" />
              </div>
            </div>
            <div class="quality-items1">
              <div class="reliability-quality">
                <div class="reliability-quality-items">
                  <h2 class="reliability">Reliability</h2>
                </div>
                <div class="reliability-quality-icons"></div>
              </div>
              <div class="layers-rating">
                <div class="layers-rating-items">
                  <div class="layers-rating-icons"></div>
                  <img class="layers-1-design-layer-layers-icon" loading="lazy" alt=""
                    src="./public/layers1designlayerlayerspilestackalign.svg" />
                </div>
              </div>
            </div>
            <div class="calculated-row">
              <div class="calculated-container">
                <div class="quality-wrapper">
                  <h2 class="quality">Quality</h2>
                </div>
                <div class="calculated-container-child"></div>
              </div>
              <div class="calculated-row-inner">
                <div class="rectangle-parent1">
                  <div class="frame-child6"></div>
                  <img class="like-1-reward-social-up-ratin-icon" loading="lazy" alt=""
                    src="./public/like1rewardsocialupratingmedialikethumbhand.svg" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="featured-in">
      <div class="featured-in-child"></div>
      <div class="featured-logos-container">
        <img class="forbes-icon" loading="lazy" alt="" src="./public/forbes.svg" />
      </div>
      <div class="media-logos-container">
        <div class="b-b-c-logo-container">
          <img class="b-b-c-clip-path" alt="" src="./public/b-b-c-clip-path.svg" />
        </div>
        <div class="featured-in-label-container">
          <div class="as-featured-in">As Featured in</div>
        </div>
        <div class="b-b-c-logo-wrapper">
          <div class="bbc">
            <div class="clip-path-group">
              <img class="group-icon" alt="" src="./public/group.svg" />
            </div>
          </div>
        </div>
      </div>
      <div class="c-n-b-c-logo-container">
        <img class="cnbc-icon" alt="" src="./public/cnbc.svg" />
      </div>
    </section>
    <div class="services2">
      <div class="rectangle-solution1"></div>
      <b class="products-and-services">Products and Services</b>
    </div>
    <section class="products-services">
      <img class="products-services-child" alt="" src="./public/rectangle-41@2x.png" />

      <div class="products-services-item"></div>
      <div class="card-placeholder"></div>
      <img class="card-container-icon" loading="lazy" alt="" src="./public/rectangle-58@2x.png" />

      <img class="card-container-icon1" loading="lazy" alt="" src="./public/rectangle-59@2x.png" />

      <img class="card-container-icon2" alt="" src="./public/card-container@2x.png" />

      <img class="card-container-icon3" loading="lazy" alt="" src="./public/rectangle-61@2x.png" />
    </section>
    <section class="clients">
      <img class="clients-child" alt="" src="./public/rectangle-63@2x.png" />

      <div class="client-background"></div>
      <div class="testimonials-content">
        <div class="testimonial-header">
          <div class="testimonial-title-container">
            <h1 class="our-clients">Our Clients</h1>
          </div>
          <img class="testimonial-divider-icon" loading="lazy" alt="" />
        </div>
      </div>
      <div class="testimonial-items">
        <div class="first-testimonial">
          <div class="first-testimonial-content">
            <img class="client-avatar-icon" loading="lazy" alt="" src="./public/rectangle-65@2x.png" />

            <div class="ive-been-banking-container">
              <p class="ive-been-banking">
                I've been banking with this institution for
              </p>
              <p class="years-now-and">
                years now, and their website just keeps
              </p>
              <p class="getting-better-its">
                getting better. It's so convenient to
              </p>
              <p class="handle-everything-from">
                handle everything from paying bills to
              </p>
              <p class="checking-my-balance">
                checking my balance without ever
              </p>
              <p class="having-to-step">having to step into a branch.</p>
            </div>
          </div>
        </div>
        <div class="second-testimonial">
          <div class="absolutely-impressed-from-container">
            <p class="absolutely-impressed-from">
              Absolutely Impressed! From the moment I
            </p>
            <p class="signed-up-with">
              signed up with this bank, I knew I made the
            </p>
            <p class="right-choicetheir-website">
              right choice.Their website is incredibly user-
            </p>
            <p class="friendly-making-it">
              friendly, making it a breeze to manage my
            </p>
            <p class="finances-online">finances online.</p>
          </div>
          <img class="second-client-avatar" loading="lazy" alt="" src="./public/rectangle-66@2x.png" />
        </div>
      </div>
    </section>
    <section class="meet-team-parent" style="max-height: 1150px;">
      <div class="meet-team">
        <img class="meet-team-child" alt="" src="./public/rectangle-46@2x.png" />

        <img class="meet-team-item" alt="" src="./public/rectangle-47.svg" />

        <div class="team-content-container">
          <div class="team-content-block">
            <div class="member-four-content">
              <div class="meet-our-team">Meet Our Team</div>
            </div>
            <img class="team-content-block-child" loading="lazy" alt="" src="./public/line-1.svg" />
          </div>
        </div>
        <img class="meet-team-inner" loading="lazy" alt="" src="./public/ellipse-10@2x.png" />

        <img class="ellipse-icon" loading="lazy" alt="" src="./public/ellipse-9@2x.png" />

        <img class="meet-team-child1" loading="lazy" alt="" src="./public/ellipse-8@2x.png" />

        <div class="manager-container">
          <div class="member-container">
            <div class="member-block-three">
              <div class="member-content">
                <img class="member-content-child" alt="" src="./public/rectangle-171.svg" />

                <div class="director-role-block-wrapper">
                  <div class="director-role-block">
                    <div class="regional-manager">Regional Manager</div>
                    <div class="member-photo"></div>
                  </div>
                </div>
                <div class="our-regional-manager-container">
                  <span>
                    <p class="our-regional-manager">
                      Our Regional Manager plays a pivotal role in ensuring operational excellence and
                      customer satisfaction across multiple branches.
                  </span>
                </div>
              </div>
              <div class="member-block-two">
                <div class="member-block-two-child"></div>
                <div class="chief-executive">Chief Executive</div>
                <div class="member-block-two-inner">
                  <img class="frame-child7" alt="" src="./public/rectangle-55.svg" />
                </div>
                <div class="as-the-visionary-container">
                  <span class="as-the-visionary-container1">
                    <p class="as-the-visionary">As the visionary leader</p>
                    <p class="of-our-bank">
                      of our bank, our Chief Executive
                    </p>
                    <p class="drives-our-organization">
                      drives our organization
                    </p>
                    <p class="forward-with-unwavering">
                      forward with unwavering
                    </p>
                    <p class="dedication">dedication.</p>
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div class="member-three-content-parent">
            <div class="member-three-content">
              <div class="member-three-info">
                <img class="member-three-info-child" alt="" src="./public/rectangle-171.svg" />

                <div class="marketing-director-parent">
                  <div class="marketing-director">Marketing Director</div>
                  <div class="director-photo"></div>
                </div>
                <div class="our-marketing-director-is-the-wrapper">
                  <div class="our-marketing-director-container">
                    <span>
                      <p class="our-marketing-director">
                        Our Marketing Director is the creative force behind our bank's brand identity and
                        market positioning.
                      </p>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="member-block-four">
              <div class="head-role-block-wrapper">
                <div class="head-role-block">
                  <div class="documentation-head">Documentation Head</div>
                  <img class="head-photo-icon" alt="" src="./public/head-photo@2x.png" />
                </div>
              </div>
              <div class="head-photo-block">
                <div class="photo-background"></div>
                <div class="additional-background"></div>
              </div>
              <div class="our-documentation-head-container">
                <span>
                  <p class="our-documentation-head" style="padding-right: 13px;">Our Documentation Head ensures <br>
                    that our processes
                    and procedures adhere to the highest standards of governance and transparency.
                  </p>
                </span>
              </div>
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