*** Settings ***
Resource    ../Steps/Main_Steps.robot
Test Setup    Acessar site
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario CT01: Realizar uma compra com sucesso
    [Tags]    regressivo    ct01
    Dado que efetuei a autenticacao de usuario
    Quando escolhar um produto e concluir a compra
    Entao a compra e finalizada com sucesso
    