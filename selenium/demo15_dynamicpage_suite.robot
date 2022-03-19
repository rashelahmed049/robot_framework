* Settings *

Library     SeleniumLibrary
Library     AutoItLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://phptravels.net/
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@role='searchbox']    chennai
    Sleep    1s
    Click Element    xpath=//li[text()='Chennai,India']



    Execute Javascript  document.querySelector('#checkin').value='28-03-2022'
    Execute Javascript  document.querySelector('[id=checkout]').value='29-03-2022'
