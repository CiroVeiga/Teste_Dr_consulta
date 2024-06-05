*** Variables ***
#Dados para login
${EMAIL}    guilhermevargascarmo@gmail.com
${SENHA}    Fc230978@

#Dados para endereco de entrega
${ADRESS1}   Av Teste Da silva 44
${CITY}     SAO PAULO
${POSTAL_CODE}   75202
${POSTAL_CODE}   75202
${HOME_PHONE}   55272744
${MOBILE_FONE}   11949437192
${ADDITIONAL_INFORMATION}   entregar com muito cuidado


#validacoes home
&{HOME}     
...    YOUR_LOGO=xpath://img[@alt='My Shop']    
...    BTN_SIGNIN=xpath://a[contains(.,'Sign in')]

