
*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text       xpath=//input[@data-placeholder='First name/Given name']    Daniel
    Input Text       xpath=//input[@data-placeholder='Last name/Surname']    Johnson
    Click Element    xpath=//span[text()='Month']
    Scroll Element Into View    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    Scroll Element Into View   xpath=//span[contains(text(),'30')]
    Click Element    xpath=//span[contains(text(),'30')]

    Input Text    id=mat-input-5    1992
    Click Element    xpath=//span[contains(text(),'Country')]
    Scroll Element Into View    xpath=//span[contains(text(),'India')]
    Click Element    xpath=(//span[contains(text(),'India')])[2]
    Input Text    xpath=//input[@data-placeholder='Email address']    lt@gmail.com
    Click Element    xpath=//span[contains(text(),'Select')]
    Scroll Element Into View    xpath=//span[contains(text(),'What')]
    Click Element    xpath=//span[contains(text(),'What')]
    Input Text    xpath=//input[@data-placeholder='Answer']    Little Flower School
    Click Element    xpath=//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
    Click Element    xpath=//button[contains(text(),'Done')]


