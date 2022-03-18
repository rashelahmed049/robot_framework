* Settings *

Library     SeleniumLibrary
Library     AutoItLibrary

*** Test Cases ***
TC1
    Open Browser    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.ilovepdf.com/pdf_to_word
    Click Element    xpath=//span[text()='Select PDF file']
    Sleep    1s
    Control Focus       Open    ${EMPTY}    Edit1
    Sleep    1s
    Control Set Text    Open    ${EMPTY}    Edit1      E:${/}Tezpur University${/}MTech_IT_2017.pdf
    Sleep    1s
    Control Click   Open    ${EMPTY}    Button1