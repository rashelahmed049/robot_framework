*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser
*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${alert}    Handle Alert   action=ACCEPT    timeout=50s
    Log To Console    ${alert}

TC2
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://nasscom.in/nasscom-membership
    Click Element    id=edit-submitted-contact-person-for-nasscom-email-id-cp
    ${alert}    Handle Alert    action=ACCEPT   timeout=50s
    Log To Console    ${alert}


