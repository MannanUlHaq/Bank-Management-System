<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FaceRecognitionPage.aspx.cs" Inherits="Bank_Management_System.FaceRecognitionPage" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" href="Assests/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-dist/css/bootstrap.css">
  <link rel="stylesheet" href="Assests/bootstrap-5.1.3-examples/footers/footers.css">
  <link rel="stylesheet" href="./global.css" />
  <link rel="stylesheet" href="./client-face-recognition.css" />
  <link rel="stylesheet" href="./about-us.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,700&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito Sans:wght@400;600&display=swap" />
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>
<script src="https://cdn.jsdelivr.net/npm/face-api.js"></script>
          <link href="Styles/sweetalert.css" rel="stylesheet" />
  <script src="Scripts/sweetalert.min.js"></script>

        <style>
        .picture-box {
            width: 300px;
            height: 300px;
            overflow: hidden; /* Ensure the image doesn't overflow */
            position: relative; /* Ensure absolute positioning */
        }

        .picture-box video {
            position: absolute;
            left: 50%; /* Center horizontally */
            top: 50%; /* Center vertically */
            transform: translate(-50%, -50%); /* Center the video */
            width: auto; /* Maintain aspect ratio */
            height: auto; /* Maintain aspect ratio */
        }

        .picture-box img {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            transform: scaleX(-1); /* Apply horizontal flip (mirror effect) */
        }

        video {
            display: none; /* Hide the video element */
        }

        #capturedImage {
            max-width: 100%; /* Ensure the image fits within the box */
            max-height: 100%; /* Ensure the image fits within the box */
        }
    </style>


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

<div class="client-face-recognition">
    <section class="main-content2">
            <div class="recognition-area">
                <h1 class="scan-face"><br />Scan Face</h1>                                   
                <form id="form1" runat="server">
                    <div class="picture-box">
        <video id="videoElement" autoplay></video>
        <img id="liveImage" src="" width="350" height="350" />
                    </div>
                     <div class="picture-box">
                         <asp:Image ID="Image2" runat="server" ImageUrl=""/>
                    </div>
                <div class="button-container">
                    <div class="button-parent">
                        <asp:Button ID="Button1" CssClass="button3" runat="server" Text="Capture" />
                        <asp:Button ID="Button3" CssClass="button4" runat="server" Text="Scan" OnClick="Button3_Click" />
                    </div>
                </div>
                    <asp:HiddenField ID="HiddenFieldImageData" runat="server" />
               </form>
            </div>
            <div class="cursor-area1">
                <div class="cursor-location">
                    <img class="cursor-icon3" alt="" src="./public/cursor@2x.png" />
                    <img class="at-icon3" loading="lazy" alt="" src="./public/at@2x.png" />
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

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var video = document.getElementById('videoElement');
        var capturedImage = document.getElementById('<%= Image2.ClientID %>');
    var hiddenField = document.getElementById('<%= HiddenFieldImageData.ClientID %>');
    var captureButton = document.getElementById('<%= Button1.ClientID %>');

    // Access the webcam and stream video
    navigator.mediaDevices.getUserMedia({ video: true })
        .then(function (stream) {
            video.srcObject = stream;
        })
        .catch(function (err) {
            console.log("An error occurred: " + err);
        });

    // Function to capture and display the cropped image
    captureButton.addEventListener('click', function (event) {
        event.preventDefault(); // Prevent form submission

        var canvas = document.createElement('canvas');
        var ctx = canvas.getContext('2d');
        var cropWidth = 350;
        var cropHeight = 350;
        var cropX = Math.max(video.videoWidth / 2 - cropWidth / 2, 0);
        var cropY = Math.max(video.videoHeight / 2 - cropHeight / 2, 0);
        canvas.width = cropWidth;
        canvas.height = cropHeight;
        ctx.drawImage(video, cropX, cropY, cropWidth, cropHeight, 0, 0, cropWidth, cropHeight);

        // Set the src attribute of the captured image control
        capturedImage.src = canvas.toDataURL('image/jpeg');

        // Set the captured image data to the hidden field value
        hiddenField.value = canvas.toDataURL('image/jpeg');
    });
});
</script>


    <script>
    document.addEventListener('DOMContentLoaded', function() {
    var video = document.getElementById('videoElement');
    var img = document.getElementById('liveImage');
    
    // Access the webcam and stream video
    navigator.mediaDevices.getUserMedia({ video: true })
        .then(function(stream) {
            video.srcObject = stream;
        })
        .catch(function(err) {
            console.log("An error occurred: " + err);
        });

    // Function to capture and display the cropped image
    video.addEventListener('play', function() {
        setInterval(function() {
            var canvas = document.createElement('canvas');
            var ctx = canvas.getContext('2d');
            var cropWidth = 350;
            var cropHeight = 350;
            var cropX = Math.max(video.videoWidth / 2 - cropWidth / 2, 0);
            var cropY = Math.max(video.videoHeight / 2 - cropHeight / 2, 0);
            canvas.width = cropWidth;
            canvas.height = cropHeight;
            ctx.drawImage(video, cropX, cropY, cropWidth, cropHeight, 0, 0, cropWidth, cropHeight);
            img.src = canvas.toDataURL('image/jpeg');
        }, 100); // Update every 100 milliseconds (adjust as needed)
    });
    });
</script>


</body>

</html>