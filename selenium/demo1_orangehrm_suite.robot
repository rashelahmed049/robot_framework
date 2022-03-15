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

TC3
    Open Browser    url=https://www.goto.com/meeting  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=truste-consent-button
    Click Element    xpath=/html/body/div[1]/div/div/div[2]/a[2]
    Input Text    id=fxb_a512f19c-8e3e-4303-9ad1-963cbc3fa7cc_Fields_fb2cee50-5717-4984-8774-561eb2580e16__Value    John
    Input Text    id=fxb_a512f19c-8e3e-4303-9ad1-963cbc3fa7cc_Fields_dd3e9cd9-4569-4016-915f-164ee8ce30b3__Value    Wick
    Input Text    id=fxb_a512f19c-8e3e-4303-9ad1-963cbc3fa7cc_Fields_8ac08105-d3fb-46ba-9270-6ba609fa9bb8__Value    John@gmail.com
    Input Text    id=fxb_a512f19c-8e3e-4303-9ad1-963cbc3fa7cc_Fields_b289515f-ac2d-47ea-bd08-5639050f214d__Value    1099
    Click Element    xpath=//*[@id="fxb_a512f19c-8e3e-4303-9ad1-963cbc3fa7cc_9b038a76-37a5-40c3-b894-cab4e546f206"]/input[50]