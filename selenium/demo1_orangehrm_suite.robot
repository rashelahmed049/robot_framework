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
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    sat
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    78988
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    sat
    Table Should Contain    id=emgcontact_list    78988