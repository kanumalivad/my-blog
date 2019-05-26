<%@page import="com.kanumalivad.service.GetData" %>
<%@page import="com.kanumalivad.model.Posts"%>
<%@page import="com.kanumalivad.model.Comments"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.*" %>

<%
	GetData data=new GetData();
	String title =request.getParameter("title");
	int pid=Integer.parseInt(request.getParameter("pid").toString());
	int PreviousPage=Integer.parseInt(request.getParameter("page").toString());
	
	Posts p=data.getPostByTitle(title,pid);
	List<Comments> commentList=data.getCommentsByPostId(pid);
	String reply=" reply-post";
	
	List<Posts> rp=data.getRecentPost();
	Posts r1=rp.get(0);
	Posts r2=rp.get(1);
	Posts r3=rp.get(2);
	
%>


<!DOCTYPE html>
<html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>Blog | ukieCard</title>
  
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- Font Awesome -->
    <link type="text/css" media="all" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Libs CSS -->
    <link type="text/css" media="all" href="assets/boostrap-files/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Important Owl stylesheet -->
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/slider.css">
    <!-- Animate CSS -->
    <link type="text/css" media="all" href="assets/css/animate.css" rel="stylesheet" />
    <!-- Template CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
    <link type="text/css" media="all" href="assets/css/contact.form.css" rel="stylesheet" />
    <link type="text/css" media="all" href="assets/css/style.css" rel="stylesheet" />
    <!-- Switcher CSS -->
    <link href="assets/css/colour-scheme/color-blue.css" rel="stylesheet" type="text/css" data-color="color-blue" media="all" id="stylesheet-new">
    <!-- Responsive CSS -->
    <link type="text/css" media="all" href="assets/css/respons.css" rel="stylesheet" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" href="assets/img/favicons/apple-touch-icon.png" />
    <link rel="shortcut icon" href="assets/img/favicons/favicon.png" />
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<script src="assets/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
$(document).on("click", ".comment-reply-link", function () {
    var replyid = $(this).data('id');
    $(".modal-body #replyid").val( replyid );
   $('#addBookDialog').modal('show');
});
</script>
</head>
<body>

<!-- Load page -->
<div class="animationload">
    <div class="loader"></div>
</div>
<!-- End load page -->

<div id="wraper">

    <!-- Start Head section -->
    <header class="head-blog">
        <div class="slider_container">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="head">
                            <!-- start container -->
                            <div class="container">
                                <!-- start row -->
                                <div class="row">
                                    <div class="col-xs-8 col-sm-10 col-lg-10">
                                        <img class="logo-page" src="assets/img/blog_l.png" alt="Ukieweb">
                                        <!-- Title Page -->
                                        <h2 class="title">Blog</h2>
                                        <!-- Description Page -->
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
                            <!-- start container -->
                            <div class="container">
                                <!-- start row -->
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
        <!-- start container -->
        <div class="container">
            <!-- start row -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-8">
                    <!-- start post -->
                    <div class="post one-post">
                        <!-- start photo -->
                        <div class="photo">
                            <img src=<%="images/"+p.getImg() %> alt="UkieWeb">
                        </div>
                        <!-- end photo -->
                        <!-- start title post -->
                        <h3 class="title title-blog"><%=p.getTitle() %></h3>
                        <!-- end title post -->
                        <div class="entry-byline">
                            <i class="fa fa-user"></i>
                            <span class="entry-author right-border">
                                <a href="#" title="Posts by Theme Admin" rel="author" >
                                    <span>Kanu Malivad</span>
                                </a>
                            </span>
                            <i class="fa fa-clock-o"></i>
                            <time class="entry-published right-border"><%=new SimpleDateFormat("DD/MM/YYYY").format(p.getDate()) %></time>
                            <i class="fa fa-comment"></i>
                            <span class="comments-link"><%=commentList.size() %> Comments</span>
                        </div>
                        <%=p.getContent() %>
                        <!-- start post pagination -->
                        <div class="post-pagination">
                                
                            <a href="Posts.jsp?id=<%=PreviousPage %>" class="btn btn-color-hover hover-animate next">Back</a>
                        </div>
                        <div class="clearfix"></div>
                        <!-- end post pagination -->


                      <!-- start post comments -->
                        <div class="post-comments">
                            <h3><%=commentList.size() %> Comments</h3>
                            <div class="post-content-txt">
									
								<%for(Comments c:commentList){ %>
									<%if(c.getReplayid()==0){ %>
                                <!-- start post comment -->
                                <div class="post-comment">
                                    <div class="col-md-2 col-xs-2 post-user-info text-center">
                                        <div class="user-img">
                                            <img src="assets/img/comment_foto.png" alt="UkieWeb">
                                        </div>
                                        <div class="user-name"><%=c.getName() %></div>
                                    </div>
                                    <div class="col-md-10 col-xs-10 post-comment-txt">
                                        <span class="comment-time"><%=c.getDate() %></span>
                                        <span class="reply">
                                            <a class="comment-reply-link hover-animate" data-toggle="modal" href="#myModal" data-id="<%=c.getCid()%>"><i class="fa fa-reply"></i> Reply</a>
                                            
                                        </span>
                                        <span class="clearfix"></span>
                                        <p><%=c.getContent() %></p>
                                    </div>
                                </div>
                                <!-- end post comment -->
                                <div class="clearfix"></div>
									
								<%for(Comments rc:commentList){ %>	
                              	<%if(c.getCid()==rc.getReplayid()) {%>
                              		 <!-- start post comment -->
                                <div class="post-comment reply-post">
                                    <div class="col-md-2 col-xs-2 post-user-info text-center">
                                        <div class="user-img">
                                            <img src="assets/img/comment_foto.png" alt="UkieWeb">
                                        </div>
                                        <div class="user-name"><%=rc.getName() %></div>
                                    </div>
                                    <div class="col-md-10 col-xs-10 post-comment-txt">
                                        <span class="comment-time"><%=rc.getDate() %></span>
                                        <span class="reply">
                                            <a class="comment-reply-link hover-animate" data-toggle="modal" href="#myModal" data-id="<%=c.getCid()%>"><i class="fa fa-reply"></i> Reply</a>
                                            
                                        </span>
                                        <span class="clearfix"></span>
                                        <p><%=rc.getContent() %></p>
                                    </div>
                                </div>
                                <!-- end post comment -->
                                <div class="clearfix"></div>
                              	<%} %>
                                <%} %>
								<%} %>
								<%} %>
                               

                            </div>
                        </div>
                        <!-- end post comments -->
					


