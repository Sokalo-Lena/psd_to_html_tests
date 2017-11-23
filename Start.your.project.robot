*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Start your project negative
    Wait Until Keyword Succeeds	 3x	 1000ms  Element Should Contain  css=div > span.convert-info__title  Convert Your
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=div > span.btn-yellow.convert-info__btn.js-popup
    Element Should Contain  css=span.popup__title  Start Your Project
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=div.pop-start-project__submit-block.clearfix > input
    Page Should Contain Element  css=input.pop-start-project__input.validate.red_input
    Wait Until Keyword Succeeds	 3x	 1000ms  Input text  css=div:nth-child(6) > div > label:nth-child(2) > input  %$55mail.com
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=div.pop-start-project__submit-block.clearfix > input
    Element Should Contain  css=#email-error  Please enter a valid email address

Start your project positive
    Wait Until Keyword Succeeds	 3x	 1000ms  Element Should Contain  css=div > span.convert-info__title  Convert Your
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=div > span.btn-yellow.convert-info__btn.js-popup
    Element Should Contain  css=span.popup__title  Start Your Project
    Execute Javascript	$('.project-type__label:nth-child(2)').addClass('active'); $('.project-type__label:nth-child(1)').removeClass('active');
    Execute Javascript	$('.project-type__label:nth-child(3)').addClass('active'); $('.project-type__label:nth-child(2)').removeClass('active');
    Input Text  css=#username  Lena
    Input Text  css=div:nth-child(6) > label > input  lenoka67
    Input Text  css=div:nth-child(6) > div > label:nth-child(2) > input  test_7777sok@gmail.com
    Input Text  css=div > label.label.clearfix.pop-start-project__wrap-textarea > textarea  Hellow
    Input Text  css=div.project-type__wrap.pop-start-project__wrap-psd > div > label:nth-child(1) > input  https://www.facebook.com/
    Click Element  css=div.pop-start-project__submit-block.clearfix > input
    Page Should Contain  Your order was successfully placed.
    Mouse Over  css=span.popup__title
    Wait Until Keyword Succeeds	 3x	 1000ms  Click Element  css=#pop-successful > div.popup__terms__close > span

