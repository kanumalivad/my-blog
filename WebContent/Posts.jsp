<%@page import="com.kanumalivad.model.Posts"%>
<%@page import="com.kanumalivad.model.User"%>
<%@page import="com.kanumalivad.model.Comments"%>
<%@page import="com.kanumalivad.service.GetData" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.ArrayList" %>
<%@page import ="java.util.List" %>


<%
	
	int id=Integer.parseInt(request.getParameter("id").toString());
	String next="true";
	GetData data=new GetData();
	List<Posts> list =data.getListOfPosts();
	Posts p1=null;
	Posts p2=null;
	Posts p3=null;
	if(id*3-3<list.size())
		 p1=list.get(id*3-3);
	else
		next="false";
	if(id*3-2<list.size())
		 p2=list.get(id*3-2);		
	else
		next="false";
	if(id*3-1<list.size())
		 p3=list.get(id*3-1);		
	else
		next="false";
	if(id*3<=list.size())
		next="true";

	double last=(double)list.size()/3;	
	Double aa=Math.ceil(last);
	
	int a=aa.intValue();
	int b=2,n=3,p=1;
	if(id>=3)
	{	
		b=id;p=id-1;n=id+1;	}
	id=id+1;
	
	if(id==a+1)
	{
		n=id-1;b=id-2;p=id-3;
	}
	
	List<Posts> rp=data.getRecentPost();
	Posts r1=rp.get(0);
	Posts r2=rp.get(1);
	Posts r3=rp.get(2);
	
	
	
	
	
	
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link type="text/css" media="all" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/boostrap-files/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/slider.css">
    <link type="text/css" media="all" href="assets/css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link type="text/css" media="all" href="assets/css/contact.form.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/colour-scheme/color-blue.css" rel="stylesheet" type="text/css" data-color="color-blue" media="all" id="stylesheet-new">
    <link type="text/css" media="all" href="assets/css/respons.css" rel="stylesheet" />
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" href="assets/img/favicons/apple-touch-icon.png" />
    <link rel="shortcut icon" href="assets/img/favicons/favicon.png" />
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>

</head>
<body>

<div class="animationload">
    <div class="loader"></div>
</div>

