*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory    E:${/}L&T${/}Temp${/}rush${/}
    Create File    E:${/}L&T${/}Temp${/}new${/}fa.txt
    Copy File    E:${/}L&T${/}Temp${/}new${/}fa.txt    E:${/}L&T${/}Temp${/}new1${/}a.txt
    Sleep    5s
    Remove File    E:${/}L&T${/}Temp${/}new${/}fa.txt
    Remove File    E:${/}L&T${/}Temp${/}new${/}f.txt
    Remove Directory     E:${/}L&T${/}Temp${/}rush
    
TC3
    Create Directory    ${EXECDIR}${/}my_folder
    
TC4
    Create Directory    ${EXECDIR}${/}my_folder
    Create File    ${EXECDIR}${/}my_folder${/}test.txt