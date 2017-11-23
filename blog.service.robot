*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Blog
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#menu-item-191 > a
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#post-447 > h2 > a
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Link  WooCommerce Optional Development Features

About us
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#menu-item-191 > a
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#post-229 > h2 > a

Services
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#menu-item-563 > a
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=div.right_side > ul > li:nth-child(1) > a
    Go Back
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=div.right_side > ul > li:nth-child(2) > a
    Go Back
    Wait Until Keyword Succeeds  3x	 2000ms  Click Element  css=div.right_side > ul > li:nth-child(3) > a
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=div:nth-child(4) > div.container > div > div > div.paginations > a:nth-child(1)
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=div:nth-child(4) > div.container > div > div > div.paginations > a:nth-child(2)


