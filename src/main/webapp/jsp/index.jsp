<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String base = (String)application.getAttribute("base");
  %>
  <!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>Moffat Bay Lodge</title>
   <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
    <style>
        
        body {
            margin: 0;
            padding: 0;
        }
        
        /* Header */
        .header {
            background-image: url('images/sunset_landing_page.jpg');
            background-size: cover;
            color: white;
            text-align: center;
            padding: 50px 20px;
            height: 100vh;
        }
        .header h1 {
            margin: 0;
            font-size: 2.5em;
            color: white;
        }
        .header img {
        	width: 400px;
        }
        .header nav {
            margin-top: 20px;
        }
        .header nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
            font-size: 2em;
        }
        .header nav a:hover {
            text-decoration: underline;
        }
        .header .cta-button {
            display: inline-block;
            margin-top: 20px;
            padding: 15px 30px;
            background-color: #FFA500;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            text-decoration: none;
        }
        
        /* Hero */
        .hero-section {
		    display: flex;
		    justify-content: center;
		    align-items: flex-start;
		    height: 100vh;
		    background-size: cover;
		    background-position: center;
		    color: white;
		    text-align: center;
		    position: relative;
		}

		.hero-section-content {
		    margin-top: 33vh;
		    transform: translateY(-50%);
		}
        
        /* About Section */
        .about {
            padding: 50px 20px;
            background-color: #fff;
            text-align: center;
        }
        .about h2 {
        	font-size: 2.5em;
            color: #007f66;
        }
        .about-content{
        	display: flex;
        }
        .about p {
            max-width: 800px;
            margin: 0 auto;
            line-height: 1.6;
        }
		.left-side, .right-side {
		    flex: 1; 
		    padding: 20px 80px;
		    box-sizing: border-box;
		}
        
        /* Learn More Button */
        .learn-more {
            margin: 30px 0;
        }
        .learn-more a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #FFA500;
            color: white;
            font-size: 1.2em;
            text-decoration: none;
            border-radius: 5px;
        }
        
        /* Rooms and Activities Section */
        .rooms-activities {
            display: flex;
            justify-content: space-around;
            padding: 50px 20px;
            background-color: #f4f4f9;
        }
        .rooms-activities div {
            width: 45%;
            text-align: center;
        }
        .rooms-activities img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
        .rooms-activities h3 {
            color: #007f66;
            margin: 20px 0 10px;
        }
        .rooms-activities p {
            color: #555;
        }
        .reserve-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #FF6347;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
    <!-- Header -->
    <div class="header">
        <img src="images/logo.png" alt="Moffat Bay Lodge Logo">
        <section class="hero-section">
        	<div class="hero-section-content">
		        <h1>Escape to Nature's Embrace at Moffat Bay Lodge</h1>
		        <a href="<%=base%>?action=reserve" class="cta-button">BOOK NOW</a>
	        </div>
        </section>
    </div>

    <!-- About Section -->
    <section class="about" id="about">
    	<div>
	        <h2>About Moffat Bay Lodge</h2>
        </div>
        <div class="about-content">
        	<div class="left-side">
		        <p>
		            Nestled on Joviedsa Island, Moffat Bay Lodge offers a tranquil retreat within the breathtaking landscape of the San Juan Islands.
		        </p> 
		        <p>
		        	Known for their rugged coastlines, lush evergreen forests, and rich cultural heritage, these islands are a haven for outdoor enthusiasts and relaxation seekers alike.
		        </p>
		        <p>
		        	Moffat Bay, with its calm waters and panoramic views, provides the perfect escape from the bustle of everyday life.
		        </p>
	        </div>
	        <div class="right-side">
		        <p>
		            Located off the coast of Washington State, the San Juan Islands are renowned for their unique marine environment, vibrant sunsets, and abundant wildlife, including orcas, eagles, and seals.
		        </p>
		        <p>
		        	Our lodge is thoughtfully designed to immerse guests in the natural beauty of this pristine region, while offering a range of amenities for a comfortable stay. 
		        </p>
		        <p>
		        	From water activities to guided tours of local cultural landmarks, Moffat Bay Lodge provides a sanctuary for guests to experience the magic of the islands at their own pace.
		        </p>
	        </div>
        </div>
        <div class="learn-more">
            <a href="<%=base%>?action=about">Learn More</a>
        </div>
    </section>

    <!-- Rooms and Activities Section -->
    <section class="rooms-activities">
        <div>
            <img src="images/lodge1.jpeg" alt="Beautiful Room View">
            <h3>Beautiful Rooms</h3>
            <p>Breathtaking rooms and seaside adventures await you at Moffat Bay Lodge!</p>
            <a href="<%=base%>?action=reserve" class="reserve-button">Reserve Your Room Today!</a>
        </div>
        <div>
            <h3>Seaside Activities to Explore</h3>
            <p>Create a memorable experience at our beautiful location on Earth.</p>
            <img src="images/beachfamily.jpg" alt="Seaside Activities">
        </div>
    </section>
    <jsp:include page="footer.jsp" flush="true"/>
</body>
</html>