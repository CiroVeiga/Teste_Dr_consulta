*** Settings ***
Resource    ../resources/setup.robot

*** Keywords ***
Dado que estou logado no sistema
    Go To    ${URL}
    Wait Until Element Is Visible    ${HOME.YOUR_LOGO}
    Click Element    ${HOME.BTN_SIGNIN}
    Input Text    ${LOGIN.CP_EMAIL}    ${EMAIL}
    Input Text    ${LOGIN.CP_PASSWORD}    ${SENHA}
    Click Element    ${LOGIN.BTN_LOGIN}
    Page Should Contain    My account
   

Quando clico na aba women   
    Click Element    ${PRODUCT.BTN_WOMEN}
    Wait Until Element Contains    ${WOMEN.BEADCRUMB_WOMEN}    Women
E seleciono um produto
    Wait Until Element Is Visible    ${WOMEN.BTN_COMPARE}
    Scroll Element Into View    ${WOMEN.BTN_COMPARE}
    Click Element    ${WOMEN.PRIMEIRA_OPCAO_WOMAN}
    

E altero o tamanho
    Wait Until Element Is Visible    ${CARRINHO.LABEL_TITLE}    8
    Select From List By Value    group_1    2     #escolhendo a opção M
    Click Element    ${CARRINHO.ADD_TO_CARD}
    Wait Until Page Contains    Product successfully added to your shopping cart
    Wait Until Element Is Visible    ${PRODUCT.BTN_PROCEED_CHECKOUT}    6
    Click Element    ${PRODUCT.BTN_PROCEED_CHECKOUT}
    Wait Until Page Contains    Shopping-cart summary    6
    Click Element    ${PRODUCT.BTN_PROCEED_CHECKOUT_2}
   
E preencho o endereco de entrega
    Wait Until Element Is Visible     ${ADRESS.CP_FIRST_NAME}    8
    Input Text    ${ADRESS.CP_ADRESS}    ${ADRESS1}
    Input Text    ${ADRESS.CP_CITY}    ${CITY}
    Click Element    ${ADRESS.CP_STATE}
    Input Text    ${ADRESS.CP_POSTAL_CODE}    ${POSTAL_CODE}
    Input Text    ${ADRESS.CP_HOME_PHONE}    ${HOME_PHONE}
    Input Text    ${ADRESS.CP_MOBILE_PHONE}    ${MOBILE_FONE}
    Input Text    ${ADRESS.CP_ADDITIONAL_INFORMATION}    ${ADDITIONAL_INFORMATION}
    Click Element    ${ADRESS.BTN_SAVE}
    
    
E clico para fazer checkout
    Wait Until Element Is Visible     ${ADRESS.BTN_PROCEED_ADRESS}    8
    Click Element    ${ADRESS.BTN_PROCEED_ADRESS}
    Click Element    ${SERVICE.CHECK_BOX_TERMS_OF_SERVICE}
    Click Element    ${SERVICE.BTN_PROCEED_CARRIER}
   
Entao escolhe a forma de pagamento
    Click Element    ${PAYMENT.BTN_PAY_BY_BANK}
  
E clico para comprar 
    Click Element    ${PAYMENT.BTN_CONFIRM_MY_ORDER}
    Wait Until Page Contains      Your order on My Shop is complete.
    
  
E a compra e realizada com sucesso 
    Wait Until Element Is Visible     ${LOGIN.BTN_ACCOUNT}    6
    Click Element    ${LOGIN.BTN_ACCOUNT}
    Click Element    ${LOGIN.BTN_MY_ADRESS}
    Click Element    ${LOGIN.BTN_DELETE_ADRESS}
    Handle Alert


    
    




                                     

                                     




    
    Page Should Contain    Product successfully added to your shopping cart