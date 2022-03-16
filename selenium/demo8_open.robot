*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://demo.openemr.io/b/openemr