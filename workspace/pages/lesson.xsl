<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/comment.xsl"/>

<xsl:template match="/data">

        <!-- Start: Features Section 
        =================================-->
        <div class="features-section">
            <div class="container">
                <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features">

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="#" class="btn btn-fill">Study</a>
                            <a href="#" class="btn btn-border">Explore</a>
                            <a href="#" class="btn btn-border">Collab</a>
                        </div>

                    </div>

                    
                        <div class="lesson-top-picture">
                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                        </div>
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                        <xsl:apply-templates select='/data/lesson/entry[1]' mode='lesson-header'/>
                        

                    </div> <!-- /.each-features -->

                        
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                             <div class="lesson-text">
                                 <xsl:apply-templates select="/data/lesson/entry[1]" mode='html-child'/>
                             </div>
                        </div>

                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                             <div class="lesson-definitions">
                                <div class="lesson-definitions-line">
                                    <p class="blue-text">Place the definition in the right order.</p><br/>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">LEADER</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">administers a group</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">MANAGEER</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text" >is in charge of a group</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">COACH</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">maximises a team's potential</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">BOSS</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">instructs and trains</p>
                                    </div>
                                </div>
                             </div>
                        </div>

                    </div> <!-- /.each-features -->
                    
                
                     <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-bottom: 0px;">
                             <div class="lesson-text">
                             <br/>
                                <p class="lesson-text">Not quite the same thing, are they? It's not difficult to understand why, then, begin a leader takes more than just ordering people around.</p><br/><br/>
                             </div>
                        </div>

                        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                            <div class="center-profile-meta" style="margin-bottom: 30px; margin-top: 40px;">
                                <p class="blue-text-in-line"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                                <p class="blue-text-in-line"><i class="fa fa-like-love-streamline"></i> <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/> </p><br/>
                            </div>
                        </div>
                        </div>


                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-bottom: 0px;">
                            <div class="row comments-inner">
                                <xsl:apply-templates select="/data/comments/entry" mode="comment">
                                                                        
                                </xsl:apply-templates>
                            </div>
                        </div> <!-- /.comments -->

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">

                                            <a href="#" class="btn btn-border text-normal">
                                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3">
                                            <h3 style="font-size: 30px; line-height: 110%;" class="title"> Study </h3>                                            
                                            </button>
                                            </a><!-- Modal -->

                                      			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                                  <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%; height: 400px;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                                        
                                                      </div>
                                                      <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                            
                                                                <h2 class="section-heading">Nice!</h2>
                                                                <br/>
                                                                All your answers were perfect. You're up by 10XP<br/>and one step closer to finish this module!<br/><br/><br/>
                                                                <a href="#" class="btn btn-border">Next Lesson</a>
                                                                              
                                                      </div>                                                      
                                                    </div>
                                                  </div>
                                                </div>


                                        </div>   
                                    </div>   
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal">Something here</a>
                                        </div>  
                                    </div> 
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">



                                            <a href="#" class="btn btn-border text-normal">
                                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal4">
                                            <h3 style="font-size: 30px; line-height: 110%;" class="title"> Mini Quiz </h3>                                            
                                            </button>
                                            </a><!-- Modal -->

                                                <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                                  <div class="modal-dialog" role="document">

                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%; height: 1300px;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                                        
                                                      </div>
                                                      <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                            <h2 class="section-heading">MINIQUIZ</h2>                    
                                                            
                                                           
                                                            <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                    <br/>
                                                                    Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                    eflebla bla<br/><br/>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                            </div>
                                                            <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                    <br/>
                                                                    Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                    eflebla bla<br/><br/>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                            </div>
                                                            <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                    <br/>
                                                                    Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                    eflebla bla<br/><br/>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                                <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                    <div class="check-box">
                                                                    </div>  
                                                                    <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                </div>
                                                            </div>   

                                                            <div class="btn-form col-xs-12 text-center margin-t-50" style="margin-top: 0px;">
                                                                <a href="#" class="btn btn-border text-normal">Enroll</a>
                                                            </div>                       
                                                                              
                                                      </div>                                                      
                                                    </div>
                                                  </div>
                                                </div>



                                        </div>  
                                    </div>                               
                                </div>
                            </div>
                        </div> <!-- /.single-comment -->

                    </div> <!-- /.each-features -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->

</xsl:template>

</xsl:stylesheet>
