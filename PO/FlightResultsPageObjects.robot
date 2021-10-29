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
         sleep    10s
         wait until page contains element    ${nonstop_button}
Verify if the Non stop checkbox is selected by default
          checkbox should not be selected    ${nonstop_verification}
Click on the Non stop checkbox if it is not selected
        set selenium implicit wait    20s
       click element    ${nonstop_verification}
       sleep    4s
Print prices of all the flights both depature and arrival
     arrival flight prices           ${arrival_flight_prices}
      depart flight prices           ${depart_flight_prices}
      #depart_arrival_flight_priceset webelements    ${flightprices_css}


Select the Last flight from the list of flights
        #execute javascript    window.scrollTo(0,document.body.scrollHeight)
        #execute javascript    window.scrollTo(0,3000)
        set selenium implicit wait    15s
        wait until element is visible    ${last_flight}
        sleep    5s
        click element   ${last_flight}

Click on the book button to book the flights
      sleep      5s
        click button    ${book_button}