<div id="wraper">

    <header class="head-blog">
        <div class="slider_container">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="head">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xs-8 col-sm-10 col-lg-10">
                                        <img class="logo-page" src="assets/img/blog_l.png" alt="Ukieweb">
                                        <h2 class="title">Blog</h2>
                                        <h4 class="sub-title">I write here my thoughts</h4>
                                    </div>
                                    <div class="col-xs-2 col-sm-1 col-lg-1 text-right">
                                        <ul class="flex-direction-nav"><li><a class="next" href="#"></a></li></ul>
                                    </div>
                                    <div class="col-xs-2 col-sm-1 col-lg-1 text-right">
                                        <a href="Index.jsp" class="btn-close hover-animate"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="head search-head search-blog">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xs-10 col-sm-11 col-lg-11">
                                        <form action="#" method="">
                                            <input type="text" name="search" class="search-input" placeholder="Search" value="" />
                                            <input type="submit" class="btn-search" value="" />
                                        </form>
                                    </div>
                                    <div class="col-xs-2 col-sm-1 col-lg-1 text-right">
                                        <ul class="flex-direction-nav"><li><a class="prev" href="#"></a></li></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>



    <section class="blog padding-block">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-8 padding-bottom">
                 <% if(p1!=null){ List<Comments> commentList1=data.getCommentsByPostId(p1.getPid()); 
	int commentsp1=commentList1.size();%>
                    <div class="post">
                        <div class="photo">
                       
                            <img src=<%="images/"+p1.getImg() %> alt="UkieWeb">
                        </div>
                        <h3 class="title title-blog"><%=p1.getTitle() %></h3>
                        <div class="entry-byline">
                            <i class="fa fa-user"></i>
                            <span class="entry-author right-border">
                                <a href="#" title="Posts by Theme Admin" rel="author" >
                                    <span>Kanu Malivad</span>
                                </a>
                            </span>
                            <i class="fa fa-clock-o"></i>
                            <time class="entry-published right-border"> <%=new SimpleDateFormat("DD/MM/YYYY").format(p1.getDate()) %></time>
                            <i class="fa fa-comment"></i>
                            <span class="comments-link"><%=commentsp1 %> Comments</span>
                        </div>
                        <%=p1.getContent() %><br>
                        <a href="Fullpost.jsp?page=<%=id-1 %>&pid=<%=p1.getPid() %>&title=<%=p1.getTitle() %>" class="btn hover-animate btn-color-hover">Read More</a>
                    </div>
                    <%} %>
                    <% if(p2!=null) {List<Comments> commentList2=data.getCommentsByPostId(p2.getPid()); 
	int commentsp2=commentList2.size();%>
                    <div class="post">
                    
                        <div class="photo">
                            <img src="<%="images/"+p2.getImg() %>" alt="UkieWeb">
                        </div>
                        <h3 class="title title-blog"><%=p2.getTitle() %></h3>
                        <div class="entry-byline">
                            <i class="fa fa-user"></i>
                            <span class="entry-author right-border">
                                <a href="#" title="Posts by Theme Admin" rel="author" >
                                    <span>Kanu Malivad</span>
                                </a>
                            </span>
                            <i class="fa fa-clock-o"></i>
                            <time class="entry-published right-border"><%=new SimpleDateFormat("DD/MM/YYYY").format(p2.getDate()) %></time>
                            <i class="fa fa-comment"></i>
                            <span class="comments-link"><%=commentsp2 %> Comments</span>
                        </div>
                       <%=p2.getContent() %>
                        <a href="Fullpost.jsp?page=<%=id-1 %>&pid=<%=p2.getPid() %>&title=<%=p2.getTitle() %>" class="btn hover-animate btn-color-hover">Read More</a>
                    </div>
                    <%} %>
                    <%if(p3!=null) {List<Comments> commentList3=data.getCommentsByPostId(p3.getPid()); 
	int commentsp3=commentList3.size();%>
                    <div class="post last">
                    
                        <div class="photo">
                            <img src="<%="images/"+p3.getImg() %>" alt="UkieWeb">
                        </div>
                        <h3 class="title title-blog"><%=p3.getTitle() %></h3>
                        <div class="entry-byline">
                            <i class="fa fa-user"></i>
                            <span class="entry-author right-border">
                                <a href="#" title="Posts by Theme Admin" rel="author" >
                                    <span>Kanu Malivad</span>
                                </a>
                            </span>
                            <i class="fa fa-clock-o"></i>
                            <time class="entry-published right-border"><%=new SimpleDateFormat("DD/MM/YYYY").format(p3.getDate()) %></time>
                            <i class="fa fa-comment"></i>
                            <span class="comments-link"><%=commentsp3 %> Comments</span>
                        </div>
                        <%=p3.getContent() %>
                        <a href="Fullpost.jsp?page=<%=id-1 %>&pid=<%=p3.getPid() %>&title=<%=p3.getTitle() %>" class="btn hover-animate btn-color-hover">Read More</a>
                    </div>
                    <%} %>
                    <div class="pagination">
                    	
                    
                        <a class="page-numbers <%if(id==p+1){ %>current<%} %>" href="Posts.jsp?id=<%=p %>" ><%=p %></span>
                        <a class="page-numbers <%if(id==b+1){ %>current<%} %>" href="Posts.jsp?id=<%=b %>"><%=b %></a>
                        <a class="page-numbers <%if(id==n+1){ %>current<%} %>" href="Posts.jsp?id=<%=n %>"><%=n %></a>
                        <%if(last>3 && id!=a+1 && id!=a){ %>
                        <span class="page-numbers dots">...</span>
                        <a class="page-numbers <%if(id==(a+1)){ %>current<%} %>" href="Posts.jsp?id=<%=a%>"><%=a%></a>
                       <%} %>
                        <% if(next.equals("true")){ %>
                        <a class="next page-numbers " href="Posts.jsp?id=<%=id %>" >Next »</a>
                        <%} %>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-lg-4">
                    <aside class="widget widget_categories">
                        <h3 class="widget-title">Categories</h3>
                        <ul>
                            <li class="cat-item cat-item-6"><a href="#">Programming</a></li>
                            <li class="cat-item cat-item-8"><a href="#">Designing</a></li>
                            <li class="cat-item cat-item-7"><a href="#">Database</a></li>
                            <li class="cat-item cat-item-1"><a href="#">Others</a></li>
                        </ul>
                    </aside>

                    <aside class="widget widget_recent_entries">
                        <h3 class="widget-title">Recent Posts</h3>
                        <ul>
                           <li><a href="Fullpost.jsp?page=1&pid=<%=r1.getPid()%>&title=<%=r1.getTitle()%>"><%=r1.getTitle() %></a></li>
                            <li><a href="Fullpost.jsp?page=1&pid=<%=r2.getPid()%>&title=<%=r2.getTitle()%>"><%=r2.getTitle() %></a></li>
                            <li><a href="Fullpost.jsp?page=1&pid=<%=r3.getPid()%>&title=<%=r3.getTitle()%>"><%=r3.getTitle() %></a></li>
                        </ul>
                    </aside>

                    <aside class="widget widget_archive">
                        <h3 class="widget-title">Archives</h3>
                        <ul>
                            <li><a href="#">October 2014</a></li>
                            <li><a href="#">September 2014</a></li>
                            <li><a href="#">June 2014</a></li>
                        </ul>
                    </aside>

                    <aside class="widget widget_tag_cloud">
                        <h3 class="widget-title">Tags</h3>
                        <div class="tagcloud">
                            <a href="#" class="hover-animate">Web</a>
                            <a href="#" class="hover-animate">Illustrations</a>
                            <a href="#" class="hover-animate">Graphic design</a>
                            <a href="#" class="hover-animate">Applications</a>
                            <a href="#" class="hover-animate">Photo</a>
                            <a href="#" class="hover-animate">UkieWeb</a>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-phone"></i></span> +38 012-3456-7890
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-paper-plane"></i></span> info@yourdomain.com
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-map-marker"></i></span> 44 King St, Melbourne VIC
                    </a>
                </div>

                <div class="col-xs-12 col-sm-6 col-lg-3 text-right">
                    <span class="copyright">Copyright Â© 2016 All right reserved</span>
                </div>
            </div>
        </div>
    </footer>
