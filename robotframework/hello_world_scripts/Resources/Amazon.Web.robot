*** Settings ***
Library    SeleniumLibrary
Resource    Page_Objects/LandingPage.robot
Resource    Page_Objects/Cart.robot
Resource    Page_Objects/Product.robot
Resource    Page_Objects/SearchResults.robot
Resource    Page_Objects/SignIn.robot
Resource    Page_Objects/TopNav.robot

*** Keywords ***
    
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
	TopNav.Search for Products
	SearchResults.Verify Search Completed
    
Select Product from Search Results
    SearchResults.Click Product Link
	Product.Verify Page Loaded
    
Add Product to Cart
    Product.Add to Cart
	Product.Decline Offer
	Cart.Verify Product Added
    
Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
