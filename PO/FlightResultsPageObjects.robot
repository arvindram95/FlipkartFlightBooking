*** Settings ***
Documentation    This Contains FlightBooking Page Objects in them
Library    SeleniumLibrary
Library    ../CustomLibraries/FlightResultsPage.py
#Library    ../CustomLibraries/ReviewPageCustom.py
Variables    ../Locators/Locators.py

*** Variables ***


*** Keywords ***
Wait for the Flight booking page to Load
         set selenium implicit wait    30s
         sleep    11s
         wait until page contains element    ${nonstop_button}
Verify if the Non stop checkbox is selected by default
       element attribute value should be     ${nonstop_verification}   class   c-switch switch-off

Click on the Non stop checkbox if it is not selected
        set selenium implicit wait    20s
       click element    ${nonstop_verification}
       sleep    2s

Print prices of all arrival flights
     arrival flight prices           ${arrival_flight_prices}


Print prices of all depature flights and select the last depauture flight from the list
      print depart flight prices and select last depature flight    ${depart_flight_prices}

Click on the book button to book the flights
      sleep      5s
        click button    ${book_button}


