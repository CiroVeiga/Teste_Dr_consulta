*** Settings ***
Documentation    Teste
Resource    ../resources/setup.robot
Resource    ../steps/sign_in_st.robot
Resource    ../steps/buy_st.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar navegador

*** Test Cases ***
Cenário 1 - Criar conta com email inválido
    Dado que estou na página de cadastro
    Quando digito um email inválido no campo de email
    E clico em create an account
    Então vejo uma mensagem de erro informando que o email é inválido
    E permaneço na mesma página

Cenário 2 - Criar conta sem preencher nada
    Dado que estou na página de cadastro
    E clico em create an account
    Então vejo uma mensagem de erro informando que o email é inválido
    E permaneço na mesma página    

Cenário 3: Criar conta com email válido
    Dado que estou na página de cadastro
    Quando digito um email válido no campo de email
    E clico em create an account
    Então sou redirecionado para a próxima fase do cadastro
    Quando preencho todos os dados corretamente
    E clico no botão register
    Então visualizo mensagem de confirmação de conta criada

Cenário 4: Compra realizada com sucesso
    Dado que estou logado no sistema
    Quando clico na aba women 
    E seleciono um produto
    E altero o tamanho
    E preencho o endereco de entrega
    E clico para fazer checkout 
    Entao escolhe a forma de pagamento 
    E clico para comprar 
    E a compra e realizada com sucesso 
