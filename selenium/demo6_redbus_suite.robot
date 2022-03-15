* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://redbus.in
    Click Element    id=i-icon-profile
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    78458
    Unselect Frame
    [Teardown]  Close Browser