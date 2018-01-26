*** Settings ***
Documentation  Keywords will be called by the Setup and Teardown to specify what will happen before and after the suite runs, also it will contain any web browser related keywords
Library  Selenium2Library

*** Variables ***
${DEFAULT_URL} =  about:blank
${BROWSER} =  chrome
*** Keywords ***
Start Web Test
    Open Browser  ${DEFAULT_URL}  ${BROWSER}
    maximize browser window
End Web Test
    close all browsers

