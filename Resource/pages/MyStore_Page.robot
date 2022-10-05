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
    SwitchToFrame ${var.iFrame_FadedShortSleeveTshirts}
    VerificarElementoVisivel ${var.txtFadedShortSleeveTshirts}

Etapa1_AdcionarAoCarrinho
    ClicarNoElemento ${var.labelWomen}
    VoltarAoFramePrincipal
    ClicarNoElemento ${var.botaoProceedToCheckout}

Etapa2_Summary
    VerificarElementoVisivel ${var.txtShoppingCartSummary}
    Esperar ${3}
    ScrollToElement ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}
    ClicarNoElemento ${var.botaoSHOPPINGCARTSUMMARY_ProceedToCheckout}

Etapa3_Address
    VerificarElementoVisivel ${var.txtAddress}
    Esperar ${6}
    ScrollToElement ${var.botaoAddress_ProceedToCheckout}
    ClicarNoElemento ${var.botaoAddress_ProceedToCheckout}

Etapa4_Shipping
    VerificarElementoVisivel ${var.txtShipping}
    ClicarNoElemento ${var.checkboxTermOfService}
    Esperar ${5}
    ClicarNoElemento ${var.botaoShipping_ProceedToCheckout?

Etapa5_Payment
    VerificarElementoVisivel ${var.txtPleaseChooseYourPaymentMethod}
    ScrollToElement ${var.botaoPayByBankWire}
    ClicarNoElemento ${var.botaoPayByBankWire}
    VerificarElementoVisivel ${var.txtOrderSummary}
    ClicarNoElemento ${var.botaoIconfirmMyOrder}
    VerificarElementoVisivel ${var.txtOrderConfirmation}
    Esperar ${2}

Deslogar
    ClicarNoElemento ${var.labelSignOut}
    AguardarElementoFicarVisivel ${var.campoEmail}
    AguardarElementoFicarVisivel ${var.campoSenha}
    Esperar ${2}