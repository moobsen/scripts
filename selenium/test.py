from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep

options = webdriver.ChromeOptions()
options.add_argument('--remote-debugging-pipe')
driver = webdriver.Chrome(options)

driver.get("https://duckduckgo.com/")
title = driver.title

driver.implicitly_wait(0.5)

search_box = driver.find_element(By.ID, value="searchbox_input")
search_box.send_keys("Test Search")
sleep(5)
submit_button = driver.find_element( By.CSS_SELECTOR, value='[type="submit"]')
submit_button.click()

#message = driver.find_element(by=By.ID, value="message")
#text = message.text

sleep(10)
#print(title, message, text)
driver.quit()