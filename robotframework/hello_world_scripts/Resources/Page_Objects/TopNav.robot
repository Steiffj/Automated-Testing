*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  FiiO FH5

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input