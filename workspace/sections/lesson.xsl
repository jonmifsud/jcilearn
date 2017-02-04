<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='author-picture'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
            <xsl:with-param name='include-name' select='$include-name'/>
        </xsl:apply-templates>
    

    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/module/lesson/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='edit-link'>
        
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/share/lesson/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='list-item'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

        <div class="each-item col-md-12">
            <div class="each-item-inner col-md-12">
                <a class="content-left col-md-8 col-sm-7">
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
                        <div class="media-left" style="padding: 10px;" >

                            <img class="media-object features-image" style="width: 50px;" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </a> <!-- /.content-right -->

                <xsl:if test='not($edit-link)'>
                <div class="content-right col-md-4 col-sm-5 study-profile-padding" style="padding: 0px; padding-left: 20px; padding-top: 10px;">
                    
                    <div class="media">
                        

                            <xsl:apply-templates select='current()' mode='author-picture'/> 

                        <div class="media-body" style="padding-right: 0px;">

                            <h3 class="title"><xsl:value-of select="/data/users/entry[@id = current()/profile/item/@id]/name"/></h3>
                            <div class="profile-meta" style="margin-top: 0px;">

                                <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                                    <i class="fa fa-heart-o"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="likeOutput" value="0" style="font-size: 18px;">0</span>
                                
                                <span class="blue-text-in-line" id="view">
                                    <i class="fa fa-man-people-streamline-user"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="viewOutput" value="0" style="font-size: 18px;">0</span>       
                            </div>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-left -->
                </xsl:if>

            </div>
        </div> <!-- /.each-item -->

    </xsl:template>



    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header'>

        <div class="guide-team">
            <div class="guide-team-inner">
                
                <!-- Start: Section Header -->
                <div class="section-header relative text-center" >
                    <h2 class="section-heading" ><xsl:value-of select="title"/></h2>
                    <p ><xsl:value-of select="interactiv-box"/></p>
                </div>   
                             
                <div class="lesson-definitions">
                    <div class="lesson-top-picture">
                        <div class="media">    

                            <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                                <xsl:with-param name='include-name' select='true()'/>
                            </xsl:apply-templates>

                            <xsl:value-of select="*"/>

                        </div> <!-- /.media-body -->
                    </div>
                </div>                              
            </div>
        </div>

    </xsl:template>

    <xsl:template match="*[section/@handle='comment']//entry" mode='com'>

        <xsl:value-of select="text"/>


    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header-two'>
        <div class="media-body">
            <h3 class="title">
                <xsl:value-of select="title"/>
            </h3>
            <p class="pera">
                <xsl:value-of select="subtitle"/>
            </p>
        </div>
    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header-three'>
       <xsl:value-of select="profile"/>
    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-form' name='lesson-form'>
        <form method="post" action="{$current-url}/" class='lesson-form auto-save' data-action="save-lesson">
            <xsl:if test='../section/@handle="lesson"'>
                <xsl:attribute name='data-id'>
                    <xsl:value-of select='@id'/>
                </xsl:attribute>
            </xsl:if>

            <h2 class="text-center">NEW LESSON</h2>
            <div class="col-xs-12 col-md-8 col-md-offset-2">
                <div class="form-inline single-form" style="width: 150px;">
                    <div class="form-group input-outer">
                        <div class="select-outer">
                            <select class="form-control contact-plan" name='status'>
                                <option value="draft" selected="selected">Save</option>
                                <option value="review">Publish</option>
                            </select>
                        </div>
                    </div>
                </div> 
            </div>
            
            <button class="counter1"> counter</button>


            <div class="col-xs-12">
                <div class="study-timeline-progress" style="margin-top: 80px;">
                    <div id="LessonEditStep1" class="study-timeline-progress-circles" style="margin-left: 25%;">
                        1
                    </div> 
                    <div id="LessonEditStep2" class="study-timeline-progress-circles" style="margin-left: 50%;">
                        2
                    </div>
                    <div id="LessonEditStep3" class="study-timeline-progress-circles" style="margin-left: 75%;">
                        3
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-8 col-md-offset-2" style="margin-top: 100px;">

                <div class="sliderJquery">

                    <div id="div1">
                        <label style="width: 100%;">
                            
                            <div class="input-wrapper">
                                <h3 class="text-center">TITLE</h3>
                                <input name="title" type="text" class="your-notes-class" value='{title[@mode="unformatted"]}' />
                            </div>
                        </label>

                        <label style="width: 100%;">
                            <div class="input-wrapper">
                                <h3 class="title-centre">SUBTITLE</h3>
                                <input name="subtitle" type="text" value='{subtitle[@mode="unformatted"]}'/>
                            </div>
                        </label>

                        <h3 class="text-center" style="margin-bottom: 0px;">CATEGORY</h3><br/>
                        <div class="box-border-text-left col-md-6 col-md-offset-3" style="overflow-y: scroll; height: 380px;">
                            
                            <xsl:apply-templates select='/data/interests/entry' mode='option'>
                                <xsl:with-param name='class'>
                                    <xsl:text>col-xs-6 text-center</xsl:text>
                                </xsl:with-param>
                                <xsl:with-param name='name'>category</xsl:with-param>
                                <xsl:with-param name='selected' select='current()/category/item'/>
                            </xsl:apply-templates>  

                        </div>
                    </div>

                    <div id="div2">
                        <label style="width: 100%;">
                            <div class="input-wrapper"><h3 class="title-centre">TEXT</h3>
                                <textarea id="your-note" name="text" class="your-notes-class" type="text">
                                    <xsl:value-of select='text[@mode="unformatted"]'/>
                                </textarea>
                            </div>
                        </label>

                        <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px; margin-top: 100px;">
                            <div class="form-inline single-form">
                                <div class="form-group input-outer">
                                    <div class="select-outer">
                                        <select class="form-control contact-plan">
                                            <option value="subject1" disabled="" selected="">ADD</option>
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


                    <div id="div3">
                        <input name="profile" type="hidden" value="{/data/params/member-id}" />
                        <input name="user" type="hidden" value="{/data/params/member-id}" />

                        <xsl:variable name='index' select='""'/>
                        <div class='quiz-questions'>
                            <xsl:apply-templates select='/data/questions/entry' mode='question-form'/>
                            <div class='quiz-form-template'>
                                <xsl:call-template name='question-form'>
                                    <xsl:with-param name='index'>template</xsl:with-param>
                                </xsl:call-template>
                            </div>
                            <div class="form-inline single-form text-center">
                                <div class='form-control add-question'>Add Question</div>
                            </div>
                        </div>
                        <input type="submit" value="Submit" />
                    </div>
                </div> <!-- sliderJquery -->
            </div>
        </form>
    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='sharelesson'>
        <div class=" each-item-inner col-md-12">
            <div class="content-left col-sm-12" style="width: 78%; padding-top: 50px;">

                <div class="media">
                    <div class="media-left">

                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-4.png" alt="Media Team Image"/>
                    
                    </div> <!-- /.media-left -->
                    <div class="media-body" style="margin-top: -10px;">

                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="subtitle"/></p>

                    </div> <!-- /.media-body -->
                    
                </div> <!-- /.media -->

            </div> <!-- /.content-right -->
        </div>
    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module'>
        <div class="each-item">
            <div class="each-item-inner">
                <div class="content-left col-md-8 col-sm-7">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->

                         <xsl:apply-templates select='current()' mode='lesson-header-two'/>
                        
                         <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right col-md-4 col-sm-5">

                    <div class="media">
                         <xsl:apply-templates select="current()/profile" mode="commentwo">
                        </xsl:apply-templates>

                        <div class="media-body">
                            <h3 class="title">

                                <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                                    <xsl:with-param name='include-name' select='true()'/>
                                </xsl:apply-templates>
                            </h3>
                            <div class="profile-meta">
                                <p><i class="fa fa-man-people-streamline-user"></i>83</p>
                                <p><i class="fa fa-like-love-streamline"></i>7</p>
                            </div>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header'>



        <div class="guide-team">
            <div class="guide-team-inner">
                
                <!-- Start: Section Header -->
                <div class="section-header relative text-center" >
                
                    <h2 class="section-heading" ><xsl:value-of select="title"/></h2>
                    <p ><xsl:value-of select="interactiv-box"/></p>
                    
                </div> 
                
                    <div class="lesson-definitions">
                        <div class="lesson-top-picture">
                            <div class="media">                               
                                <div class="media-body-left">
                                <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" alt="Media Team Profile Image"/>
                                    <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/> 
                                    <h3 class="title"><xsl:value-of select="profile/item"/></h3>
                                </div>         
                            </div> <!-- /.media-body -->
                        </div>
                    </div>                              
            </div>
        </div>



    </xsl:template>



    <xsl:template match="*[section/@handle='lesson']//entry" mode='lessonmoduleimage'>

        <div class="box-border" style="width: 70%; height: 100%; padding: 0px; overflow: hidden;
                                        " >
            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;" />
            <div class="box-poligon" style="width: 100%;  margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img src="{/data/params/workspace}/assets/img/icons/icon-6.png"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="/data/lesson/entry/title"/></h3><xsl:value-of select="/data/lesson/entry/system-date/created"/>
                </div>
            </div>
        </div>

    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='currentmodule'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

        <div class="item">    
            <div class="modules">
                <div class="modules-inner">


                    <a>
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

                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Modules Image" class="img-responsive"/>
                        <h3 class="blue-text" style="text-transform: uppercase;"><xsl:value-of select="title" /></h3>
                    </a>
                </div>
                <p class="small-text"><xsl:value-of select="profile/item" /> recently enrolled form this module.</p>
            </div>
        </div> <!-- /.item -->

    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module-item'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

         <div class="each-item col-md-6 col-sm-12 " style=" ">
            <div class=" each-item-inner col-xs-12" style="display: flex; padding-left: 0px; padding-right: 0px; ">
                <a class="content-left col-sm-9" style="padding-top: 20px; padding-bottom: 10px;">
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
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                             <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </a> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3" style="padding: 0px; padding: 10px;">
                    
                    <div class="profile-meta" style="margin-top: 0px;">

                        <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                            <i class="fa fa-heart-o"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </span>

                        <span id="likeOutput" value="0" style="font-size: 18px;">0</span>
                        <br/>
                        <span class="blue-text-in-line" id="view">
                            <i class="fa fa-man-people-streamline-user"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </span>

                        <span id="viewOutput" value="0" style="font-size: 18px;">0</span>       
                    </div>

                    <!-- THIS IS REAL LIKE VIEWS. 
                    <div class="profile-meta">
                        <p class="blue-text-in-line" id="like" data-entry='{@id}'>
                            <i class="fa fa-heart-o"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </p>
                        <span id="likeOutput" value="0" style="font-size: 27px;">0</span><br/>
                        
                        <p class="blue-text-in-line" id="view"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                        <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
                    </div>
                    -->

                </div> <!-- /.content-left -->
            </div>

            <!-- TODO what is going on per lesson -->
            <!-- <p class="small-text text-center">You're one lesson away from obtaining your Trainer badge!</p> -->
        </div> <!-- /.each-item -->

    </xsl:template>
    
    <xsl:template match="*[section/@handle='lesson']//entry" mode='usercontentmodule'>

        <div class="box-border" style="width: 95%; height: 400px; padding: 0px; overflow: hidden;">
            <img src="assets/images/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img src="assets/images/guide-team/icon-6.png"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;">PUBLIC SPEAKING WORKSHOP</h3>2016
                </div>
            </div>
        </div>
        
    </xsl:template>

</xsl:stylesheet>



