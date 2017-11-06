*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Footer
    Wait Until Keyword Succeeds	 3x	 200ms   Mouse Over  css=span.footer__text
    Element Should Contain  css=div.footer-menu.footer-menu1 > h3  Services
    Element Should Contain  css=div.cont-all > h3  Address
    Element Should Contain  css=div.footer-menu.footer-menu3 > h3  Legal info
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-382 > a
    Element Should Contain  css=#post-371 > p > span  MONEY-BACK POLICY
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-380 > a
    Element Should Contain  css=#post-375 > span:nth-child(3)  Privacy Policy
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-381 > a
    Element Should Contain  css=div.projects__head.news-detail > div > div > h1 > span  Non-disclosure
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-383 > a
    Element Should Contain  css=span.popup__subtitle.project-type__subtitle.popup__terms__subtitle  PSDTOHTMLEXPERTS LLC
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=div.container > div > div > div.paginations > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=div.container > div > div > div.paginations > a:nth-child(1)
    Element Should Contain  css=div.footer-menu.footer-menu2 > h3  About us
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-386 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-468 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-469 > a

