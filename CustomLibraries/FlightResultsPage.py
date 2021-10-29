from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn
import time
@library
class FlightResultsPage:

    def __init__(self):
        self.seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    @keyword
    def arrival_flight_prices(self,arrival_flight):
        arrival_flight_prices = self.seleniumlib.get_webelements(f"{arrival_flight}")
        for arrival_flight_price in arrival_flight_prices:
         print("Chennai -> Kolkata")
         print(arrival_flight_price.text)
    @keyword
    def depart_flight_prices(self,depart_flight):
        y = 1000
        for timer in range(0,1):
            depart_flight_prices = self.seleniumlib.get_webelements(f"{depart_flight}")
            for depart_flight_price in depart_flight_prices:
                print("Kolkata -> Chennai")
                print(depart_flight_price.text)
        self.seleniumlib.execute_javascript("window.scrollTo(0, " + str(y) + ")")
        # execute javascript    window.scrollTo(0,3000)
        y += 1000
        time.sleep(3)
