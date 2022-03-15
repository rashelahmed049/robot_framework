* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    Rasel
    Input Text    id=getInTouchEmail    rashelahmed049@gmail.com
    Input Text    id=getInTouchMobile   7002605059
    Input Text    id=getInTouchDesignation    student
    Input Text    id=getInTouchEmpCount    25
    Click Element    xpath=//button[text()='Get in Touch']
    Close Window