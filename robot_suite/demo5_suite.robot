*** Settings ***
Library    Collections
Library    OperatingSystem
*** Variables ***
${MY_NAME}  RaselAhmed
@{COLORS}   red     green       yellow      blue
*** Test Cases ***
TC1
    Set Local Variable    ${name}   Rasel
    Log To Console    ${name}
    
    ${val}  Set Variable    Ahmed
    Log To Console    ${val}
    Log To Console    ${MY_NAME}
    
TC2
    Log To Console    ${MY_NAME}
    
TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[1]
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

TC4
    @{fruits}   Create List     apple   banana  mango
    Log To Console    ${fruits}
    Log To Console    ${fruits}[2]
    Remove Values From List    ${fruits}   mango
    Log To Console    ${fruits}

    Append To List    ${fruits}     orange
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    2    strawberry
    Log To Console    ${fruits}
TC4
    ${emp_dic}  Create Dictionary    empname=Rasel       companyname=LT
    Log To Console    ${emp_dic}
    Log To Console    ${emp_dic}[empname]