*** Settings ***
Documentation    This Contains BookingPage Test in them
Library    SeleniumLibrary
#Library    ../CustomLibraries/LandingPageCustom.py
Variables    ../Locators/Locators.py
Resource    ../PO/BookingPageObjects.robot
*** Test Cases ***
After Booking Page Loads enter all the Booking related details and click on Search
        Wait for booking page to Load
       Verify if OneWay Radio button is selected as default
       Click on the TwoWay Radio Button
       Select the depature city
       Select the arrival city
       Select the Departue date
       Select the Return date
       Add total number of Adults and childrens travellers
       Verify if Economy Radio button is selected as default
       Click on the Search button after entering all booking details