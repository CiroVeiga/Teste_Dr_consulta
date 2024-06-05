*** Variables ***
&{PRODUCT}
...   BTN_WOMEN=xpath://*[@id="block_top_menu"]/ul/li[1]/a 
...   BTN_PRODUCTS=xpath://img[contains(@alt,'Faded Short Sleeve T-shirts')]
...   BTN_SIZE=xpath://*[@id="uniform-group_1"]/span
...   BTN_COLOR=color_14
...   BTN_ADD_TO_CART=add_to_cart
...   BTN_PROCEED_CHECKOUT=xpath://*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
...   BTN_PROCEED_CHECKOUT_2=xpath://*[@id="center_column"]/p[2]/a[1]/span 
...   BTN_PROCEED_CHECKOUT_RESUME=xpath://*[@id="center_column"]/form/p/button/span
...   BTN_MORE=xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a/span

&{ADRESS}
...   CP_FIRST_NAME=firstname
...   CP_LAST_NAME=lastname
...   CP_ADRESS=address1
...   CP_CITY=city
...   CP_STATE=xpath://*[@id="id_state"]/option[6]
...   CP_POSTAL_CODE=postcode
...   CP_HOME_PHONE=phone
...   CP_MOBILE_PHONE=phone_mobile
...   CP_ADDITIONAL_INFORMATION=other
...   CP_TITLE_FUTURE_REFERENCE=alias
...   BTN_SAVE=submitAddress
...   BTN_PROCEED_ADRESS=processAddress
   
&{SERVICE}
...   CHECK_BOX_TERMS_OF_SERVICE=cgv
...   BTN_PROCEED_CARRIER=processCarrier

&{PAYMENT}
...   BTN_PAY_BY_BANK=xpath://*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
...   BTN_CONFIRM_MY_ORDER=xpath://*[@id="cart_navigation"]/button/span
...   BTN_VIEW_YOUR_ORDER_HISYOTY=xpath://*[@id="center_column"]/p[2]/a


&{WOMEN}
...    WOMAN_TAB=//a[@title='Women']
...    BEADCRUMB_WOMEN=xpath://div[contains(@class,'breadcrumb clearfix')]
...    PRIMEIRA_OPCAO_WOMAN=(//a[@class='product-name'])[4]
...    BTN_COMPARE=xpath=(//form[@method='post'])[1]   


&{CARRINHO}
...    ADD_TO_CARD=xpath://span[contains(.,'Add to cart')]
...    BTN_PROCEED=xpath://span[contains(.,'Proceed to checkout')]
...    LABEL_TITLE=xpath://label[@class='attribute_label'][contains(.,'Size')]