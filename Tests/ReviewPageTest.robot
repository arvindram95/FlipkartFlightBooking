*** Settings ***
Documentation    This Contains LandingPage Test in them
Library    SeleniumLibrary
#Library    ../CustomLibraries/LandingPageCustom.py
Variables    ../Locators/Locators.py
Resource    ../PO/Generic.robot
Resource    ../PO/ReviewPageObject.robot

*** Test Cases ***
Verify the title of the Page
     Get the title of the Page and Print in it.
