*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Projects
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#menu-item-489 > a
    Element Should Contain  css=#page-body > div.projects > div.projects__head > div > div > span  Our
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=div > div:nth-child(2) > a > div > img
    Click Element  css=#tab2 > div.projects__nav.clearfix > a:nth-child(2)
    Click Element  css=div > div:nth-child(3) > a > div > img
    Click Element  css=#tab3 > div.projects__nav.clearfix > a:nth-child(2)
    Click Element  css=div > div:nth-child(4) > a > div > img
    Click Element  css=#tab4 > div.projects__nav.clearfix > a:nth-child(2)
    Click Element  css=div.slick-slide.slick-current.slick-active > a > div > img
    Click Element  css=#tab1 > div.projects__nav.clearfix > a:nth-child(2)