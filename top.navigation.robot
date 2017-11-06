*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Top navigation test
    Wait Until Keyword Succeeds	 3x	 2000ms  Page Should Contain Element  css=span.header__logo__text
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-91 > a
    Element Should Contain  css=#howitworks > div > div > h2  How It Works
    Click Element  css=#menu-item-92 > a
    Element Should Contain  css=#portfolio > div > div > h2  Get HTML Done!
    Click Element  css=#menu-item-93 > a
    Element Should Contain  css=#thech-spec > div > div > h2  Technical Specification
    Click Element  css=#menu-item-96 > a
    Element Should Contain  css=#contacts > div > div > span  Get in touch with us!
    Click Element  css=#menu-item-489 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-535 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-191 > a
