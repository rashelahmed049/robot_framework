* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId   test123
    Click Element    partial link=CONTINUE
    Unselect Frame
    [Teardown]  Close Browser
