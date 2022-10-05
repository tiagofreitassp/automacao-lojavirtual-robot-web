*** Settings ***
Library    SeleniumLibrary

### Web Driver ###
Resource    data/webdriver.robot

### Shared ###
Resource    shared/setup_teardown.robot

### Pages ###
Resource    pages/MyStore_Page.robot
Resource    utils/BasePage.robot

### Massas ###
Resource    data/massas.robot