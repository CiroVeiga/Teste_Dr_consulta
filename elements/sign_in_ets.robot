*** Variables ***
&{CADASTRO}
...    EMAIL_CAMPO_CREATE=xpath://input[@id='email_create']
...    GRUPO_EMAIL_TITLE=id_gender
...    PRIMEIRO_NOME=customer_firstname
...    ULTIMO_NOME=customer_lastname
...    SENHA=passwd
...    DIA=days
...    MES=months
...    ANO=years
...    BTN_REGISTER=submitAccount
...    TXT_MSG_SUCESSO=//p[@class='alert alert-success'][contains(.,'Your account has been created.')]
...    FULL_NAME_USUARIO=//div[@class='header_user_info']/a[@class='account']/span

&{LOGIN}
...   CP_EMAIL=email 
...   CP_PASSWORD=passwd
...   BTN_LOGIN=SubmitLogin
...   H1_TEXT_ACCOUNT=xpath://*[@id="center_column"]/h1
...   BTN_ACCOUNT=xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a/span
...   BTN_MY_ADRESS=xpath://*[@id="center_column"]/div/div/ul/li[3]/a/span
...   BTN_DELETE_ADRESS=xpath://*[@id="center_column"]/div[1]/div/div/ul/li[9]/a[2]/span

