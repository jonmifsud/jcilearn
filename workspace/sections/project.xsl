<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='project']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/explore/project/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='edit-link'>
        
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/share/project/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='author-picture'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:apply-templates select='/data/users/entry[@id = current()/user/item/@id]' mode='user-picture-country'>
            <xsl:with-param name='include-name' select='$include-name'/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='projectmodule'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

        <a class="box-border" style="width: 90%; height: 400px; padding: 0px; overflow: hidden;">
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

            <img  src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title" /></h3><xsl:value-of select="date" />
                </div>
            </div>
        </a>
    </xsl:template>

    <xsl:template  match="*[section/@handle='project']//entry" mode='exploreprojectsmodule'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>
        <a class="box-border" style="width: 95%; height: 400px; padding: 0px; overflow: hidden;">
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
            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title"/></h3><xsl:value-of select="date"/>
                </div>
            </div>
        </a>
    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='project-module-item'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>
        
        <a class="box-border" style="width: 100%; height: 400px; padding: 0px; overflow: hidden;">
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

            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title" /></h3><xsl:value-of select="date" />
                </div>
            </div>
        </a>

    </xsl:template>


    <xsl:template match="*[section/@handle='project']//entry" mode='project-form' name='project-form'>
        <form method="post" action="{$current-url}/" class='project-form auto-save' data-action="save-project">
            <xsl:if test='../section/@handle="project"'>
                <xsl:attribute name='data-id'>
                    <xsl:value-of select='@id'/>
                </xsl:attribute>
            </xsl:if>



            <div class="container">
                <div class="row">
                    <h2 class="title-centre">NEW PROJECT</h2>
                    <div class="enter-text-field" style="height: 100px;">
                        <div class="form-inline single-form" style="width: 150px;">
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
                            <div class="study-timeline-progress-circles" style="margin-left: 8.33%; ">
                                1
                            </div> 
                            <div class="study-timeline-progress-circles" style="margin-left: 25%; ">
                                2
                            </div>
                            <div class="study-timeline-progress-circles" style="margin-left: 41.67%; ">
                                3
                            </div>
                            <div class="study-timeline-progress-circles" style="margin-left: 58.33%; ">
                                4
                            </div> 
                            <div class="study-timeline-progress-circles" style="margin-left: 75%; ">
                                5
                            </div>
                            <div class="study-timeline-progress-circles" style="margin-left: 91.67%; ">
                                6
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">       

                    <div class="col-xs-12 each-features">


                        <div class="sliderJquery">

                                
                            <div id="div1">
                                <label style="width: 100%;" >
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">TITLE</h3>
                                        <input name="fields[title]" type="text" value='{title[@mode="unformatted"]}'/>
                                    </div>
                                </label>

                                <label style="width: 100%;">
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">SUBTITLE</h3>
                                        <input name="fields[subtitle]" type="text" value='{subtitle[@mode="unformatted"]}'/>
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

                            </div>


                            <div id="div2">                                    
                                <div class="box-border" style="border: 0px; height: 150px;">
                                    <h3 class="title">START</h3>
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

                                <div class="box-border" style="border: 0px; height: 150px;">
                                    <h3 class="title">END</h3>
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

                                <label style="width: 90%;">
                                    <div class="enter-text-field">
                                        <h3 class="title-centre">OVERVIEW</h3>
                                        <textarea id="your-note" class="your-note-box-shape" name="fields[overview]" type="text"></textarea>
                                    </div>
                                </label> 
                            </div>

                            <div id="div3">
                                <label style="width: 90%;">
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">PROBLEM</h3>
                                        <textarea name="problem" class="your-notes-class" type="text">
                                            <xsl:value-of select='problem[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>

                                <label style="width: 90%;">
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">PROPOSED SOLUTION</h3>
                                        <textarea name="proposedsolution" class="your-notes-class" type="text">
                                            <xsl:value-of select='proposedsolution[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>

                                <label style="width: 90%;">
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">STAKEHOLDERS</h3>
                                        <textarea name="stakeholders" class="your-notes-class" type="text">
                                            <xsl:value-of select='stakeholders[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>
                               
                                <label style="width: 90%;">
                                    <div class="enter-text-field" style="height: 100px;">
                                        <h3 class="title-centre">PARTNERS</h3>
                                        <textarea name="partners" class="your-notes-class" type="text">
                                            <xsl:value-of select='partners[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>
                            </div>

                            <div id="div4">
                                <label style="width: 90%;">
                                    <div class="enter-text-field"><h3 class="title-centre">STRATEGY</h3>
                                        <textarea name="strategy" class="your-notes-class" type="text">
                                            <xsl:value-of select='strategy[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label> 

                                <label style="width: 90%;">
                                    <div class="enter-text-field">
                                        <h3 class="title-centre">EXECUTION</h3>
                                        <textarea name="execution" class="your-notes-class" type="text">
                                            <xsl:value-of select='execution[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>                                               
                            </div>

                            <div id="div5">
                                <label style="width: 90%;">
                                    <div class="enter-text-field"><h3 class="title-centre">OUTCOME</h3>
                                        <textarea name="outcome" class="your-notes-class" type="text">
                                            <xsl:value-of select='outcome[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label> 

                                <label style="width: 90%;">
                                    <div class="enter-text-field"><h3 class="title-centre">LESSON LEARNT</h3>
                                        <textarea name="lessonlearnt" class="your-notes-class" type="text">
                                            <xsl:value-of select='lessonlearnt[@mode="unformatted"]'/>
                                        </textarea>
                                    </div>
                                </label>
                            </div>

                            <div id="div6">
                                <div class="col-xs-12 each-features">
                                    <h3 class="title-centre">PHOTOS</h3>
                                    <div class='image-upload-instructions text-center'>Click here or Drop files below to upload - Maximum File Size : 10MB</div>
                                    
                                    <div class='image-uploads' data-imagenumber='{count(images/item)}'>
                                        <xsl:for-each select='images/item'>
                                            <xsl:apply-templates select='/data/images/entry[@id = current()/@id]' mode='uploads'/>
                                        </xsl:for-each>
                                    </div>
                                </div>  

                                <div class="col-xs-12 each-features">
                                    <h3 class="title-centre">MARKETING MATERIAL</h3>
                                    <div class='marketing-upload-instructions text-center'>Click here or Drop files below to upload - Maximum File Size : 10MB</div>

                                    <div class='marketing-uploads' data-filenumber='{count(marketing-materials/file)}'>
                                        <xsl:apply-templates select='marketing-materials/file' mode='uploads'/>
                                    </div>
                                </div>  
                                 <label style="width: 90%;"><p class="title-centre">text</p>
                                    <input name="fields[text]" class="your-note-text-box-shape" type="text" />
                                </label>
                                
                                <label style="width: 90%;"><p class="title-centre">date</p>
                                    <input class="your-note-text-box-shape" name="fields[date]" type="text" />
                                </label>
                            </div>

                        </div> <!-- sliderJquery -->

                    </div>

                    <div class="col-md-8 col-md-offset-2" style="margin-bottom: 30px;">
                        <div class=" before btn-form col-xs-6 text-center margin-t-50 btn-down-positon">
                            <!-- <a href="#" class="btn btn-border text-normal">PREVIOUS</a> -->
                        </div>

                        <div id="counter1" class="next btn-form col-xs-6 text-center margin-t-50 btn-down-positon counter1">
                            <a href="#" class="btn btn-border text-normal">NEXT</a>
                        </div>
                    </div>

                    <input name="user" type="hidden" value="{/data/params/member-id}" />

                        
                        
                    <input name="" type="submit" value="Submit" />
                </div>
            </div>
            
        </form>
    </xsl:template>


    <xsl:template match="*[section/@handle='project']/entry/marketing-materials/file" mode="uploads">
        <div class="dz-preview uploading dz-processing dz-image-preview dz-complete">
            <div class="dz-details">
                <img data-dz-thumbnail="" style="width: 120px; height: 120px;">
                    <xsl:attribute name='src'>
                        <xsl:choose>
                            <xsl:when test='contains(@filepath,"image")'>
                                <xsl:value-of select='@filepath'/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- filler icon ?? -->
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </img>
                <div class="dz-text-details">
                    <div class="dz-filename">
                        <span data-dz-name=""><xsl:value-of select="@name"/></span>
                    </div>
                </div>
            </div>

            <input name='marketing-materials[filename][{position()}]' type='hidden' value='{@name}'/>
            <input name='marketing-materials[filepath][{position()}]' type='hidden' value='{@filepath}'/>
            <input name='marketing-materials[mimetype][{position()}]' type='hidden' value='{@mimetype}'/>

        </div>

    </xsl:template>


</xsl:stylesheet>