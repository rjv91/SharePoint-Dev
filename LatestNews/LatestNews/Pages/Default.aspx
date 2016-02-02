<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
    
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link rel="shortcut icon" type="image/x-icon" href="../Images/favicon.ico" />
	<link rel="stylesheet" href="../Content/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="../Content/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' />
    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script src="../Scripts/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="../Scripts/functions.js" type="text/javascript"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div id="wrapper">
		
		<!-- top-nav -->
		<nav class="top-nav">
			<div class="shell">
				<a href="#" class="nav-btn">HOMEPAGE<span></span></a>
				<span class="top-nav-shadow"></span>
				<ul>
					<li class="active"><span><a href="#">home</a></span></li>
					<li><span><a href="#">services</a></span></li>
					<li><span><a href="#">projects</a></span></li>
					<li><span><a href="#">solutions</a></span></li>
					<li><span><a href="#">jobs</a></span></li>
					<li><span><a href="#">blog</a></span></li>
					<li><span><a href="#">contacts</a></span></li>
				</ul>
			</div>
		</nav>
		<!-- end of top-nav -->
			<!-- header -->
			<header id="header">
				
				<div class="header-center">
					<div class="header-top"></div>
					<!-- shell -->
					<div class="shell">
						<div class="header-inner">
							<!-- header-cnt -->
							<div class="header-cnt">
								<h1 id="logo"><a href="#">Simple</a></h1>		
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quam ante, egestas tristique consequat ut, pulvinar a ante.
									Donec commodo eros at felis tempor at porttitor mauris adipisci morbi in velit sapien modo eros at felis te adispicing ulvinar a ante donec commodo eros at felis.
								</p>

								<a href="#" class="blue-btn">GET STARTED NOW</a>
							</div>
							<!-- end of header-cnt -->
							<!-- slider -->
							<div class="slider-holder">
								<div class="flexslider">
									<ul class="slides">
										<li><img src="../Images/slide-img.png" alt="" /></li>
									
									</ul>
								</div>
							</div>
							<!-- end of slider -->
							<div class="cl">&nbsp;</div>
						</div>
						<div class="cl">&nbsp;</div>
					</div>
					<!-- end of shell -->	
					<div class="header-bottom"></div>
				</div>
			</header>
			<!-- end of header -->
			<!-- main -->
			<div class="main">
				<span class="shadow-top"></span>
				<!-- shell -->
				<div class="shell">
					<div class="container">
						<!-- testimonial -->
						<section class="testimonial">
							<h2>Responsive CSS Template with jQuery Slider</h2>
							<p><strong>“</strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. <span class="mobile">Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu tempus ut, mollis et libero"</span></p>
						</section>
						<!-- testimonial -->

						<section class="blog">
							<!-- content -->
							<div class="content">
								<img src="../Images/i-img.png" alt=""  class="alignleft"/>
								<div class="cnt">
									<h3>We Guarantee Commitment &amp; Quality</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum consequat. Nam leo libero, scelerisque tincidunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque. Praesent purus eros, egestas eu temp</p>
									<ul>
										<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></li>
										<li><a href="#">Cras molestie condimentum consequat. </a></li>
										<li><a href="#">Nam leo libero, scelerisque tincidunt commodo id</a></li>
										<li><a href="#">Dae molestie condimentum consequat dolor</a></li>
									</ul>
								</div>
							</div>
							<!-- end of content -->

							<!-- sidebar -->
							<aside class="sidebar">
								<!-- widget -->
								<div class="widget">
									<h3>Latest Blog Posts</h3>
									<ul>
										<li>
											<div class="img-holder">
												<a href="#"><img src="../Images/post-img.png" alt="" /></a>
											</div>
											
											<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em><span>02.02.2012</span></a> </p>
										</li>
										<li>
											<div class="img-holder">
												<a href="#"><img src="../Images/post-img2.png" alt="" /></a>
											</div>
											<p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em><span>01.02.2012</span></a> </p>
										</li>
										<li>
											<div class="img-holder">
												<a href="#"><img src="../Images/post-img3.png" alt="" /></a>
											</div>
											<p>
											<a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <em class="mobile"> idunt commodo id, hendrerit vitae orci. Suspendisse eget nibh turpis. Sed at accumsan neque praesent purus </em> 
											<span>30.01.2012</span></a></p>
										</li>
									</ul>
									<div class="cl">&nbsp;</div>
								</div>
									<a href="#" class="view">View All</a>
								<!-- end of widget -->
							</aside>
							<!-- end of sidebar -->
							<div class="cl">&nbsp;</div>
						</section>	
						
						<!-- cols -->
						<section class="cols">
							<div class="col">
								<h3>Tableless Construction</h3>
								<img src="../Images/cols-img.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="col">
								<h3>We’re Hiring</h3>
								<img src="../Images/cols-img2.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="col">
								<h3>Our Partners</h3>
								<img src="../Images/cols-img3.png" alt="" class="alignleft"/>
								<div class="col-cnt">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie condimentum conse am leo libero, samet dor.</p>
								</div>
								<a href="#" class="view">View More</a>
							</div>
							<div class="cl">&nbsp;</div>
						</section>
						<!-- end of cols -->
					</div>
				<!-- end of shell -->
				</div>
				<!-- end of container -->
			</div>
			<!-- end of main -->
		</div>	
		<!-- footer-push -->
		<div id="footer-push"></div>
		<!-- end of footer-push -->
	
	<!-- end of wrapper -->
	<!-- footer -->
	<div  id="footer">
		<span class="shadow-bottom"></span>
		<!-- footer-cols -->
		<div class="footer-cols">
			<!-- shell -->
			<div class="shell">
				<div class="col">
					<h3><a href="#">Solutions</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Services</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Portfolio</a></h3>
					<div class="col-cnt">
						<ul>
							<li><a href="#">Lorem lipsum dolor </a></li>
							<li><a href="#">Ame tleo libero dolor</a></li>
							<li><a href="#">Aidpispicing lipsum </a></li>
							<li><a href="#">Commodo id amet </a></li>
							<li><a href="#">Sectetur amet au car </a></li>
						</ul>
					</div>
				</div>
				<div class="col">
					<h3><a href="#">Contact Us</a></h3>
					<div class="col-cnt">
						<p><strong>Email:</strong> <a href="#">info@yourwebsitename.com</a></p>
						<p><strong>Phone:</strong> 655-606-111</p>
						<p><strong>Adress:</strong> East Pixel Bld. 99, Creative City 9000,Republic of Design Email:</p>	
					</div>
				</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- end of shell -->
		</div>
		<!-- end of footer-cols -->
		<div class="footer-bottom">
			<div class="shell">
				<nav class="footer-nav">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Projects</a></li>
						<li><a href="#">Solutions</a></li>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
					<div class="cl">&nbsp;</div>
				</nav>
				<p class="copy">&copy; Copyright 2012<span>|</span>Sitename. Design by <a href="http://chocotemplates.com" target="_blank">ChocoTemplates.com</a></p>
			</div>
		</div>
	</div>
	<!-- end of footer -->


</asp:Content>
