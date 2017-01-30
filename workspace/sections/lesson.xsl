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

    <xsl:template match="*[section/@handle='lesson']//entry" mode='list-item'>

        <div class="each-item col-md-12">
            <div class="each-item-inner col-md-12">
                <div class="content-left col-md-8 col-sm-7">

                    <div class="media">
                        <div class="media-left" style="padding: 10px;" >

                            <img class="media-object features-image" style="width: 50px;" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right col-md-4 col-sm-5 study-profile-padding">
                    
                    <div class="media">
                        

                            <xsl:apply-templates select='current()' mode='author-picture'/> 

                        <div class="media-body" >

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


            <div class="sliderJquery">

                <div id="div1">
                    <label style="width: 100%;">
                        <h3 class="text-center">TITLE</h3>
                        <div class="input-wrapper">
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
                    </div>
                    <input type="submit" value="Submit" />
                </div>
            </div> <!-- sliderJquery -->
        </form>
    </xsl:template>

</xsl:stylesheet>



