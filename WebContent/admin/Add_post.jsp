<%@page import="com.kanumalivad.model.User"%>
<%
	User user = (User) session.getAttribute("user");
	if(user==null)
	{
		response.sendRedirect("Index.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link media="all" rel="stylesheet" type="text/css" href="assets/styles/simditor.css" />
    <script type="text/javascript" src="assets/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="assets/scripts/mobilecheck.js"></script>
    <script type="text/javascript">
        if(mobilecheck()){
            $('<link/>', {
                media: 'all',
                rel: 'stylesheet',
                type: 'text/css',
                href: 'assets/styles/mobile.css'
            }).appendTo('head')
        }
    </script>
<script src="js/lumino.glyphs.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Admin</span>Panel</a>
				<ul class="user-menu">
					
				</ul>
			</div>
							
		</div>
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			
			<li ><a href="View.jsp"><svg class="glyph stroked blank document"><use xlink:href="#stroked-blank-document"/></svg></use></svg> Posts</a></li>
			<li class="active"><a href="Add_post.jsp"><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>
			</use></svg> New Posts</a></li>
			<li><a href="Comments.jsp"><svg class="glyph stroked empty message"><use xlink:href="#stroked-empty-message"/></svg></use></svg> Comments</a></li>
			<li><a href="tables.html"><svg class="glyph stroked email"><use xlink:href="#stroked-email"/></svg> Messages</a></li>
			<li role="presentation" class="divider"></li>
			<li><a href="Logout.jsp"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Logout</a></li>
		</ul>
		<div class="attribution">Developed by <a href="https://medialoot.com/item/lumino-admin-bootstrap-template/">Kanu Malivad</a><br/><a href="http://www.glyphs.co/" style="color: #333;">Copyrights all rights reserved</a></div>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">				
		<div class="row">
			<div class="col-lg-12" style="padding-top: 20px;">
				<div class="panel panel-default" >
					<div class="panel-heading">New Post</div>
					<div class="panel-body">
						
											
					
						<form class="form-horizontal" action="AddPostServlet" method="post" enctype="multipart/form-data">
							<fieldset>
								
								<div class="form-group" >
									<label class="col-md-1 control-label" for="name" >Title</label>
									<div class="col-md-11">
									<input name="title" type="text" placeholder="Your title" class="form-control">
									</div>
								</div>
							
								<!-- Email input-->
								<div class="form-group">
									<label class="col-md-1 control-label" >Category</label>
									<div class="col-md-11">
										<select class="form-control" name="category">
										<option>Designing</option>
										<option>Programming</option>
										<option>Database</option>
										<option>Others</option>
									</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-1 control-label" for="email">Image</label>
									<div class="col-md-11">
										<input name="img" type="file"  class="form-control">
									</div>
								</div>
								
								<!-- Message body -->
								<div class="form-group">
									<label class="col-md-1 control-label" for="message">Content</label>
									<div class="col-md-11">
										<textarea id="txt-content" data-autosave="editor-content" autofocus required name="content" name="content">
										type here.....
										</textarea>
									</div>
								</div>
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										<button type="submit" class="btn btn-default btn-md pull-right" name="submit">Submit</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				
				
								
			</div><!--/.col-->
		</div><!--/.row-->
				
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script type="text/javascript" src="assets/scripts/module.js"></script>
	<script type="text/javascript" src="assets/scripts/uploader.js"></script>
	<script type="text/javascript" src="assets/scripts/hotkeys.js"></script>
	<script type="text/javascript" src="assets/scripts/simditor.js"></script>
	<script type="text/javascript" src="assets/scripts/page-demo.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>


<!-- Mirrored from medialoot.com/preview/lumino/tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Feb 2017 16:09:57 GMT -->
</html>
