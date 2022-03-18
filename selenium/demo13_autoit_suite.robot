* Settings *

Library     SeleniumLibrary
Library     AutoItLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://john:john123@softwaretesting.com

TC2
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://softwaretesting.com
    Sleep    5s
    Send    Rasel
    Send    {TAB}
    Send    passwd123
    Send    {ENTER}