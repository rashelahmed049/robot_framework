*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    #Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element   id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=Logout
TC2
    Open Browser    url=https://opensource-demo.orangehrmlive.com/  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element   id=btnLogin
    Click Element    xpath=//*[@id="menu_pim_viewMyDetails"]/b
    Click Element    locator