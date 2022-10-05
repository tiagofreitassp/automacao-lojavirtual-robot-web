*** Settings ***
Resource    ../Main.robot
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***

Autenticacao
    ClicarNoElemento ${var.labelSignIn}
    EscreverNoElemento ${var.campoEmail} e ${dados.Email} 
    EscreverNoElemento ${var.campoSenha} e ${dados.Senha} 
    ClicarNoElemento ${var.botaoSignIn}

EscolherCategoria
    ClicarNoElemento ${var.labelWomen}

EscolherProduto
    ScrollToElement ${var.imgFadedShortSleeveTshirts}
    ClicarNoElemento ${var.imgFadedShortSleeveTshirtsQuickView}
    Esperar ${4}
    SwitchToFrame ${var.iFrame_FadedShortSleeveTshirts}
    AguardarElementoFicarVisivel ${var.txtFadedShortSleeveTshirts}
    Esperar ${2}

Etapa1_AdcionarAoCarrinho
    ClicarNoElemento ${var.botaoAddToCart}
    Esperar ${5}
    VoltarAoFramePrincipal
    Esperar ${2}
    ClicarNoElemento ${var.botaoProceedToCheckout}

Etapa2_Summary
    ClicarNoElemento ${var.txtShoppingCartSummary}
    Esperar ${3}
    ScrollToElement ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}
    ClicarNoElemento ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}

Etapa3_Address
    AguardarElementoFicarVisivel ${var.txtAddress}
    ScrollToElement ${var.botaoAddress_ProceedToCheckout}
    ClicarNoElemento ${var.botaoAddress_ProceedToCheckout}

Etapa4_Shipping
    AguardarElementoFicarVisivel ${var.txtShipping}
    Esperar ${4}
    ClicarNoElemento ${var.txtIagreeToTheTermsOfService}
    Esperar ${2}
    ClicarNoElemento ${var.botaoShipping_ProceedToCheckout}

Etapa5_Payment
    AguardarElementoFicarVisivel ${var.txtPleaseChooseYourPaymentMethod}
    ScrollToElement ${var.botaoPayByBankWire}
    ClicarNoElemento ${var.botaoPayByBankWire}
    ScrollToElement ${var.txtOrderSummary}
    ClicarNoElemento ${var.botaoIconfirmMyOrder}
    ScrollToElement ${var.txtOrderConfirmation}
    Esperar ${2}

Deslogar
    ClicarNoElemento ${var.labelSignOut}
    AguardarElementoFicarVisivel ${var.campoEmail}
    AguardarElementoFicarVisivel ${var.campoSenha}
    Esperar ${2}