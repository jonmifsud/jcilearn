<?php
class datasourcecommentboxtolearn extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'commentboxtolearn';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'yes';
    public $dsParamLIMIT = '6';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamSORT = 'system:creation-date';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';

    public $dsParamINCLUDEDELEMENTS = array(
        'system:pagination',
        'system:date',
        'text: formatted',
        'text: unformatted',
        'description: formatted',
        'description: unformatted',
        'name-of-user',
        'data',
        'item'
    );
    
    public $dsParamINCLUDEDASSOCIATIONS = array(
        'name-of-user' => array(
            'section_id' => '2',
            'field_id' => '4',
            'elements' => array(
                'name',
                'profile'
            )
        ),
        'item' => array(
            'section_id' => '21',
            'field_id' => '73',
            'elements' => array(
                'title: formatted',
                'title: unformatted',
                'text: formatted',
                'profile',
                'lesson-text-box',
                'interactiv-box',
                'like-views',
                'commentbox',
                'comment-box-to-learn'
            )
        )
    );
    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }
    public function about()
    {
        return array(
            'name' => 'commentboxtolearn',
            'author' => array(
                'name' => 'Zack Zili',
                'website' => 'http://localhost/jcilearn',
                'email' => 'zzftn90@gmail.com'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-11-30T09:45:12+00:00'
        );
    }
    public function getSource()
    {
        return '72';
    }
    public function allowEditorToParse()
    {
        return true;
    }
    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);
        try{
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
            return $result;
        }
        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }
        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }
        return $result;
    }
}