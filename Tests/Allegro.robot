*** Settings ***
Documentation  Sample tests to show understanding of the RobotFramework+Selenium2Libary performed on the Polish web shop Allegro.pl where people can buy, sell various items
Library  ../Libraries/lib.py
Resource  ../Resources/AllegroApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  CommonWeb.Start Web Test
Test Teardown  CommonWeb.End Web Test
Resource  ../Resources/AllegroApp.robot
Resource  ../Resources/CommonWeb.robot
*** Variables ***
${ITEM_NAME} =  mercedes
${ITEM_NUMBER} =  3
*** Test Cases ***
Example test case
    Set log level  DEBUG
    [Tags]  testing
    feature that i need
User can view the landing page
    #TODO add meaningful documentation
    [Documentation]
    [Tags]  Test1
    AllegroApp.Go to landing page

User can search for "items"
    [Tags]  Test2
    AllegroApp.Go to landing page
    AllegroApp.Search for an "item"  ${ITEM_NAME}

User can select an item from "Search Results"
    [Tags]  Test3
    AllegroApp.Pick an item from results  ${ITEM_NUMBER}  ${ITEM_NAME}

