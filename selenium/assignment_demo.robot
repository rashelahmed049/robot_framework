* Settings *

Library     SeleniumLibrary
Library     OperatingSystem

* Test Cases *
TC1
    Open Browser    url=https://www.goto.com/meeting  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text    xpath=//input[@data-sc-field-name='firstName']   John
    Input Text    xpath=//input[@data-sc-field-name='lastName']   Wick
    Input Text    xpath=//input[@data-sc-field-name='email']   John@gmail.com
    Select From List By Label    xpath=//select[@data-sc-field-name='employees']     10 - 99
    Click Element    xpath=//input[@type='submit']