</div>

<a href="#" class="btn hover-animate scrollToTop"><i class="fa fa-angle-up"></i></a>

<div class="style-open-form animated hi-icon-effect-8">
    <i class="hi-icon fa fa-envelope-o ukie-icons hover-animate hi-icon-mobile"></i>
</div>
<div class="style-contact-form style-off-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12 ">
            <div class="contact-form">
                <div class="btn-close-form">
                </div>
                <h3 class="title title-contact">Contact Me</h3>
                <p>Use this form to tell me about your project goals and needs. I will be in touch within 24 hours.</p>
                <form action="https://ukieweb.com/envato/ukiecard/style1/assets/php/contact.php" id="contact-form-panel" method="post">
                    <input type="text" id="user-name-panel" name="user-name" value="" placeholder="Name" />
                    <input type="email" id="user-email-panel" name="user-email" value="" placeholder="Email" />
                    <input type="hidden" id="user-status-panel" name="user-status" value="1"  />
                    <textarea id="user-message-panel" name="user-message" placeholder="Message"></textarea>
                    <div class="footer-form">
                        <input type="submit" id="submit-btn-panel" class="btn btn-color hover-animate"  value="Send Message" />
                        <div class="info-message-form">
                            <p>Please fill out all the fields!</p>
                            <span class="close-msg"><i class="fa fa-close"></i></span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="assets/boostrap-files/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.appear.js" type="text/javascript"></script>
<script src="assets/js/jquery.mixitup.min.js" type="text/javascript"></script>
<script src="assets/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="assets/js/jquery.inview.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.knob.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
<script src="assets/js/jquery.ratyli.js" type="text/javascript"></script>
<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
<script src="assets/js/contact_scripts.js" type="text/javascript"></script>
<script src="assets/js/scripts.js" type="text/javascript"></script>

</body>
</html>