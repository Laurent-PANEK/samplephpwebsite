<?php

use PHPUnit\Framework\TestCase;

require 'config.php';
require 'functions.php';

class FunctionTest extends TestCase
{
    public function testConfig()
    {
        $conf_version = config('version');
        $this->assertSame($conf_version, 'v2.0');

        $conf_null = config('iamdummy');
        $this->assertSame($conf_null, null);
    }

    public function testSiteName()
    {
        $output = config('name');
        $this->expectOutputString($output);
        siteName();
    }

    public function testSiteVersion()
    {
        $output = config('version');
        $this->expectOutputString($output);
        siteVersion();
    }
}
