from selenium import webdriver
import time
url = "https://www.pinterest.co.kr/pin/581738476849153660/"

browser = webdriver.Chrome("chromedriver.exe")

browser.get(url)

for idx, el in enumerate(browser.find_elements_by_css_selector('#__PWS_ROOT__ > div.App.AppBase > div.appContent > div > div > div > div.Jea.jzS.ujU.zI7.iyn.Hsu > div > div > div > div > div.zI7.iyn.Hsu > div.gridCentered > div > div > div:nth-child(1) div > div > div > div > div > div > div:nth-child(1) > a > div > div.zI7.iyn.Hsu > div > div > div > div > div > img')):
    el.screenshot(str(idx) + ".png")
    time.sleep(3)

for i in range(15):
    browser.execute_script("window.scrollBy(0,10000)")

browser.close()
