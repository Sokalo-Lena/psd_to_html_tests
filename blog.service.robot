*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Blog
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#menu-item-191 > a vygyhb
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#post-447 > h2 > a vvhgy
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Link  WooCommerce Optional Development Features

About us
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#menu-item-191 > a
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#post-447 > h2 > a vvffuyfghj

Services
    Wait Until Keyword Succeeds  3x	 1000ms  Click Element  css=#menu-item-535 > a
    Wait Until Keyword Succeeds  3x	 1000ms  Click Link  Next
    Wait Until Keyword Succeeds  3x	 1000ms  Page Should Contain Image  css=div.items > div:nth-child(1) > img
    Wait Until Keyword Succeeds  3x	 1000ms  Page Should Contain Image  css=div.items > div:nth-child(2) > img
    Wait Until Keyword Succeeds  3x	 1000ms  Page Should Contain Image  css=div.items > div:nth-child(3) > img
    Wait Until Keyword Succeeds  3x	 1000ms  Page Should Contain Image  css=div.items > div:nth-child(4) > img
    Wait Until Keyword Succeeds  3x	 1000ms  Click Link  Prev
