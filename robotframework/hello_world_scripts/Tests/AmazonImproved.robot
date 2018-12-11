*** Settings ***
Documentation    An improved version of the Amazon.robot test script.
Resource    ../Resources/Amazon.Web.robot
Resource    ../Resources/Common.Web.robot

# These will happen at the beginning/end of each test case
Test Setup    Common.Web.Begin Web Test
Test Teardown    Common.Web.End Web Test

# These would happen at the beginning/end of running all the tests in the Test Cases section.
# They could be especially useful for inserting data required for the tests, and then deleting it from the database at the end.
 Suite Setup    Insert Test Data
 Suite Teardown    Remove Test Data

*** Variables ***
${BROWSER} =  ie
${URL} =    https://www.amazon.com
${SEARCH TERM} =    FiiO FH5

*** Test Cases ***
User must sign in to check out
    [Documentation]    When a user adds an item to their cart and proceeds to checkout, they must log in before continuing.
    [Tags]    Smoke
    Amazon.Web.Search for Products
    Amazon.Web.Select Product from Search Results
    Amazon.Web.Add Product to Cart
    Amazon.Web.Begin Checkout