<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reply</h4>
      </div>
      <div class="leave-comment">
      <div class="modal-body">
     
      	 <form id="contact_form" class="form email-form" method="post" action="AddCommentServlet" autocomplete="off">
                               
           <input type="text" name="name" id="name" class="input-contact" placeholder="Name">
           <textarea type="text" name="message" id="message" class="input-contact" placeholder="Message"></textarea>
           
           <input type="hidden" name="postid" value="<%=pid%>">
           <input type="hidden" name="replyid" id="replyid" value="0"/>
            <input type="hidden" name="page" value="<%=PreviousPage%>">
           <input type="hidden" name="title" value="<%=title%>">
               <div class="text-right">
                <button type="submit" class="btn btn-color hover-animate">Sent Message</button>
                 </div>
          </form>
        
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>







                        <!-- start leave comment -->
                        <div class="leave-comment">
                            <h3>Leave a Comment</h3>

                            <form id="contact_form" class="form email-form" method="post" action="AddCommentServlet" autocomplete="off">
                               
                                <input type="text" name="name" id="name" class="input-contact" placeholder="Name">
                                <textarea type="text" name="message" id="message" class="input-contact" placeholder="Message"></textarea>
                               	  
                                <input type="hidden" name="postid" value="<%=pid%>">
                                <input type="hidden" name="page" value="<%=PreviousPage%>">
                                <input type="hidden" name="title" value="<%=title%>">
                                <div class="text-right">
                                    <button type="submit" class="btn btn-color hover-animate">Sent Message</button>
                                </div>
                            </form>

                        </div>
                        <!-- end leave comment -->

                    </div>
                    <!-- end post -->

                </div>
                <div class="col-xs-12 col-sm-12 col-lg-4">
                    <!-- start slidebar -->

                    <aside class="widget widget_categories">
                        <h3 class="widget-title">Categories</h3>
                        <ul>
                            <li class="cat-item cat-item-6"><a href="#">Web design</a></li>
                            <li class="cat-item cat-item-8"><a href="#">Web development</a></li>
                            <li class="cat-item cat-item-7"><a href="#">Logos & Illustrations</a></li>
                            <li class="cat-item cat-item-1"><a href="#">Marketing</a></li>
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

                    <!-- end slidebar -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>

    <!-- Start Footer section -->
    <footer class="footer">
        <!-- start container -->
        <div class="container">
            <!-- start row -->
            <div class="row">
                <!-- start phone number -->
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-phone"></i></span> +38 012-3456-7890
                    </a>
                </div>
                <!-- end phone number -->
                <!-- start email -->
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-paper-plane"></i></span> info@yourdomain.com
                    </a>
                </div>
                <!-- end email -->
                <!-- start address -->
                <div class="col-xs-12 col-sm-6 col-lg-3">
                    <a href="#" class="hover-animate">
                        <span class="ukie-icons hover-animate"><i class="fa fa-map-marker"></i></span> 44 King St, Melbourne VIC
                    </a>
                </div>
                <!-- end address -->
                <!-- start Copyright -->
                <div class="col-xs-12 col-sm-6 col-lg-3 text-right">
                    <span class="copyright">Copyright © 2016 All right reserved</span>
                </div>
                <!-- end Copyright -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </footer>
    <!-- End Footer section -->

</div>

<!-- Scroll to Top -->
<a href="#" class="btn hover-animate scrollToTop"><i class="fa fa-angle-up"></i></a>
<!-- End Scroll to Top -->

<!-- Style Contact Form -->
<!-- delete this from site once you have decided on a colour scheme - follow documentation for insructions -->
<!-- Button Style open -->
<div class="style-open-form animated hi-icon-effect-8">
    <i class="hi-icon fa fa-envelope-o ukie-icons hover-animate hi-icon-mobile"></i>
</div>
<!-- End Button Style open -->
<div class="style-contact-form style-off-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12 ">
            <!-- Start Contact Form -->
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
            <!-- End Contact Form -->
            <!-- End style-open -->
        </div>
    </div>
    <!-- End row -->
</div>
<!-- End Style Contact Form -->
<script></script>
<!-- Scripts -->

<script src="assets/js/jquery-3.1.1.min.js" type="text/javascript"></script>
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

<!-- Mirrored from ukieweb.com/envato/ukiecard/style1/post-img.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Dec 2016 04:22:48 GMT -->
</html>