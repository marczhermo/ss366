<?php

class FAQViewLinkExtension extends \Extension
{
    public function updateExport(&$data, &$clientClassName)
    {
        if ($data['ClassName'] === FAQ::class
            && $faqPage = FAQPage::get()->first()) {
            $data['Link'] = $faqPage->Link('view') . '/' . $data['ID'];
        }
    }
}
