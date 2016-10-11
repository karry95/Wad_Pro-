
<?php
    // Load the XML source
$xml = new DOMDocument;
$xml->load('rss.xml');
$xsl = new DOMDocument;
$xsl->substituteEntities = true; 
$xsl->load('rsstrans.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);


/*
 * PHP SimpleXML
 * Loading a XML from a file, adding new elements and editing elements
 */


    writeRSS();
    function writeRSS(){
        if (file_exists('rss.xml')) {
            $nameBox = $_POST["nameBox"];
            $textArea = $_POST["textArea"];
            //loads the xml and returns a simplexml object
            $rssxml = simplexml_load_file('rss.xml');
            $newChild = $rssxml->channel->addChild('item');
            $newChild->addChild('title', "User Comments");
            $newChild->addChild('link', 'https://wad-pro-raffriff.c9users.io');
            $newChild->addChild('description', $nameBox ."Posted a comment");
            file_put_contents('rss.xml', $rssxml->asXML());
        }
    }
?>