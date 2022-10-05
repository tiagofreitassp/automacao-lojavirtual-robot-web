*** Variables ***
&{var}
...    labelSignIn=//a[contains(text(),'Sign in')]  #xpath
...    labelSignOut=//a[@title='Log me out']  #className
...    labelWomen=//a[@class='sf-with-ul'][contains(text(),'Women')]  #xpath

...    campoEmail=email  #id
...    campoSenha=passwd  #id

...    botaoSignIn=SubmitLogin  #id
...    botaoAddToCart=Submit  #name
...    botaoProceedToCheckout=//a[@title='Proceed to checkout']  #xpath
...    botaoPayByBankWire=//a[@title='Pay by bank wire']  #xpath
...    botaoIconfirmMyOrder=//span[contains(text(),'I confirm my order')]  #xpath
...    botaoSHOPPINGCARTSUMMARY_ProceedToCheckout=//a[@class='button btn btn-default standard-checkout button-medium']//span[contains(text(),'Proceed to checkout')]  #xpath
...    botaoAddress_ProceedToCheckout=processAddress  #name
...    botaoShipping_ProceedToCheckout=processCarrier  #name

...    imgFadedShortSleeveTshirts=//img[@alt='Faded Short Sleeve T-shirts']  #xpath
...    imgFadedShortSleeveTshirtsQuickView=//span[contains(text(),'Quick view')]  #xpath

...    iFrame_FadedShortSleeveTshirts=//iframe[@class='fancybox-iframe']  #xpath

...    txtFadedShortSleeveTshirts=//h1[contains(text(),'Faded Short Sleeve T-shirts')]  #xpath
...    txtShoppingCartSummary=cart_title  #id
...    txtAddress=//h1[contains(text(),'Addresses')]  #xpath
...    txtShipping=//h1[contains(text(),'Shipping')]  #xpath
...    txtPleaseChooseYourPaymentMethod=//h1[contains(text(),'Please choose your payment method')]  #xpath
...    txtOrderSummary=//h1[contains(text(),'Order summary')]  #xpath
...    txtOrderConfirmation=//h1[contains(text(),'Order confirmation')]  #xpath
...    txtIagreeToTheTermsOfService=//label[contains(text(),'I agree to the terms of service and will adhere to')]  #xpath

...    checkboxTermOfService=//input[@id='cgv']  #xpath