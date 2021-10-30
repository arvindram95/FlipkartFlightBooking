*** Settings ***
Documentation    This Contains BookingPage Test in them
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Resource    ../PO/Generic.robot
#Resource    ../PO/BookingPagePO.robot
Suite Setup    Opening Browser with FlipKart Url
Suite Teardown    Close Browser
Resource          ../PO/BookingPageObjects.robot
Resource          ../PO/LandingPageObjects.robot
Resource         ../PO/FlightResultsPageObjects.robot
Resource         ../PO/ReviewPageObject.robot
*** Test Cases ***
Should be able to complete an End to end scneario
     LandingPageObjects.Click on the close icon in LoginPopup
     LandingPageObjects.Click on the Travel Image option
     BookingPageObjects.Wait for booking page to Load
     BookingPageObjects.Verify if OneWay Radio button is selected as default
     BookingPageObjects.Click on the TwoWay Radio Button
     BookingPageObjects.Select the depature city
     BookingPageObjects.Select the arrival city
     BookingPageObjects.Select the Departue date
     BookingPageObjects.Select the Return date
     Bookingpageobjects.add total number of adults and childrens travellers
     BookingPageObjects.Verify if Economy Radio button is selected as default
     BookingPageObjects.Click on the Search button after entering all booking details
     Flightresultspageobjects.wait for the flight booking page to load
     FlightResultsPageObjects.Verify if the Non stop checkbox is selected by default
     FLIGHTRESULTSPAGEOBJECTS.CLICK ON THE NON STOP CHECKBOX IF IT IS NOT SELECTED
     FlightResultsPageObjects.Print prices of all arrival flights
     FlightResultsPageObjects.Print prices of all depature flights and select the last depauture flight from the list
     flightresultspageobjects.click on the book button to book the flights
     ReviewPageObject.Get the title of the Page and Print in it.