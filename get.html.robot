*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Get HTML Done negative
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-92 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#js-portfolio-form > input.portfolio__submit
    Page Should Contain Element  css=#js-portfolio-form > input.portfolio__input.validate.red_input
    Wait Until Keyword Succeeds	 3x	 4000ms  Input text  css=input.portfolio__input.validate.red_input  %.c
    Wait Until Keyword Succeeds	 3x	 4000ms  Click Element  css=#js-portfolio-form > input.portfolio__submit
    Element Should Contain  css=#email-error  Please enter a valid email address
    Wait Until Keyword Succeeds	 3x	 4000ms  Input text  css=input.portfolio__input.validate.red_input  %.c
    Press Key  css=input.portfolio__input.validate.red_input  \\08
    Press Key  css=input.portfolio__input.validate.red_input  \\08
    Press Key  css=input.portfolio__input.validate.red_input  \\08
    Element Should Contain  css=#email-error  This field is required

Get HTML Done
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-92 > a
    Input text  css=input.portfolio__input.validate  test_7777sok@gmail.com
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#js-portfolio-form > input.portfolio__submit
    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=#portfolio > div > div > h2  Thank you!
    ${thank_you_val}=  Get Value  css=#js-portfolio-form > input.portfolio__submit
    Wait Until Keyword Succeeds	 3x	 5000ms  Should Be Equal  ${thank_you_val}  Thank you!