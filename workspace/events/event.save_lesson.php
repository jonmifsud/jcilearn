<?php

class eventsave_lesson extends SectionEvent
{
    public $ROOTELEMENT = 'save-lesson';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'save-lesson',
            'author' => array(
                'name' => 'Jonathan Mifsud',
                'website' => 'http://jci-learn.dev',
                'email' => 'jonathan@maze.digital'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2017-01-29T13:52:11+00:00',
            'trigger-condition' => 'action[save-lesson]'
        );
    }

    public static function getSource()
    {
        return '21';
    }

    public static function allowEditorToParse()
    {
        return false;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;save-lesson result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-lesson></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;save-lesson result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/save-lesson></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>text
        &lt;input name="fields[text]" type="text" />
    &lt;/label>
    &lt;label>title
        &lt;input name="fields[title]" type="text" />
    &lt;/label>
    &lt;label>subtitle
        &lt;input name="fields[subtitle]" type="text" />
    &lt;/label>
    &lt;input name="fields[profile]" type="hidden" value="…" />
    &lt;input name="fields[lesson-text-box]" type="hidden" value="…" />
    &lt;input name="fields[user]" type="hidden" value="…" />
    &lt;input name="fields[quiz]" type="hidden" value="…" />
    &lt;input name="action[save-lesson]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://jci-learn.dev/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['save-lesson'])) {

            $quiz = $_POST['fields']['quiz'];
            foreach ($quiz as $questionNumber => $question) {

                //if template does not need to be processed
                if ($questionNumber == 'template'){
                    unset($_POST['fields']['quiz']['template']);
                    continue;
                }

                $questionID = $question['id'];

                unset($question['id']);

                $answerIDs = array();
                $correctAnswerIDs = array();

                if (isset($questionID)){
                    //fetch ids of existing answers as they will be updated dynamically
                    $questionEntry = current(EntryManager::fetch($questionID));

                    $savedAnswers = $questionEntry->getData('315')['relation_id'];

                    // xsl is using index base 1 not 0 so increment for easy accessibility
                    foreach ($savedAnswers as $key => $answer) {
                        $answerIDs[$key+1] = $answer;
                    }

                } else {
                    $questionEntry = EntryManager::create();
                    $questionEntry->set('section_id',25);
                    $questionEntry->set('author_id',1);
                }

                //update each answer
                foreach ($question['answer'] as $key => $answer) {

                    if ($answerIDs[$key]){
                        $answerEntry = current(EntryManager::fetch($answerIDs[$key]));
                    } else {
                        $answerEntry = EntryManager::create();
                        $answerEntry->set('section_id',87);

                        $answerEntry->set('author_id',1);
                    }

                    $data = array('answer'=>$answer);
                    $answerEntry->checkPostData($data,$errors);

                    if (empty($errors)){
                        $answerEntry->setDataFromPost($data,$errors);
                        $answerEntry->commit();
                        $answerIDs[$key] = $answerEntry->get('id');
                    } else {
                        var_dump($errors);
                    }
                }

                foreach ($question['correct-answer'] as $key => $answer) {
                    $correctAnswerIDs[] = $answerIDs[$answer];
                }

                $question['answer'] = $answerIDs;

                $data = array(
                        'title' => $question['question'],
                        'answers' => $answerIDs,
                        'correct-answer' => $correctAnswerIDs

                    );

                $questionEntry->checkPostData($data,$errors);

                if (empty($errors)){
                    $questionEntry->setDataFromPost($data,$errors);
                    $questionEntry->commit();
                    $_POST['fields']['quiz'][$questionNumber] = $questionEntry->get('id');
                } else {
                    var_dump($errors);
                }

            }

            return $this->__trigger();
        }
    }

}
