*** Settings ***
Documentation  Makes sure the Landing page loads so other checks can be performed from it
Library  Selenium2Library
*** Variables ***
${LANDING_PAGE_URL} =  http://www.allegro.pl
${LANDING_NAVIGATION_ELEMENT} =  css=div.main-wrapper
*** Keywords ***
Navigate to
    Go to  ${LANDING_PAGE_URL}

Verify page loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}
