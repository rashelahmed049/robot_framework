*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-field-business-focus-inst-und-968
    Input Text    id=edit-title    LT
    Input Text    id=edit-field-address-line-1-und-0-value    20Chennai
    Select From List By Label    id=edit-field-state-member-und     Tamil Nadu
    Select From List By Label    id=edit-field-city-membership-und  Chennai
    Click Element    id=edit-field-mode-of-payment-und-1
    Click Element    id=edit-field-code-of-conduct-und-0
    Click Element    id=edit-preview
