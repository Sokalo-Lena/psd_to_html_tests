*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Convert your
    Element Should Contain  css=div > span.convert-info__title  Convert Your
    Page Should Contain Element  css=div.convert > div.convert-info > div > div > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=div.convert-info > div > div > a
    Go Back
    Page Should Contain Element  css=span.btn-yellow.convert-info__btn.js-popup
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=span.btn-yellow.convert-info__btn.js-popup
    Element Should Contain  css=#pop-start-project > span.popup__title  Start Your Project
    Close Window

Our Portfolio
    Element Should Contain  css=#page-body > div:nth-child(4) > div > div > div > h2  Portfolio
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-165 > a
    Go Back

Technologies
    Element Should Contain  css=div.technologies > div > div > h2  Technologies
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=div.technologies > div > div > div > button.slick-prev.slick-arrow
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=div.technologies > div > div > div > button.slick-next.slick-arrow

Testimonials
    Element Should Contain  css=#testimonials > div > div > h2  Testimonials
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=div > button.slick-prev.slick-arrow
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=div > button.slick-next.slick-arrow

Partner
    Element Should Contain  css=#partners > div > div > h2  Partner

Get Your PSD converted
    Element Should Contain  css=div:nth-child(8) > div > div > div > span:nth-child(1)  Get Your
    Page Should Contain Element  css=div:nth-child(8) > div > div > span
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=div:nth-child(8) > div > div > span
    Element Should Contain  css=#pop-start-project > span.popup__title  Start Your Project
    Close Window





