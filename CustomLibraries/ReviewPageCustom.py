from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class ReviewPage:

    def __init__(self):
      self.seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')

    @keyword
    def get_pagetitle_and_print(self):
       pagetitle = self.seleniumlib.get_title
       print(pagetitle)


