from selenium import webdriver
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from robot.libraries.BuiltIn import BuiltIn

driver = webdriver.Chrome(executable_path="")


def radio_button_selection_verification():
    radiobutton = driver.find_element_by_id("ONE_WAY")
    print("One Way Radio button  selected :" + str(radiobutton.is_selected()))
