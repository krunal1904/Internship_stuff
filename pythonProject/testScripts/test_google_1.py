import time
import sys
import pytest
from locators.google_locator import google_logo
sys.path.append("C/Users/158332/PycharmProjects/pythonProject")
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from pageObject.Google_Home import Google_Home
from locators import google_locator


@pytest.mark.usefixtures("browser_cls")
class TestGoogleApp_1:
    @pytest.mark.smoke
    def test_google_logo(self):

        obj = Google_Home(self.driver)
        obj.launch_app_with_url("https://google.com/")
        obj.google_logo_validation(google_locator.google_logo())

    @pytest.mark.regression
    def test_google_searchbox(self):

        obj = Google_Home(self.driver)
        obj.launch_app_with_url("https://google.com/")
        time.sleep(3)

    @pytest.mark.smoke
    def test_google_title(self):

        obj = Google_Home(self.driver)
        obj.launch_app_with_url("https://google.com/")
        obj.validate_google_title("Google")

