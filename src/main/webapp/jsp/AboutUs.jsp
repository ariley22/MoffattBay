<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>About Moffat Bay Lodge</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  <link rel="stylesheet" href="/MoffatBay/css/AboutUs.css" type="text/css"/>
</head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>

<div class="content">
   <header class="hero">
    <div class="hero-text">
      <h1>Welcome to MoffatBay Lodge</h1>
      <p>Your perfect escape to tranquility and adventure.</p>
    </div>
  </header>

  <section id="about">
    <div class="container">
      <h2>About MoffatBay Lodge</h2>
      <p>
        Tucked away on the serene shores of Moffat Bay, our lodge is a family-owned retreat that has welcomed guests for over 30 years. 
        Surrounded by majestic mountains, pristine waters, and abundant wildlife, MoffatBay Lodge offers a harmonious blend of comfort and natural beauty.
      </p>
      <p>
        Whether you're seeking a peaceful getaway or an action-packed adventure, MoffatBay Lodge is the perfect destination. 
        Our dedicated team is passionate about creating memorable experiences for every guest, with personalized service and a welcoming atmosphere.
      </p>
    </div>
    <div class="image-gallery">
      <img src="images/about/sunrise.png" alt="Sunrise over the lodge">
      <img src="images/about/aboutus3.png" alt="Guests enjoying a lakeside evening">
      <img src="images/about/aboutus2.jpg" alt="Aerial view of Moffat Bay">
    </div>
  </section>

  <section id="amenities">
    <div class="container">
      <h2>Our Amenities</h2>
      <ul>
        <li>Luxurious cabins with lake and mountain views</li>
        <li>Fine dining featuring locally-sourced cuisine</li>
        <li>Full-service spa with massage therapy and sauna</li>
        <li>Private docks and boat rentals</li>
        <li>Outdoor fire pits and BBQ areas</li>
        <li>Complimentary Wi-Fi and business center</li>
      </ul>
    </div>
    <div class="image-gallery">
      <img src="images/about/cabin.jpg" alt="Luxurious cabin interior">
      <img src="images/about/dining.jpg" alt="Fine dining restaurant">
      <img src="images/about/spa.jpg" alt="Relaxing spa area">
    </div>
  </section>

  <section id="attractions">
    <div class="container">
      <h2>Nearby Attractions</h2>
      <p>Explore the wonders of the region with these must-visit attractions:</p>
      <ul>
        <li>MoffatBay National Park – Hiking trails and scenic lookouts</li>
        <li>Crystal Lake – Perfect for swimming and paddleboarding</li>
        <li>Eagle Point – A famous spot for birdwatching</li>
        <li>Charming downtown shops and galleries</li>
        <li>Local wineries and craft breweries</li>
      </ul>
    </div>
    <div class="image-gallery">
      <img src="images/about/trail.jpg" alt="Scenic lookout">
      <img src="images/about/birdwatching.png" alt="Birdwatching at Eagle Point">
      <img src="images/about/shops.jpeg" alt="Downtown shops">
    </div>
  </section>

  <section id="activities">
    <div class="container">
      <h2>Exciting Activities</h2>
      <p>At MoffatBay Lodge, every day is an opportunity for adventure:</p>
      <ul>
        <li>Guided kayaking and canoeing tours</li>
        <li>Fishing expeditions with experienced guides</li>
        <li>Nature photography workshops</li>
        <li>Evening bonfires with s’mores</li>
        <li>Seasonal events like holiday festivals and wildlife tours</li>
      </ul>
    </div>
    <div class="image-gallery">
      <img src="images/about/kayaking.jpg" alt="Kayaking adventures">
      <img src="images/about/fishing.jpg" alt="Fishing on the bay">
      <img src="images/about/bonfire.png" alt="Bonfire at dusk">
    </div>
  </section>

    <jsp:include page="footer.jsp" flush="true"/>

</div>
</body>
</html>