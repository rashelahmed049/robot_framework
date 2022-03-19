***Settings ****

Library     SeleniumLibrary
Library     AutoItLibrary

*** Test Cases ***
TC1

TC2
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://demo.openemr.io/b/openemr
    ${text}     Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${text}
    Should Be Equal    ${text}   The most popular open-source Electronic Health Record and Medical Practice Management solution.

