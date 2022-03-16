* Settings *

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.google.com
    ${title}    Get Title
    Log To Console    ${title}
    ${url}  Get Location
    Log To Console    ${url}
    Set Selenium Speed    1s
    Press Keys      name=q  hello world
    Press Keys      none    ARROW_DOWN
    Press Keys      none    ARROW_DOWN
    Press Keys      none    ARROW_DOWN
    Press Keys      none    ENTER

TC2
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.myntra.com
    Mouse Over    xpath=//span[text()='Profile']
    Click Element    xpath=//a[text()='login / Signup']
TC3
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.nasscom.in/
    Mouse Over    link=Membership
    Click Element    link=Members Listing
    
    Wait Until Page Contains Element    xpath=//input[@id='edit-title']
    ${title}    Get Title
    Log To Console    ${title}
    Should Be Equal   ${title}     Members Listing | NASSCOM