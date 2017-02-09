<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='story']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/explore/story/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='story']//entry" mode='edit-link'>
        
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/share/story/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>


    <xsl:template match="*[section/@handle='story']//entry" mode='explorestoriesmodule'>
        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
            <div class="each-item-inner">
                <div class="content-right col-md-4 col-sm-5" style="width: 20%; height: 170px; background-color: #3489DA; border-top-left-radius: 20px; border-bottom-left-radius: 20px; margin-left: -3px;">
                <br/>
                <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                    
                </div> <!-- /.content-left -->
                <div class="content-left col-md-8 col-sm-7" style="width: 80%;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image" style="margin-top: 20px;"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title" style="margin-top: 20px;"><xsl:value-of select="title" /></h3>
                            <p class="pera"><xsl:value-of select="subtitle" /></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                
            </div>
            <!-- <p class="small-text"><xsl:value-of select="/user/item" /> recently enrolled form this module.</p> -->
        </div>
    </xsl:template>


    <xsl:template  match="*[section/@handle='story']//entry" mode='explore-story-slider-single-item'>
        <div class="guide-team-content">
            <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                <div class="each-item-inner">
                    

                    <div class="media" style="margin: 30px; margin-top: 10px;">
                        
                        <div class="media-body">

                            <h3 class="title" style=" text-transform: uppercase; margin-top: 20px;"><xsl:value-of select="title" /> </h3>
                            <p class="pera "> <xsl:value-of select="subtitle" /> </p>

                        </div> <!-- /.media-body -->
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                        
                        </div> <!-- /.media-left -->
                    </div> <!-- /.media -->

                    
                </div>
                <!-- TODO determine who recently enrolled -->
                <!-- <p class="small-text">
                    <xsl:value-of select="user/item" /> recently enrolled form this module.
                </p> -->
            </div>  
        </div>
    </xsl:template>

    <xsl:template  match="*[section/@handle='story']//entry" mode='explorestoriestwoslidermodule'>
        <xsl:if test='position() mod 2 = 1'>
            <div class="item" style="padding: 0px;">    
                <div class="modules" style="height: 100%;">
                    <div class="modules-inner" style="padding: 0px; border: 0px; margin-right: 10px;">
                                
                        <xsl:apply-templates select='.' mode='explore-story-slider-single-item'/>
                        <xsl:apply-templates select='following-sibling::entry[1]' mode='explore-story-slider-single-item'/>

                    </div>                                        
                </div>
            </div> <!-- /.item -->
        </xsl:if>
    </xsl:template>


    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodulewithlikes'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

        <div class=" each-item-inner col-sm-10" style="padding: 0px; display: flex; width: 100%; margin-bottom: 30px; overflow: hidden;">
           

            <a class="content-right col-xs-12 content-defult col-md-3 col-sm-3" style="padding: 0px;"> 
                <xsl:attribute name='href'>
                    <xsl:choose>
                        <xsl:when test='$no-link'>
                        </xsl:when>
                        <xsl:when test='$edit-link'>
                            <xsl:apply-templates select='.' mode='edit-link'/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select='.' mode='link'/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>               
                <img src="{/data/params/workspace}/assets/img/helppic.png" class=" square-picture border-radius-shape"/> 
            </a>
            
            <a class="content -left col-xs-8 col-md-7 col-sm-7" style=" padding-top: 30px; padding-right: 0px; padding-bottom: 0px;">
                <xsl:attribute name='href'>
                    <xsl:choose>
                        <xsl:when test='$no-link'>
                        </xsl:when>
                        <xsl:when test='$edit-link'>
                            <xsl:apply-templates select='.' mode='edit-link'/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select='.' mode='link'/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <div class="media">                                                        
                    <div class="media-body">
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="date"/></p>
                    </div> <!-- /.media-body -->
                    <div class="media-left">
                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>   
                    </div> <!-- /.media-left -->
                </div> <!-- /.media -->
            </a> <!-- /.content-right -->

           <xsl:if test='not($edit-link)'>
                <div class="content-right content-defult col-md-2 col-sm-2 col-xs-4" style="padding-left: 0px; padding-right: 0px;">
                    
                    <div class="profile-meta" style="margin-left: 0px;">
                        <xsl:apply-templates select="." mode="likeviews"/>
                    </div>

                </div>
            </xsl:if>
            
        </div>

    </xsl:template>

    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodule'>
        <div class=" each-item-inner col-sm-10 share-story-module-style">
           
            <div class="content-right col-xs-12 content-defult col-sm-3" style=" overflow: hidden; padding: 0px;">
                
               <img src="{/data/params/workspace}/assets/img/helppic.png" class="border-radius-shape"/>

            </div>
            
            <div class="content-left col-xs-12 col-sm-9" style=" padding-top: 20px; padding-bottom: 20px;">
                <div class="media">                                                        
                    <div class="media-body">
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="date"/></p>
                    </div> <!-- /.media-body -->
                    <div class="media-left">
                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>   
                    </div> <!-- /.media-left -->
                </div> <!-- /.media -->
            </div> <!-- /.content-right -->
        </div>
    </xsl:template>

    <xsl:template match="*[section/@handle='story']//entry" mode='story-module-item'>

        <div class="each-item col-sm-10 col-md-12">
            <div class=" each-item-inner height-md-story-module">
                <div class="content-right col-xs-12 content-defult col-md-2" style=" overflow: hidden; padding: 0px;">
                    
                   <img class="media-object features-image" src="{/data/params/workspace}/assets/img/helppic.png" alt="Media Team Image" style="max-width: 100%; height: 200px; max-height: 200px; border-top-left-radius: 20px; border-bottom-left-radius: 20px;"/>

                </div>
                <div class="content-left col-xs-8 col-md-7" style=" padding-top: 50px;">

                    <div class="media">
                        
                        <div class="media-body">

                             <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                        <div class="media-left">

                             <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-md-3 col-xs-4">
                    
                    <xsl:apply-templates select='.' mode='likeviews'/>

                </div> <!-- /.content-left -->
            </div>    
        </div>

    </xsl:template>



    <xsl:template match="*[section/@handle='story']//entry" mode='story-form' name='story-form'>
        <form method="post" action="{$current-url}/" class='story-form auto-save' data-action="save-story">
            <xsl:if test='../section/@handle="story"'>
                <xsl:attribute name='data-id'>
                    <xsl:value-of select='@id'/>
                </xsl:attribute>
            </xsl:if>


            <div class="container">
                <div class="row">
                    <h2 class="title-centre">NEW STORY</h2>
                    <div>
                        <div class="form-inline single-form" style="width: 150px;display:block;margin:auto;">
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan" name='status'>
                                        <option value="215" selected="selected">SAVE</option>
                                        <option value="216">PUBLISH</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="study-timeline-progress">

                <div class="container">
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2 col-lg-6 col-lg-offset-3 text-center" >
                            <div class="study-timeline-progress-circles" style="margin-left: 16.66%; ">
                                1
                            </div> 
                            <div class="study-timeline-progress-circles" style="margin-left: 50%; ">
                                2
                            </div>
                            <div class="study-timeline-progress-circles" style="margin-left: 83.335%; ">
                                3
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-8 col-md-offset-2">


                        <div class="sliderJquery">
                            <div id="div1">
                                <label style="width: 100%;" >
                                    <div>
                                        <h3 class="title-centre">TITLE</h3>
                                        <input name="title" type="text" value='{title[@mode="unformatted"]}'/>
                                    </div>
                                </label>

                                <label style="width: 100%;">
                                    <div>
                                        <h3 class="title-centre">SUBTITLE</h3>
                                        <input name="subtitle" type="text" value='{subtitle[@mode="unformatted"]}'/>
                                    </div>
                                </label>  

                                <div class="col-xs-12 each-features text-center" style="margin-bottom: 0px;">
                                    <h3 class="title col-md-12">CATEGORY</h3><br/>
                                    <div class="col-md-3"></div>
                                    <div class="box-border-text-left max-width col-md-8" style="width: 45%; overflow-y: scroll; height: 380px;">
                                        <xsl:apply-templates select='/data/interests/entry' mode='option'>
                                            <xsl:with-param name='class'>
                                                <xsl:text>col-xs-6 text-center</xsl:text>
                                            </xsl:with-param>
                                            <xsl:with-param name='name'>category</xsl:with-param>
                                            <xsl:with-param name='selected' select='current()/category/item'/>
                                        </xsl:apply-templates>         
                                    </div>
                                </div>

                             <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px;">
                                    <div class="box-border" style="border: 0px; height: 150px;">
                                        <h3 class="title">START</h3>
                                        <div class="form-inline single-form">
                                            <div class="form-group input-outer">
                                                <div class="select-outer">
                                                    <select class="form-control contact-plan">
                                                        <option value="subject1" disabled="" selected="">START</option>
                                                        <option value="BusinessConsulting">consulting</option>
                                                        <option value="TextConsulting">Text</option>
                                                        <option value="Advisory">Advisory</option>
                                                        <option value="Audit-$-assurance">Audit</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="box-border" style="border: 0px; height: 150px;">
                                        <h3 class="title">START</h3>
                                        <div class="form-inline single-form">
                                            <div class="form-group input-outer">
                                                <div class="select-outer">
                                                    <select class="form-control contact-plan">
                                                        <option value="subject1" disabled="" selected="">END</option>
                                                        <option value="BusinessConsulting">consulting</option>
                                                        <option value="TextConsulting">Text</option>
                                                        <option value="Advisory">Advisory</option>
                                                        <option value="Audit-$-assurance">Audit</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>

                            <div id="div2">
                                <label style="width: 100%;">
                                    <div class="input-wrapper">
                                        <h3 class="title-centre">TEXT</h3>
                                        <textarea name="text" class="your-notes-class" type="text">
                                            <xsl:value-of select='text[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>

                            </div>

                            <div id="div3">
                                <input name="user" type="hidden" value="{/data/params/member-id}" />
                                <label style="width: 100%;">
                                    <div>
                                        <h3 class="title-centre">PHOTOS</h3>
                                        <div class='image-upload-instructions text-center'>Click here or Drop files below to upload - Maximum File Size : 10MB</div>
                                        
                                        <div class='image-uploads' data-imagenumber='{count(images/item)}'>
                                            <xsl:for-each select='images/item'>
                                                <xsl:apply-templates select='/data/images/entry[@id = current()/@id]' mode='uploads'/>
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div> <!-- sliderJquery -->
                    </div>
                    
                    <div class="col-md-8 col-md-offset-2" style="margin-bottom: 30px;">
                        <div class=" before btn-form col-xs-6 text-center margin-t-50 btn-down-positon">
                            <a href="#" class="btn btn-border text-normal">PREVIOUS</a>
                        </div>

                        <div id="counter1" class="next btn-form col-xs-6 text-center margin-t-50 btn-down-positon counter1">
                            <a href="#" class="btn btn-border text-normal">NEXT</a>
                        </div>
                    </div>
                </div>

            </div>

            <input name="" type="submit" value="Submit" />

        </form>
    </xsl:template>

</xsl:stylesheet>