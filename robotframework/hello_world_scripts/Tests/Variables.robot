*** Settings ***

*** Variables ***
${GLOBAL SCALAR VAR} =    Hello globe
@{GLOBAL LIST VAR} =    Elem 0    Elem 1    Elem 2    Elem 3    etc.

*** Test Cases ***
Variable demo 1
    Log    ${GLOBAL SCALAR VAR}
    
Variable demo 2
    Log    ${GLOBAL SCALAR VAR} plus some more
    
Variable demo 3
    ${local scalar var} =    Set Variable    it's a small world
    Log    ${GLOBAL SCALAR VAR}, ${local scalar var} in demo 3.
    
List demo 1
    Log    @{GLOBAL LIST VAR}[0] @{GLOBAL LIST VAR}[1] @{GLOBAL LIST VAR}[4]