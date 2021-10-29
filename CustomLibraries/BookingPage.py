import time

from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class BookingPage:

    def __init__(self):
      self.seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')

    @keyword
    def date_selection(self,date,number):
       datestr=f"(//button[contains(text(),'{date}')])[{number}]"
       self.seleniumlib.click_element(f"{datestr}")

    @keyword
    def depart_date_selection(self,departdate):
        self.seleniumlib.click_element(f"{departdate}")
    @keyword
    def auto_suggestion_dropdown(self,locator,city):
        self.seleniumlib.click_element(f"{locator}")
        self.seleniumlib.press_keys(f"{locator}","CTRL+a")
        self.seleniumlib.press_keys(f"{locator}","BACKSPACE")
        self.seleniumlib.input_text(f"{locator}", f"{city}")
        time.sleep(3)
        self.seleniumlib.press_keys(f"{locator}", "ARROW_DOWN")
        self.seleniumlib.press_keys(f"{locator}", "ENTER")
    @keyword
    def add_travellers(self,locator):
        addbutton=f"(// div[@class ='VjWsXZ'])[{locator}]"
        self.seleniumlib.click_element(f"{addbutton}")




