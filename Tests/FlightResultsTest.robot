*** Settings ***
Documentation    This Contains BookingPage Test in them
Library    SeleniumLibrary
#Library    ../CustomLibraries/LandingPageCustom.py
Variables    ../Locators/Locators.py
Resource    ../PO/FlightResultsPageObjects.robot

*** Test Cases ***
After the Flight Booking Page load select the required
        Wait for the Flight booking page to Load
        Verify if the Non stop checkbox is selected by default
        Click on the Non stop checkbox if it is not selected
        Print prices of all the flights both depature and arrival
        Select the Last flight from the list of flights
        Click on the book button to book the flights