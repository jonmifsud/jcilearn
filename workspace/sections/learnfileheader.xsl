<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/learnfilesubheader.xsl"/>

    
    <xsl:template  name='learnfileheader'>

        <xsl:call-template name="learnfilesubheader"/>          

        <div class="col-xs-12 each-features"> 
            <div class="tab-item">
                <div class="tab-inner">    
                    <div role="tabpanel">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#modules" data-toggle="tab">Modules</a></li>
                            <li role="presentation"><a href="#projects" data-toggle="tab">Projects</a></li>
                            <li role="presentation"><a href="#stories" data-toggle="tab">Stories</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="modules">
                                
                            </div> <!-- End: .tab-pane -->
                            <div role="tabpanel" class="tab-pane" id="projects">
                                
                            </div> <!-- End: .tab-pane -->
                            <div role="tabpanel" class="tab-pane" id="stories">

                            </div> <!-- End: .tab-pane -->
                        </div> <!-- End: .tab-content -->
                    </div>
                </div>
            </div> <!-- End: .each-item -->
        </div>

    </xsl:template>

</xsl:stylesheet>