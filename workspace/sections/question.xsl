<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='lesson']//entry" mode='quiz-modal'>
      
        <div class="modal fade" id="quiz-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
          <div class="modal-dialog" role="document">

            <div class="modal-content" style=" border: 2px solid #3496DA;">
              <div class="modal-header " style="border: 0px; margin: 10px;"> 
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;">X</span></button>

                <h2 class="section-heading">MINIQUIZ</h2> 
                
              </div>
              <div class='row quiz-result-container'>
                    
                    <xsl:for-each select='quiz/item'>
                        <xsl:apply-templates select='/data/questions/entry[@id = current()/@id]' mode='question'>
                            <xsl:with-param name='index' select='position()'/>
                        </xsl:apply-templates>
                    </xsl:for-each> 

                    <div class="btn-form col-xs-12 text-center margin-t-20 margin-b-20">
                        <a href="#" class="btn btn-border text-normal js-submit-quiz" data-entry='{@id}' data-field='{completed/@field-id}' data-current='{completed/@current-member}'>Submit</a>
                    </div>                       
                                      
              </div>                                                      
            </div>
          </div>
        </div>
    </xsl:template>

    <xsl:template match="*[section/@handle='question']//entry" mode='question'>
        <xsl:param name='index' select='position()'/>

        <div class="question-wrapper col-md-8 col-md-offset-2">
            <xsl:if test='../section/@handle="question"'>
              <input name="quiz[{$index}][id]" type="hidden" value='{@id}' />
            </xsl:if>

            <xsl:apply-templates select='title[@mode="formatted"]' mode='html-child'/>

            <xsl:apply-templates select='answers/item' mode='answer'>
                <xsl:with-param name='index' select='$index' />
                <xsl:with-param name='correct-answer' select='correct-answer/item' />
            </xsl:apply-templates>
        </div>


    </xsl:template>

    <xsl:template match="*[section/@handle='question']//entry" name='question-form' mode='question-form'>
        <xsl:param name='index' select='position()'/>



        <div class="question-wrapper">
            <xsl:if test='../section/@handle="question"'>
              <input name="quiz[{$index}][id]" type="hidden" value='{@id}' />
            </xsl:if>

            <h3 class="title-centre">QUESTION</h3>
            <input name="quiz[{$index}][question]" type="text" value='{title[@mode="unformatted"]}' />
            <h3 class="title-centre">Answers</h3>
            <xsl:apply-templates select='answers/item' mode='answer-form'>
                <xsl:with-param name='index' select='$index' />
                <xsl:with-param name='correct-answer' select='correct-answer/item' />
            </xsl:apply-templates>
            <xsl:if test='$index="template"'>
              <xsl:call-template name='answer-form'>
                <xsl:with-param name='index' select='$index' />
                <xsl:with-param name='position' select='"1"' />
              </xsl:call-template>
              <xsl:call-template name='answer-form'>
                <xsl:with-param name='index' select='$index' />
                <xsl:with-param name='position' select='"2"' />
              </xsl:call-template>
              <xsl:call-template name='answer-form'>
                <xsl:with-param name='index' select='$index' />
                <xsl:with-param name='position' select='"3"' />
              </xsl:call-template>
            </xsl:if>
        </div>


    </xsl:template>
  
    <xsl:template match="*[section/@handle='answer']//entry | item[@section-handle='answer']" mode='answer'>
        <xsl:param name='index' select='""'/>
        <xsl:param name='position' select='position()'/>
        <xsl:param name='correct-answer' select='false()'/>
        <xsl:param name='checked' select='$correct-answer and current()/@id = $correct-answer/@id'/>

        <div class='answer-wrapper text-left'>
            <input type='radio' id='answer{@id}-{$position}' name='quiz[{$index}][correct-answer][]' value='{$position}'>
              <xsl:if test='$checked'>
                <xsl:attribute name='data-correct'>true</xsl:attribute>
              </xsl:if>
            </input>
            <label class='select-check-box' for='answer{@id}-{$position}'> 
                <div class='check-box inline'></div>
                <xsl:apply-templates select='answer[@mode="formatted"]' mode='html-child'/>
            </label>
        </div>


    </xsl:template>
  
    <xsl:template match="*[section/@handle='answer']//entry | item[@section-handle='answer']" name='answer-form' mode='answer-form'>
        <xsl:param name='index' select='""'/>
        <xsl:param name='position' select='position()'/>
        <xsl:param name='correct-answer' select='false()'/>
        <xsl:param name='checked' select='$correct-answer and current()/@id = $correct-answer/@id'/>

        <div class='input-wrapper'>
            <input type='radio' id='answer{@id}-{$position}' name='quiz[{$index}][correct-answer][]' value='{$position}'>
              <xsl:if test='$checked'>
                <xsl:attribute name='checked'>checked</xsl:attribute>
              </xsl:if>
            </input>
            <label class='input-checkbox' for='answer{@id}-{$position}'></label>
            <input name="quiz[{$index}][answer][{$position}]" type="text" value='{answer}'/>
        </div>


    </xsl:template>

</xsl:stylesheet>