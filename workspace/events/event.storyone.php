<?php

class eventstoryone extends SectionEvent
{
    public $ROOTELEMENT = 'storyone';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'storyone',
            'author' => array(
                'name' => 'Zack Zili',
                'website' => 'http://localhost/jcilearn',
                'email' => 'zzftn90@gmail.com'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-12-21T10:21:56+00:00',
            'trigger-condition' => 'action[storyone]'
        );
    }

    public static function getSource()
    {
        return '79';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;storyone result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/storyone></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;storyone result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/storyone></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>title
        &lt;input name="fields[title]" type="text" />
    &lt;/label>
    &lt;label>subtitle
        &lt;input name="fields[subtitle]" type="text" />
    &lt;/label>
    &lt;label>text
        &lt;input name="fields[text]" type="text" />
    &lt;/label>
    &lt;label>date
        &lt;input name="fields[date]" type="text" />
    &lt;/label>
    &lt;input name="fields[user]" type="hidden" value="…" />
    &lt;input name="action[storyone]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost/jcilearn/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['storyone'])) {
            return $this->__trigger();
        }
    }

}
