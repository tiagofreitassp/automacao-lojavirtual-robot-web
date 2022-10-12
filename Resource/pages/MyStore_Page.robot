*** Settings ***
Library    SeleniumLibrary
Resource    ../Main.robot
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***

Autenticacao
    ClicarNoElemento ${var.labelSignIn}
    EscreverNoElemento ${var.campoEmail} e ${dados.Email} 
    EscreverNoElemento ${var.campoSenha} e ${dados.Senha} 
    ClicarNoElemento ${var.botaoSignIn}
    Capture Page Screenshot    Screenshots/Autenticacao.png

EscolherCategoria
    Capture Page Screenshot    Screenshots/EscolherCategoria.png
    ClicarNoElemento ${var.labelWomen}

EscolherProduto
    ScrollToElement ${var.imgFadedShortSleeveTshirts}
    ClicarNoElemento ${var.imgFadedShortSleeveTshirtsQuickView}
    Esperar ${4}
    SwitchToFrame ${var.iFrame_FadedShortSleeveTshirts}
    AguardarElementoFicarVisivel ${var.txtFadedShortSleeveTshirts}
    Esperar ${2}
    Capture Page Screenshot    Screenshots/EscolherProduto.png

Etapa1_AdcionarAoCarrinho
    ClicarNoElemento ${var.botaoAddToCart}
    Esperar ${5}
    VoltarAoFramePrincipal
    Esperar ${2}
    ClicarNoElemento ${var.botaoProceedToCheckout}
    Capture Page Screenshot    Screenshots/Etapa1_AdcionarAoCarrinho.png

Etapa2_Summary
    ClicarNoElemento ${var.txtShoppingCartSummary}
    Esperar ${3}
    ScrollToElement ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}
    ClicarNoElemento ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}
    Capture Page Screenshot    Screenshots/Etapa2_Summary.png

Etapa3_Address
    AguardarElementoFicarVisivel ${var.txtAddress}
    ScrollToElement ${var.botaoAddress_ProceedToCheckout}
    ClicarNoElemento ${var.botaoAddress_ProceedToCheckout}
    Capture Page Screenshot    Screenshots/Etapa3_Address.png

Etapa4_Shipping
    AguardarElementoFicarVisivel ${var.txtShipping}
    Esperar ${4}
    ClicarNoElemento ${var.txtIagreeToTheTermsOfService}
    Esperar ${2}
    ClicarNoElemento ${var.botaoShipping_ProceedToCheckout}
    Capture Page Screenshot    Screenshots/Etapa4_Shipping.png

Etapa5_Payment
    AguardarElementoFicarVisivel ${var.txtPleaseChooseYourPaymentMethod}
    ScrollToElement ${var.botaoPayByBankWire}
    ClicarNoElemento ${var.botaoPayByBankWire}
    ScrollToElement ${var.txtOrderSummary}
    ClicarNoElemento ${var.botaoIconfirmMyOrder}
    ScrollToElement ${var.txtOrderConfirmation}
    Esperar ${2}
    Capture Page Screenshot    Screenshots/Etapa5_Payment.png

Deslogar
    ClicarNoElemento ${var.labelSignOut}
    AguardarElementoFicarVisivel ${var.campoEmail}
    AguardarElementoFicarVisivel ${var.campoSenha}
    Esperar ${2}
    Capture Page Screenshot    Screenshots/Deslogar.png