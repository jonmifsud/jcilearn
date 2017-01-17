<?php

class eventcreateuser extends SectionEvent
{
    public $ROOTELEMENT = 'createuser';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'createuser',
            'author' => array(
                'name' => 'Zack Zili',
                'website' => 'http://localhost/jcilearn',
                'email' => 'zzftn90@gmail.com'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-12-21T16:36:27+00:00',
            'trigger-condition' => 'action[createuser]'
        );
    }

    public static function getSource()
    {
        return '2';
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
                <pre class="XML"><code>&lt;createuser result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/createuser></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;createuser result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/createuser></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>name
        &lt;input name="fields[name]" type="text" />
    &lt;/label>
    &lt;label>Surname
        &lt;input name="fields[surname]" type="text" />
    &lt;/label>
    &lt;label>Address
        &lt;input name="fields[address]" type="text" />
    &lt;/label>
    &lt;label>your-biography
        &lt;input name="fields[your-biography]" type="text" />
    &lt;/label>
    &lt;label>short-text
        &lt;input name="fields[short-text]" type="text" />
    &lt;/label>
    &lt;label>email
        &lt;input name="fields[email]" type="text" />
    &lt;/label>
    &lt;fieldset>
        &lt;label>password
            &lt;input name="fields[password][password]" type="password" />
        &lt;/label>
        &lt;label>password Confirm
            &lt;input name="fields[password][confirm]" type="password" />
        &lt;/label>
    &lt;/fieldset>
    &lt;label>role
        &lt;select name="fields[role]">
            &lt;option value="1">Public&lt;/option>
            &lt;option value="2">developer&lt;/option>
            &lt;option value="3">designer&lt;/option>
        &lt;/select>
    &lt;/label>
    &lt;input name="action[createuser]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost/jcilearn/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['createuser'])) {
            return $this->__trigger();
        }
    }

}
