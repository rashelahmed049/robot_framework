* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://db4free.net/
    Click Element    partial link=phpMyAdmin »
    Switch Window   phpMyAdmin
    Input Text    input_username    admin
    Input Text    input_password    admin123
    Click Element    id=input_go
    Element Should Contain    xpath=//div[contains(text(),'Access')]   Access denied for user
    [Teardown]      Close Browser
