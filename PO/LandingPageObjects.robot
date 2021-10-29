*** Settings ***
Documentation    This Contains LandingPage Test in them
Library    SeleniumLibrary
Library    ../CustomLibraries/BookingPage.py
Variables    ../Locators/Locators.py

*** Keywords ***
Click on the close icon in LoginPopup
     set selenium implicit wait    15s
       click button    xpath://button[contains(text(),'✕')]
Click on the Travel Image option
        click image          xpath://img[@alt='Travel']