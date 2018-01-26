*** Settings ***
Documentation  This file will handle the item search
Library  Selenium2Library
*** Variables ***
# below variables contain an item locator separated in two parts,
${ITEM_LOCATOR_HALF} =  css=section._61aa5c3:nth-child(2) > section:nth-child(2) > article:nth-child(
${ITEM_LOCATOR_HALF_TWO} =  ) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > h2:nth-child(1) > a
${SEARCH_RESULTS} =  css=div.opbox-sheet-wrapper

*** Keywords ***
Verify "Search Results" page loaded
    page should contain element  ${SEARCH_RESULTS}
Pick  # picks an item from 'lista promowanych ofert' not the sponsored items
    [Arguments]  ${item_number}
    # the variable catenates two parts of the locator from the global variables and the number passed in as an argument
    # the argument contains a number which represents an item from the list
    ${locator} =  catenate  SEPARATOR=  ${ITEM_LOCATOR_HALF}  ${item_number}  ${ITEM_LOCATOR_HALF_TWO}
    click element  ${locator}