*** Settings ***
Documentation  Takes care of searching for items on Allegro.pl
Library  Selenium2Library

*** Variables ***
${NAVIGATION_BAR_SEARCH_BOX} =  css=input[name='string'][type='search']
${SEARCH_BUTTON} =  css=input[type='submit']
*** Keywords ***
Search box is loaded
    page should contain element  ${NAVIGATION_BAR_SEARCH_BOX}

Search
    [Arguments]  ${item}
    Input Text  ${NAVIGATION_BAR_SEARCH_BOX}  ${item}
    click element  ${SEARCH_BUTTON}
    #TODO add new stuff


