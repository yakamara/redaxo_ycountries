<?php

/**
 * YCountries Addon
 * @author Yakamara Media GmbH & Co. KG
 * @author thomas.blum@redaxo.org
 * @package redaxo4.6
 */

/** @var rex_addon $this */

echo rex_view::title('YCountries');

$func = rex_request('func', 'string');
$sort = rex_request('sort', 'string');
$id = rex_request('id', 'int');

if ('' == $func) {

    $orderby = '';
    if ($sort == '') {
        $orderby = ' ORDER BY `prior`, `en_gb`';
    }

    $query = 'SELECT `id`, `en_gb`, `de_de`, `code2`, `code3`, `tld`, `vehicle_code`, `phone_code`, `postcode_required`, `is_eu` FROM ' . rex::getTable('ycountries') . $orderby;
    $list = rex_list::factory($query, 300, 'ycountries');

    $imgHeader = '<a class="rex-i-element rex-i-article-add" href="' . $list->getUrl(['func' => 'add']) . '"><span class="rex-i-element-text">' . $this->i18n('add') . '</span></a>';
    $list->addColumn($imgHeader, '<span class="rex-i-element rex-i-article"><span class="rex-i-element-text">' . $this->i18n('edit') . '</span></span>', 0, ['<th class="rex-icon">###VALUE###</th>', '<td class="rex-icon">###VALUE###</td>']);
    $list->setColumnParams($imgHeader, ['func' => 'edit', 'id' => '###id###']);

    $list->removeColumn('id');

    $list->setColumnSortable('en_gb');
    $list->setColumnSortable('de_de');
    $list->setColumnSortable('code2');
    $list->setColumnSortable('code3');

    $list->setColumnLabel('en_gb', $this->i18n('en_gb'));
    $list->setColumnLabel('de_de', $this->i18n('de_de'));
    $list->setColumnLabel('code2', $this->i18n('code2'));
    $list->setColumnLabel('code3', $this->i18n('code3'));
    $list->setColumnLabel('tld', $this->i18n('tld'));
    $list->setColumnLabel('vehicle_code', $this->i18n('vehicle_code'));
    $list->setColumnLabel('phone_code', $this->i18n('phone_code'));
    $list->setColumnLabel('postcode_required', $this->i18n('postcode_required'));
    $list->setColumnLabel('is_eu', $this->i18n('is_eu'));

    $list->addColumn('edit', $this->i18n('edit'), -1, ['<th colspan="2"></th>', '<td style="text-align:center;">###VALUE###</td>']);
    $list->setColumnParams('edit', ['func' => 'edit', 'id' => '###id###']);

    $list->addColumn('delete', $this->i18n('delete'), -1, ['', '<td style="text-align:center;">###VALUE###</td>']);
    $list->setColumnParams('delete', ['func' => 'delete', 'id' => '###id###']);
    $list->addLinkAttribute('delete', 'onclick', "return confirm('" . $this->i18n('delete_question') . "');");

    $list->show();

} else {

    $fieldset = $func == 'edit' ? $this->i18n('form') . ' ' . $this->i18n('edit') : $this->i18n('form') . ' ' . $this->i18n('add');
    $form = rex_form::factory(rex::getTable('ycountries'), $fieldset, 'id = ' . $id);
    $form->addParam('id', $id);
    if ($sort != '') {
        $form->addParam('sort', $sort);
    }
    $form->setEditMode($func == 'edit');
    $add = $func != 'edit';

    $field = $form->addPrioField('prior');
    $field->setLabel($this->i18n('prior'));
    $field->setLabelField('en_gb');
    //$field->setWhereCondition('id = '. $id);


    $field = $form->addTextField('en_gb');
    $field->setLabel($this->i18n('en_gb'));
    $field->getValidator()->add('notEmpty', $this->i18n('en_gb_empty'));

    $field = $form->addTextField('de_de');
    $field->setLabel($this->i18n('de_de'));
    $field->getValidator()->add('notEmpty', $this->i18n('de_de_empty'));

    $field = $form->addTextField('code2');
    $field->setLabel($this->i18n('code2'));
    $field->getValidator()->add('notEmpty', $this->i18n('code2_empty'));

    $field = $form->addTextField('code3');
    $field->setLabel($this->i18n('code3'));
    $field->getValidator()->add('notEmpty', $this->i18n('code3_empty'));

    $field = $form->addTextField('tld');
    $field->setLabel($this->i18n('tld'));

    $field = $form->addTextField('vehicle_code');
    $field->setLabel($this->i18n('vehicle_code'));

    $field = $form->addTextField('phone_code');
    $field->setLabel($this->i18n('phone_code'));
    $field->getValidator()->add('notEmpty', $this->i18n('phone_code_empty'));

    $field = $form->addSelectField('postcode_required');
    $field->setLabel($this->i18n('postcode_required'));
    $select = $field->getSelect();
    $select->setSize(1);
    $select->addOption($this->i18n('no'), 0);
    $select->addOption($this->i18n('yes'), 1);

    $field = $form->addSelectField('is_eu');
    $field->setLabel($this->i18n('is_eu'));
    $select = $field->getSelect();
    $select->setSize(1);
    $select->addOption($this->i18n('no'), 0);
    $select->addOption($this->i18n('yes'), 1);


    $form->show();

}
