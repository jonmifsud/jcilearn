<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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