<?php

global $project;
$project = 'mysite';

global $database;
$database = '';

require_once 'conf/ConfigureFromEnv.php';

// Set the site locale
i18n::set_locale('en_US');

/**
 * Configure Solr.
 */
if (!class_exists('Solr')) {
    return;
}

// get options from configuration
$options = Config::inst()->get('CwpSolr', 'options');
$solrOptions = array(
    'host' => defined('SOLR_SERVER') ? SOLR_SERVER : 'localhost',
    'port' => defined('SOLR_PORT') ? SOLR_PORT : 8983,
    'path' => defined('SOLR_PATH') ? SOLR_PATH : '/solr/',
    'version' => 4,

    'indexstore' => array(
        'mode' => defined('SOLR_MODE') ? SOLR_MODE : 'file',
        'auth' => defined('SOLR_AUTH') ? SOLR_AUTH : null,

        // Allow storing the solr index and config data in an arbitrary location,
        // e.g. outside of the webroot
        'path' => defined('SOLR_INDEXSTORE_PATH') ? SOLR_INDEXSTORE_PATH : BASE_PATH . '/.solr',
        'remotepath' => defined('SOLR_REMOTE_PATH') ? SOLR_REMOTE_PATH : null
    )
);

Solr::configure_server($solrOptions);
