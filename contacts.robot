*** Settings ***
Documentation    Suite description
Resource         _resource.robot
Test Setup       Prepare Test Environment
Test Teardown    Close All Browsers

*** Test Cases ***
Contacts negative empty email
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-96 > a
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=#contact_form > input
    Page Should Contain Element  css=#contact_form > label:nth-child(2) > input

Contacts negative invalid email and name
    Wait Until Keyword Succeeds	 3x	 2000ms  Input text  css=#contact_form > label:nth-child(2) > input  123qw.rew
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=#contact_form > input
    Element Should Contain  css=#email-error  Please enter a valid email address
    Input text  css=#contact_form > label:nth-child(1) > input  kk
    Input text  css=#contact_form > label.label.label-message > textarea  ha
    Wait Until Keyword Succeeds	 3x	 2000ms  Input text  css=#contact_form > label:nth-child(2) > input  123qw.rew
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=#contact_form > input
    Press Key  css=#contact_form > label:nth-child(1) > input  \\08
    Press Key  css=#contact_form > label:nth-child(1) > input  \\08
    Press Key  css=#contact_form > label.label.label-message > textarea  \\08
    Press Key  css=#contact_form > label.label.label-message > textarea  \\08
    Element Should Contain  css=#name-error  This field is required
    Element Should Contain  css=#text-error  This field is required

Contacts positive
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Element  css=#menu-item-96 > a
    Element Should Contain  css=#contacts > div > div > span  Get in touch with us!
    Input text  css=#contact_form > label:nth-child(1) > input  Lena
    Input text  css=#contact_form > label.label.label-message > textarea  Hellow
    Input text  css=#contact_form > label:nth-child(2) > input  test_7777sok@gmail.com
    Wait Until Keyword Succeeds	 3x	 2000ms  Click Button  css=#contact_form > input
    Wait Until Keyword Succeeds	 3x	 2000ms  Element Should Contain  css=#thanks-message > span  We will contact you.
    Wait Until Keyword Succeeds	 3x	 5000ms  Page Should Contain  Thank you!
    ${thank_you_val}=  Get Value  css=#contact_form > input
    Wait Until Keyword Succeeds	 3x	 5000ms  Should Be Equal  ${thank_you_val}  Thank you!