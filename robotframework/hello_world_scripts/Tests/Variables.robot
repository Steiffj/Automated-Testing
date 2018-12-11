*** Settings ***
Resource    ../Resources/Variables.Demo.robot

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
    
List demo
    Log    @{GLOBAL LIST VAR}[0] @{GLOBAL LIST VAR}[1] @{GLOBAL LIST VAR}[4]
    
Local list demo
    @{local list var} =    Create List    Pentium  i3  i5  i7  i9  Xeon  r3  r5  r7  Threadripper  Epyc  ${GLOBAL SCALAR VAR}
    :FOR  ${element}  IN  @{local list var}
    \    Log  ${element}
    
Variable scope demo 1
    Log    ${SCOPE EXAMPLE}
    
Variable scope demo 2
    # Variable names are case insensitive. 
    # Variables declared within a test case take precedence over global variables.
    ${scope example} =  Set Variable  Overridden by local variable
    Log    ${scope example}
