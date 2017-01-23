<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>

<xsl:template match="/data">
	<h1><xsl:value-of select="/data/params/page-title"/></h1>
	<div class="container" style="margin-top: 50px;">
                <div class="row features-item section-separator">

        <div class="col-md-12">
			<h2 class="error-font"> 404 </h2>
		</div>

	</div>
	<div class="col-xs-12 each-features text-center" style="margin-bottom: 150px;">  

		<div class= "col-xs-2 col-sm-2 col-md-2"></div>
		<div class="col-xs-8 col-sm-8 col-md-8">
			<p style="margin-bottom: 50px; margin-top: 30px;"> Sorry this page was not found, try to search further, use the button blow.</p>
		</div>
		<div class="col-xs-2 col-sm-2 col-md-2"></div>


		<div class="col-xs-12 col-md-12">
	    <form class="single-form search-form" action="" method="">
	        <div class="input-group">
	            <input type="text" class="form-control" placeholder="Search for..."/>
	            <span class="input-group-btn">
	                <button class="btn" type="button"><i class="fa fa-search"></i></button>
	            </span>
	        </div><!-- /.input-group -->
	    </form>
		</div>
	</div>
</div>
</xsl:template>

</xsl:stylesheet>
