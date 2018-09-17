# FAQ
[![Build Status](https://api.travis-ci.org/d-rivera-c/silverstripe-faq.svg?branch=master.png)](https://travis-ci.org/d-rivera-c/silverstripe-faq)
[![Latest Stable Version](https://poser.pugx.org/d-rivera-c/silverstripe-faq/version.svg)](https://github.com/d-rivera-c/silverstripe-faq/releases)
[![Total Downloads](https://poser.pugx.org/d-rivera-c/silverstripe-faq/downloads.svg)](https://packagist.org/packages/d-rivera-c/silverstripe-faq)
[![License](https://poser.pugx.org/d-rivera-c/silverstripe-faq/license.svg)](https://github.com/d-rivera-c/silverstripe-faq/blob/master/LICENSE.md)
[![Dependency Status](https://www.versioneye.com/php/d-rivera-c:silverstripe-faq/badge.svg)](https://www.versioneye.com/php/d-rivera-c:silverstripe-faq)
[![Reference Status](https://www.versioneye.com/php/d-rivera-c:silverstripe-faq/reference_badge.svg)](https://www.versioneye.com/php/d-rivera-c:silverstripe-faq/references)

## Introduction

This module provides FAQ functionality on top of Solr.

Just by adding the module to the project, you'll get a ModelAdmin for FAQs, where you can manage Questions & Answers.
You only need to add an FAQPage type (comes with the module), and some questions and answers.

The module comes with its own Solr search index, customized to have a fuzzy search,
and has its own file for stopwords and synonyms.

## Requirements

 * [Fulltextsearch module](https://github.com/silverstripe-labs/silverstripe-fulltextsearch), v2.1.0 or up.
 * [Phockito](https://github.com/hafriedlander/silverstripe-phockito) and
 PHPunit for testing, not required if you don't care about running tests.

## Installation

    composer install d-rivera-c/silverstripe-faq

Run a database rebuild by visiting *http://yoursite.com/dev/build*. This will add the required database
columns and tables for the module to function.
Remember to do `Solr_Configure` and `Solr_ReIndex`.

##### If you are using CWP

Check how to configure this module to behave like CWP-Solr [on the docs](docs/en/cwp.md).


## Quickstart

1. Add a FAQPage to your CMS

    ![](docs/images/faq-pagetype.png)

2. Add an FAQ on the FAQ ModelAdmin sidebar link

    ![](docs/images/faq-modeladmin.png)

3. Wait for Solr to reindex
4. Search your FAQ page :)

    ![](docs/images/faq-frontend.png)

## Features

- [Featured FAQs](docs/en/features.md)
- [Categories](docs/en/features.md)

## Links

- [Module configuration](docs/en/configuration.md)
- [Configuring Solr](docs/en/configure-solr.md)
- [Using CWP](docs/en/cwp.md)


## TODO

- Get static config variables from yml files for controller
- Pagetypes, search index and dataobjects easily extendable
- version FAQs (?)
