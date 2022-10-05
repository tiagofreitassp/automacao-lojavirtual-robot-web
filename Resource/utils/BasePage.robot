*** Settings ***
Resource    ../Main.robot
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***

AguardarElementoFicarVisivel ${elemento}
    Wait Until Element Is Visible  ${elemento}      8

VerificarElementoVisivel ${elemento}
    Element Should Be Visible     ${elemento}

ClicarNoElemento ${elemento}
    AguardarElementoFicarVisivel ${elemento}
    Click Element                  ${elemento}

EscreverNoElemento ${elemento} e ${texto}
    AguardarElementoFicarVisivel ${elemento}
    Input Text                     ${elemento}  ${texto} 

ScrollToElement ${elemento}
    Sleep    1s
    Scroll Element Into View    ${elemento}
    Sleep    1s

Esperar ${t}
    Sleep     ${t}s

SwitchToFrame ${elemento}
    Sleep    1s
    Select Frame   ${elemento}
    Sleep    2s

VoltarAoFramePrincipal
    Unselect Frame