*** Settings ***
Documentation    This Contains BookingPage Objects in them
Library    SeleniumLibrary
Library    ../CustomLibraries/BookingPage.py
Variables    ../Locators/Locators.py

*** Variables ***


*** Keywords ***
 Wait for booking page to Load
        wait until page contains element    ${flipkart_title}
Verify if OneWay Radio button is selected as default
        Radio Button Should Be Set To         tripTypeList    on
Click on the TwoWay Radio Button
          set selenium implicit wait    15s
            click element                   ${round_trip_button}
            click element                   ${round_trip_button}
            sleep   5s

Select the depature city
      set selenium implicit wait    15s
       auto_suggestion_dropdown         ${depart_city}      Kolkata

Select the arrival city
        set selenium implicit wait      20s
        auto_suggestion_dropdown        ${arrival_city}      Chennai

Select the Departue date
           date_selection    1      13

Select the Return date
          set selenium implicit wait    15s
         date_selection    30            2

Add total number of Adults and childrens travellers
      #wait until element is visible     ${adult_travellers}
      # click element    ${adult_travellers}
       #click element    ${children_travellers}
       add travellers    2
       add travellers    4
Verify if Economy Radio button is selected as default
        Radio Button Should Be Set To         travel-cabin-class    on
Click on the Search button after entering all booking details
       click element     ${search_button}