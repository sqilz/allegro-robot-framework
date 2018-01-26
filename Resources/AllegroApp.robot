*** Settings ***
Documentation  This file contains keywords that combine different low-level page object checks/functions
Resource  PO/Landing.robot
Resource  PO/NavBar.robot
Resource  PO/SearchResults.robot
*** Variables ***

*** Keywords ***
Go to landing page
    Landing.Navigate to
    Landing.Verify page loaded

Search for an "item"
    # passing an argument to a page object
    [Arguments]  ${item_name}
    NavBar.Search box is loaded
    NavBar.Search  ${item_name}

Pick an item from results
    [Arguments]  ${item_number}  ${item_name}
    Go to landing page
    Search for an "item"  ${item_name}
    SearchResults.Verify "Search Results" page loaded
    SearchResults.Pick  ${item_number}