*** Settings ***
Documentation    This Contains LandingPage Test in them
Library    SeleniumLibrary
#Library    ../CustomLibraries/LandingPageCustom.py
Variables    ../Locators/Locators.py
Resource    ../PO/Generic.robot
Resource    ../PO/LandingPageObjects.robot
*** Test Cases ***
Close the Login Popup
      Click on the close icon in LoginPopup
Select the Travel Image Option to Book an Flight
       Click on the Travel Image option

