*** Settings ***
Resource    ../resources/setup.robot

*** Keywords ***
Dado que estou na página de cadastro
    Go To    ${URL}
    Wait Until Element Is Visible    ${HOME.YOUR_LOGO}
    Click Element    ${HOME.BTN_SIGNIN}

Quando digito um email inválido no campo de email  
    Input Text    ${CADASTRO.EMAIL_CAMPO_CREATE}    test.com 
E permaneço na mesma página
    Click Element    ${HOME.BTN_SIGNIN}
    Page Should Contain    Create an account
    Title Should Be    Login - My Shop
E clico em create an account
    Click Element    //span[contains(.,'Create an account')]
Então vejo uma mensagem de erro informando que o email é inválido
    Wait Until Element Is Visible    //li[contains(.,'Invalid email address.')]    6s
Quando digito um email válido no campo de email
    ${EMAIL_CADASTRO}    FakerLibrary.Free Email
    Input Text    ${CADASTRO.EMAIL_CAMPO_CREATE}    ${EMAIL_CADASTRO}
        
Então sou redirecionado para a próxima fase do cadastro
    Wait Until Page Contains    Your personal information    6s
Quando preencho todos os dados corretamente
    Select Radio Button    ${CADASTRO.GRUPO_EMAIL_TITLE}    1

    # first name
    ${FIRST_NAME_CAD}    FakerLibrary.First Name Male
    Input Text    ${CADASTRO.PRIMEIRO_NOME}    ${FIRST_NAME_CAD}
    Set Test Variable    ${FIRST_NAME_FINAL}    ${FIRST_NAME_CAD}  
    # last name
    ${LAST_NAME_CAD}    FakerLibrary.Last Name Male
    Input Text    ${CADASTRO.ULTIMO_NOME}    ${LAST_NAME_CAD} 
    Set Test Variable    ${LAST_NAME_FINAL}    ${LAST_NAME_CAD}    
    # password
    Input Text    ${CADASTRO.SENHA}    12345Teste
    # date of birth
    Select From List By Value    ${CADASTRO.DIA}    10
    Select From List By Value    ${CADASTRO.MES}    8
    Select From List By Value    ${CADASTRO.ANO}    1990
E clico no botão register
    Click Element    ${CADASTRO.BTN_REGISTER}
Então visualizo mensagem de confirmação de conta criada
    Wait Until Element Contains    ${CADASTRO.TXT_MSG_SUCESSO}    Your account has been created.    12
    ${FULL_NAME}    Catenate    ${FIRST_NAME_FINAL}    ${LAST_NAME_FINAL}
    ${TEXT_USUARIO}    Get Text    ${CADASTRO.FULL_NAME_USUARIO}
    Should Be Equal    ${FULL_NAME}    ${TEXT_USUARIO}
    

				


    
           