<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About US</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");
    </style>
    <link rel="stylesheet" href="bbms.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="shortcut icon" href="images/logo-removebg-preview.png" type="image/x-icon">
  </head>
  <body>
    
  <!-- header section starts -->
  <section class="header-section">
    <header class="header-container">
        <div class="nav-bar">

            <!-- navbar logo box -->
            <div class="logo-box">
                <a href="index.html" class="logo">
                    <img src="blood_bank_logo.jpeg" alt="BBMS Logo" class="logo-icon">
                </a>
            </div>

            <!-- section navbar items -->
            <ul class="nav-links">
                <li class="nav-items"><a href="about.html" class="nav-item-links">About Us</a></li>
                <li class="nav-items"><a href="donors.jsp" class="nav-item-links">Donation Centers</a></li>
                <li class="nav-items"><a href="about_blood.jsp" class="nav-item-links">About Blood</a></li>
            </ul>

            <!-- Section button -->
            <a href="donors.jsp" class="header-btn">Donate Blood</a>

            <!-- hamburger icon -->
            <div class="toggle-btn">
                <i class="fa-solid fa-bars"></i>
            </div>
        </div>
    </header>
</section>
  <!-- end of header hero section -->
  
  
   <!-- Main-Container-Area -->
<div class="main-containent-Area">
  <!-- Image Container -->
  <div class="image-container">
    <!-- Insert your image here -->
    <img src="hero_image.jpg" alt="Your Image">
  </div>
  <!-- Main Container Start -->
  <div class="mca-sub-container">
    <!-- Sub Container Heading -->
    <div class="mca-content">
      <div class="mca-sub-container-heading">
        <h1 id="mca-sub-container-heading">
          Be a Hero: Donate Blood, Save Lives
        </h1>
      </div>
      <!-- Sub Container Paragraph -->
      <p id="mca-sub-container-para">
        Join us in our mission to provide life-saving blood to those in need. Experience isn't just a number at Apexion. Our specialists are dedicated to making a difference in people's lives through blood donation. Your contribution can help save lives and bring hope to those in need.
      </p>
    </div>
    <!-- Sub Container Heading -->
  </div>
  <!-- Main Container End -->
</div>
<!-- Main-Container-Area -->


  
  <!-- What-Makes-Us-Different -->
  <div class="wmud-Container">
    <!-- What Make Us Different Heading -->
    <h1 id="wmud-Sub-Container-Heading">Why Choose Us?</h1>
  </div>
  <div>
    <div class="Cards-Container">
      <!-- Card 1 Start -->
      <div class="Card-Container" id="Card-02">
        <h1 id="card-heading">Community Engagement</h1>
        <p id="card-paragraph">
          Join our community of donors dedicated to making a difference.
        </p>
      </div>
      <!-- Card 1 End -->
      <!-- Card 2 Start -->
      <div class="Card-Container" id="Card-03">
        <h1 id="card-heading">24/7 Support</h1>
        <p id="card-paragraph">
          Access round-the-clock support and resources for donors.
        </p>
      </div>
      <!-- Card 2 End -->
    </div>
  <!-- What-Makes-Us-Different -->

  <!-- Other-Expertise-Highlight-Div -->
  <div class="BEHC-Container">
    <!-- Beyond Experience Highlight Heading -->
    <h1 id="BEHC-Heading"><span style="color: #b30000;">Beyond experience</span>, we are driven by:</h1>
  </div>
  <!-- Other-Expertise-Highlight-Div -->
  <div class="BEHC-Qualities-Container">
    <!-- Beyond Experience Highlight Sub Container -->
    <div class="BEHC-Qualities-Sub-Container">
      <!-- Quality 1 -->
      <div class="BEHC-Qualities" id="quality-01">
        <h1 class="quality-line-Heading">Accurate Inventory</h1>
        <p id="quality-line-props">
          We maintain an accurate inventory of blood products to ensure availability when needed most.
        </p>
      </div>
      <!-- Quality 1 -->
      <!-- Quality 2 -->
      <div class="BEHC-Qualities" id="quality-02">
        <h1 class="quality-line-Heading">Efficient Distribution</h1>
        <p id="quality-line-props">
          We utilize efficient distribution systems to deliver blood products to hospitals and medical facilities promptly.
        </p>
      </div>
      <!-- Quality 2 -->
      <!-- Quality 3 -->
      <div class="BEHC-Qualities" id="quality-03">
        <h1 class="quality-line-Heading">Safety Standards</h1>
        <p id="quality-line-props">
          We adhere to stringent safety standards to ensure the quality and safety of donated blood.
        </p>
      </div>
      <!-- Quality 3 -->
      <!-- Quality 4 -->
      <div class="BEHC-Qualities" id="quality-04">
        <h1 class="quality-line-Heading">Collaborative Partnerships</h1>
        <p id="quality-line-props">
          We foster collaborative partnerships with hospitals, donors, and community organizations to enhance blood donation efforts.
        </p>
      </div>
      <!-- Quality 4 -->
    </div>
    <!-- Beyond Experience Highlight Sub Container -->
  </div>

  <!-- Other-Expertise-Highlight-Div -->

  <footer class="footer-section">
        <div class="footer-container">

            <!-- Column1 -->
            <div class="footer-logo-box">
                <a href="index.html" class="logo">
                    <img src="blood_bank_logo.jpeg" alt="Blood Bank Logo" class="logo-icon">
                    <span class="logo-text">Blood Bank</span>
                </a>
            </div>

            <!-- Column2 -->
            <div class="footer-contact-box">
                <div class="footer-contact-title-box">
                    <h3 class="footer-contact-title">
                        Contact us at
                    </h3>
                </div>
                <div class="footer-contact-detail">
                    <i class="fa-solid fa-envelope"></i>
                    <p class="footer-email-icon">
                        contact@bloodbank.com
                    </p>
                </div>
            </div>

            <!-- Column3 -->
            <div class="footer-copyright-box">
                <div class="copyright-icon-box">
                    <i class="fa-regular fa-copyright"></i>
                </div>
                <h3 class="copyright">
                    Copyright by <span>Blood Bank</span>
                </h3>
            </div>

        </div>
    </footer>

<!-- javascript for dropDownMenu -->
<script>
  const toggleBtn = document.querySelector('.toggle-btn');
  const toggleIcon = document.querySelector('.toggle-btn i');
  const dropDownMenu = document.querySelector('.header-drop-down');

  toggleBtn.onclick = function () {
      dropDownMenu.classList.toggle('open');

      const isOpen = dropDownMenu.classList.contains('open');

      toggleIcon.classList = isOpen ? 'fa-solid fa-xmark' : 'fa-solid fa-bars';
  }
</script>

  </body>
</html>
