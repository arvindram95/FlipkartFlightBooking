*** Settings ***
Documentation    This Contains LandingPage Test in them
Library    SeleniumLibrary


*** Variables ***
${url}                   https://www.flipkart.com/
${browser_name}          Chrome

*** Keywords ***
Opening Browser with FlipKart Url
         open browser    ${url}    ${browser_name}
         maximize browser window
         sleep    3s
Close Browser Session
    close all browsers