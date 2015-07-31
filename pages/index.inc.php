<?php

/**
 * YCountries Addon
 * @author Yakamara Media GmbH & Co. KG
 * @author thomas.blum@redaxo.org
 * @package redaxo4.6
 */

include rex_path::core('layout/top.php');

rex_title('YCountries');

$func = rex_request('func', 'string');
$sort = rex_request('sort', 'string');
$id = rex_request('id', 'int');

if ('' == $func) {

    $orderby = '';
    if ($sort == '') {
        $orderby = ' ORDER BY `prior`, `en_gb`';
    }

    $query = 'SELECT `id`, `en_gb`, `de_de`, `code2`, `code3`, `tld`, `vehicle_code`, `phone_code`, `postcode_required`, `is_eu` FROM ' . $REX['TABLE_PREFIX'] . 'ycountries' . $orderby;
    $list = rex_list::factory($query, 300, 'ycountries');

    $imgHeader = '<a class="rex-i-element rex-i-article-add" href="' . $list->getUrl(['func' => 'add']) . '"><span class="rex-i-element-text">' . $I18N->msg('ycountries_add') . '</span></a>';
    $list->addColumn($imgHeader, '<span class="rex-i-element rex-i-article"><span class="rex-i-element-text">' . $I18N->msg('ycountries_edit') . '</span></span>', 0, ['<th class="rex-icon">###VALUE###</th>', '<td class="rex-icon">###VALUE###</td>']);
    $list->setColumnParams($imgHeader, ['func' => 'edit', 'id' => '###id###']);

    $list->removeColumn('id');

    $list->setColumnSortable('en_gb');
    $list->setColumnSortable('de_de');
    $list->setColumnSortable('code2');
    $list->setColumnSortable('code3');

    $list->setColumnLabel('en_gb', $I18N->msg('ycountries_en_gb'));
    $list->setColumnLabel('de_de', $I18N->msg('ycountries_de_de'));
    $list->setColumnLabel('code2', $I18N->msg('ycountries_code2'));
    $list->setColumnLabel('code3', $I18N->msg('ycountries_code3'));
    $list->setColumnLabel('tld', $I18N->msg('ycountries_tld'));
    $list->setColumnLabel('vehicle_code', $I18N->msg('ycountries_vehicle_code'));
    $list->setColumnLabel('phone_code', $I18N->msg('ycountries_phone_code'));
    $list->setColumnLabel('postcode_required', $I18N->msg('ycountries_postcode_required'));
    $list->setColumnLabel('is_eu', $I18N->msg('ycountries_is_eu'));

    $list->addColumn('edit', $I18N->msg('ycountries_edit'), -1, ['<th colspan="2"></th>', '<td style="text-align:center;">###VALUE###</td>']);
    $list->setColumnParams('edit', ['func' => 'edit', 'id' => '###id###']);

    $list->addColumn('delete', $I18N->msg('ycountries_delete'), -1, ['', '<td style="text-align:center;">###VALUE###</td>']);
    $list->setColumnParams('delete', ['func' => 'delete', 'id' => '###id###']);
    $list->addLinkAttribute('delete', 'onclick', "return confirm('" . $I18N->msg('ycountries_delete_question') . "');");

    $list->show();

} else {

    $fieldset = $func == 'edit' ? $I18N->msg('ycountries_form') . ' ' . $I18N->msg('ycountries_edit') : $I18N->msg('ycountries_form') . ' ' . $I18N->msg('ycountries_add');
    $form = rex_form::factory($REX['TABLE_PREFIX'] . 'ycountries', $fieldset, 'id = ' . $id);
    $form->addParam('id', $id);
    if ($sort != '') {
        $form->addParam('sort', $sort);
    }
    $form->setEditMode($func == 'edit');
    $add = $func != 'edit';

    $field = $form->addPrioField('prior');
    $field->setLabel($I18N->msg('ycountries_prior'));
    $field->setLabelField('en_gb');
    //$field->setWhereCondition('id = '. $id);


    $field = $form->addTextField('en_gb');
    $field->setLabel($I18N->msg('ycountries_en_gb'));
    $field->getValidator()->add('notEmpty', $I18N->msg('ycountries_en_gb_empty'));

    $field = $form->addTextField('de_de');
    $field->setLabel($I18N->msg('ycountries_de_de'));
    $field->getValidator()->add('notEmpty', $I18N->msg('ycountries_de_de_empty'));

    $field = $form->addTextField('code2');
    $field->setLabel($I18N->msg('ycountries_code2'));
    $field->getValidator()->add('notEmpty', $I18N->msg('ycountries_code2_empty'));

    $field = $form->addTextField('code3');
    $field->setLabel($I18N->msg('ycountries_code3'));
    $field->getValidator()->add('notEmpty', $I18N->msg('ycountries_code3_empty'));

    $field = $form->addTextField('tld');
    $field->setLabel($I18N->msg('ycountries_tld'));

    $field = $form->addTextField('vehicle_code');
    $field->setLabel($I18N->msg('ycountries_vehicle_code'));

    $field = $form->addTextField('phone_code');
    $field->setLabel($I18N->msg('ycountries_phone_code'));
    $field->getValidator()->add('notEmpty', $I18N->msg('ycountries_phone_code_empty'));

    $field = $form->addSelectField('postcode_required');
    $field->setLabel($I18N->msg('ycountries_postcode_required'));
    $select = $field->getSelect();
    $select->setSize(1);
    $select->addOption($I18N->msg('ycountries_no'), 0);
    $select->addOption($I18N->msg('ycountries_yes'), 1);

    $field = $form->addSelectField('is_eu');
    $field->setLabel($I18N->msg('ycountries_is_eu'));
    $select = $field->getSelect();
    $select->setSize(1);
    $select->addOption($I18N->msg('ycountries_no'), 0);
    $select->addOption($I18N->msg('ycountries_yes'), 1);


    $form->show();

}

include rex_path::core('layout/bottom.php');
