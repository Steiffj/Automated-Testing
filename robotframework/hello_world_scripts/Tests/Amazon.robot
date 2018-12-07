*** Settings ***
Documentation  Basic info about a test suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Simpy load a web page
    [Documentation]    Example test information
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    firefox
    Close Browser

*** Keywords ***
