<?php

class IstitutoLadinoOperators
{
    function operatorList()
    {
        return array(
            'page_block',
        );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array(
            'page_block' => array(
                'name' => array("type" => "string", "required" => true, "default" => false),
                'type' => array("type" => "string", "required" => true, "default" => false),
                'view' => array("type" => "string", "required" => true, "default" => false),
                'custom_attributes' => array("type" => "array", "required" => false, "default" => array()),
                'valid_nodes' => array("type" => "array", "required" => false, "default" => array())                
            )
        );
    }

    function modify(
        $tpl,
        $operatorName,
        $operatorParameters,
        $rootNamespace,
        $currentNamespace,
        &$operatorValue,
        $namedParameters
    )
    {
        switch ($operatorName) {
            case 'page_block':

                $block = new eZPageBlock($namedParameters['name'], $namedParameters);
                $block->setAttribute('id', md5(mt_rand() . microtime()));
                $block->setAttribute('valid_nodes', $namedParameters['valid_nodes']);
                
                $operatorValue = $block;

                break;
        }            
    }
}
