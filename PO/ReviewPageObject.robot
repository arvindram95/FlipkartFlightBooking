*** Settings ***
Documentation    This Contains ReviewPage Objects in them
Library    SeleniumLibrary
#Library    ../CustomLibraries/ReviewPageCustom.py
Variables    ../Locators/Locators.py

*** Variables ***

*** Keywords ***
Get the title of the Page and Print in it.
    sleep    5s
    log title
    title should be         Review Store Online - Buy Review Online at Best Price in India | Flipkart.com