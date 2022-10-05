*** Settings ***
Resource    ../Main.robot

*** Keywords ***
#[BEFORE]
Acessar site
    Open Browser  ${driver.URL}  ${driver.Browser}
    Maximize Browser Window

#[AFTER]
Fechar navegador
    Close Browser