<?php

class datasourcemy_projects extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'my-projects';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamPARAMOUTPUT = array(
        'images'
        );
    public $dsParamSORT = 'system:id';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamFILTERS = array(
        'system:id' => '{$project-id}',
        '267' => '{$member-id}',
    );

    public $dsParamINCLUDEDELEMENTS = array(
        'system:pagination',
        'system:date',
        'title: formatted',
        'title: unformatted',
        'subtitle: formatted',
        'subtitle: unformatted',
        'text: formatted',
        'text: unformatted',
        'date',
        'user',
        'status',
        'overview: formatted',
        'overview: unformatted',
        'problem: formatted',
        'problem: unformatted',
        'proposedsolution: formatted',
        'proposedsolution: unformatted',
        'stakeholders: formatted',
        'stakeholders: unformatted',
        'partners: formatted',
        'partners: unformatted',
        'strategy: formatted',
        'strategy: unformatted',
        'outcome: formatted',
        'outcome: unformatted',
        'lessonlearnt: formatted',
        'lessonlearnt: unformatted',
        'category',
        'images',
        'marketing-materials'
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }

    public function about()
    {
        return array(
            'name' => 'My Projects',
            'author' => array(
                'name' => 'Jonathan Mifsud',
                'website' => 'http://jci-learn.dev',
                'email' => 'jonathan@maze.digital'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2017-02-06T07:27:47+00:00'
        );
    }

    public function getSource()
    {
        return '78';
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