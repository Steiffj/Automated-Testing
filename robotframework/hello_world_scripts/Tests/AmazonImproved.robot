*** Settings ***
Documentation    An improved version of the Amazon.robot test script.
Resource    ../Resources/Amazon.Web.robot
Resource    ../Resources/Common.Web.robot

*** Test Cases ***
User must sign in to check out
    [Documentation]    When a user adds an item to their cart and proceeds to checkout, they must log in before continuing.
    [Tags]    Smoke
    Common.Web.Begin Web Test
    Amazon.Web.Search for Products
    Amazon.Web.Select Product from Search Results
    Amazon.Web.Add Product to Cart
    Amazon.Web.Begin Checkout
    Common.Web.End Web Test
