*** Settings ***
Documentation    This Contains LandingPage Test in them
Library    SeleniumLibrary

*** Variables ***
${url}                   https://www.flipkart.com/
${browser_name}          Chrome

*** Keywords ***
Opening Browser with FlipKart Url
         Create Webdriver    ${browser_name}  executable_path=C:/Users/arvram/Documents/chromedriver/chromedriver.exe
         Go To   ${url}
         maximize browser window
         sleep    1s
Close Browser Session
    close all browsers