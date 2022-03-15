* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    [Documentation]     Validates whether user gets error message for mobile number or not Mobile Number should be of 10 digits
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    Rasel
    Input Text    id=getInTouchEmail    heymedi@gmail.com
    Input Text    id=getInTouchMobile   12345
    Input Text    id=getInTouchDesignation    student
    Input Text    id=getInTouchEmpCount    25
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    //div[contains(text(),'digits')]    Mobile Number should be 10 digits
    [Teardown]      Close Browser