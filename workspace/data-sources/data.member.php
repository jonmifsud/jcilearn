<?php

class datasourcemember extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'member';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamREQUIREDPARAM = '$member-id';
    public $dsParamSORT = 'system:id';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamFILTERS = array(
        'system:id' => '{$member-id}',
    );

    public $dsParamINCLUDEDELEMENTS = array(
        'system:pagination',
        'system:date',
        'name',
        'surname',
        'your-biography: formatted',
        'your-biography: unformatted',
        'short-text: formatted',
        'short-text: unformatted',
        'email',
        'password',
        'access',
        'access: permissions',
        'address',
        'interests',
        'role',
        'photo',
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }

    public function about()
    {
        return array(
            'name' => 'Member',
            'author' => array(
                'name' => 'Jonathan Mifsud',
                'website' => 'http://jci-learn.dev',
                'email' => 'jonathan@maze.digital'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2017-01-28T20:41:17+00:00'
        );
    }

    public function getSource()
    {
        return '2';
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