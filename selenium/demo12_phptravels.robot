*** Settings ***
Library     SeleniumLibrary
#Test Teardown   Close Browser
*** Test Cases ***
TC1
    Set Selenium Speed    20s
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Go To    https://phptravels.net/
    Click Element    id=cookie_stop
    Click Element    xpath=//a[contains(text(),'flight')]
    Click Element    xpath=//select[@id='flight_type']
    Select From List By Value    id=flight_type     business
