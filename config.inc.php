<?php

/**
 * YCountries Addon
 * @author Yakamara Media GmbH & Co. KG
 * @author thomas.blum@redaxo.org
 * @package redaxo4.6
 */

$REX['ADDON']['name']['ycountries'] = 'YCountries';
$REX['ADDON']['perm']['ycountries'] = 'admin[]';
$REX['ADDON']['author']['ycountries'] = 'Yakamara GmbH & Co. KG';
$REX['ADDON']['version']['ycountries'] = '0.1';

if ($REX['REDAXO']) {
    $I18N->appendFile(__DIR__ . '/lang/');
}