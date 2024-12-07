<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Nearby Attractions</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
    <link rel="stylesheet" href="/MoffatBay/css/Attractions.css" type="text/css"/>
</head>
<body>
    <jsp:include page="TopMenu.jsp" flush="true"/>
    <div class="hero">
        <div class="hero-text">
            <h1>Discover Nearby Attractions</h1>
            <p>Explore the best of Moffat Bay!</p>
        </div>
    </div>
    <div class="content container">
        <h2>Exciting Activities and Attractions</h2>
        <p>Here are some must visit attractions and activities near Moffat Bay:</p>
        <div class="attractions-list">
            <div class="attraction">
                <img src="images/about/fishing.jpg" alt="Fishing">
                <h3>Fishing</h3>
                <p>Experience the thrill of fishing in the serene waters of Moffat Bay. Perfect for beginners and pros alike!</p>
            </div>
            <div class="attraction">
                <img src="images/about/kayaking.jpg" alt="Kayaking">
                <h3>Kayaking</h3>
                <p>Paddle through picturesque waterways and enjoy breathtaking views of nature.</p>
            </div>
            <div class="attraction">
                <img src="images/about/shops.jpeg" alt="Local Shops">
                <h3>Local Shops</h3>
                <p>Browse charming boutiques offering unique handmade crafts and souvenirs.</p>
            </div>
            <div class="attraction">
                <img src="images/about/birdwatching.png" alt="Bird Watching">
                <h3>Bird Watching</h3>
                <p>Spot a variety of birds in their natural habitats, a paradise for nature enthusiasts.</p>
            </div>
            <div class="attraction">
                <img src="images/about/trail.jpg" alt="Scenic Trails">
                <h3>Scenic Trails</h3>
                <p>Hike along stunning trails that wind through forests and along the coastline.</p>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" flush="true"/>

</body>
</html>