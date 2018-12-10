*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "FiiO FH5"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page