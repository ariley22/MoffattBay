<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Contact Us</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  <link rel="stylesheet" href="/MoffatBay/css/ContactUs.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
  <div class="contact_us_6">
  <div class="responsive-container-block container">
    <form action="/MoffatBay/mbay" class="form-box" method="POST">
    <input type="hidden" name="action" value="contactUsSummary"/>
      <div class="container-block form-wrapper">
        <div class="mob-text">
          <p class="text-blk contactus-head">
            Get in Touch
          </p>
          <p class="text-blk contactus-subhead">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis diam lectus sapien.
          </p>
        </div>
        <div class="responsive-container-block" id="i2cbk">
          <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="i10mt-3">
            <p class="text-blk input-title">
              FIRST NAME
            </p>
            <input class="input" id="ijowk-3" name="FirstName" placeholder="Please enter first name...">
          </div>
          <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="ip1yp">
            <p class="text-blk input-title">
              EMAIL
            </p>
            <input class="input" id="ipmgh-3" name="Email" placeholder="Please enter email...">
          </div>
          <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="ih9wi">
            <p class="text-blk input-title">
              PHONE NUMBER
            </p>
            <input class="input" id="imgis-3" name="PhoneNumber" placeholder="Please enter phone number...">
          </div>
          <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="i634i-3">
            <p class="text-blk input-title">
              WHAT DO YOU HAVE IN MIND ?
            </p>
            <textarea class="textinput" id="i5vyy-3" placeholder="Please enter query..."></textarea>
          </div>
        </div>
        <button class="submit-btn" id="w-c-s-bgc_p-1-dm-id-2">
          Submit
        </button>
      </div>
    </form>
    <div class="responsive-cell-block wk-desk-7 wk-ipadp-12 wk-tab-12 wk-mobile-12" id="i772w">
      <div class="map-part">
       <section id="contact-us">
  <div class="container">
    <h2>Contact Us</h2>
    <p>We’d love to hear from you! Reach out to us using the details below:</p>
    
    <div class="contact-details">
      <div class="contact-item">
        <h3>Address:</h3>
        <p>123 Island View Road Joviedsa Island, San Juan Islands</p>
      </div>
      
      <div class="contact-item">
        <h3>Phone:</h3>
        <p><a href="tel:+16125551234">(555) 123-4567</a></p>
      </div>
      
      <div class="contact-item">
        <h3>Email:</h3>
        <p><a href="mailto:info@moffatbaylodge.com">info@moffatbaylodge.com</a></p>
      </div>
      
      <div class="contact-item">
        <h3>Follow Us:</h3>
        <ul class="social-media">
          <li><a href="https://facebook.com" target="_blank">Facebook</a></li>
          <li><a href="https://twitter.com" target="_blank">Twitter</a></li>
          <li><a href="https://instagram.com" target="_blank">Instagram</a></li>
          <li><a href="https://linkedin.com" target="_blank">LinkedIn</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
        
        <div class="map-box container-block">
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>