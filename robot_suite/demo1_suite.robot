*** Test Cases ***
TC1 Print My Name
    Log To Console    Rasel Ahmed
    Log To Console    Hello Buddy
TC2
    Log To Console    Rasel
    Log    Hello
TC3
    ${session_variable}     Set Variable     Robot name
    Log To Console    ${session_variable}
    Log To Console    Session name is ${session_variable}
#in TC4 store 25 and 26 in var1 and var2
TC4
    ${var1}     Set Variable    25
    ${var2}     Set Variable    26
    ${result}   Evaluate    ${var1}+${var2}
    Log To Console    ${result}
    
TC5
    ${radius}   Set Variable    10
    ${area}     Evaluate    3.14 * ${radius}**2
    Log To Console    ${area}