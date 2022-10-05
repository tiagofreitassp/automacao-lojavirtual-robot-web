*** Settings ***
Resource    ../../Elements/Main_Elements.resource
Resource    ../../Resource/Main.robot

*** Keywords ***
Dado que efetuei a autenticacao de usuario
    Autenticacao
Quando escolhar um produto e concluir a compra
    EscolherCategoria
    EscolherProduto
    Etapa1_AdcionarAoCarrinho
    Etapa2_Summary
    Etapa3_Address
    Etapa4_Shipping
Entao a compra e finalizada com sucesso
    Etapa5_Payment
    Deslogar
