*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}               https://www.zara.com/tr/
${ACCEPT_BUTTON}          xpath=//*[@id="onetrust-accept-btn-handler"]
${COUNTRY}                xpath=//button[@class='zds-button geolocation-modal__button zds-button--primary zds-button--small' and @data-qa-action='stay-in-store']/span[text()='Evet, Türkiye / Turkey internet sitesinde devam et']
${HOME_HEADER}            xpath=/html/body/div[2]/div/div[1]/div/div/header/div[1]/div/a
${MENU_BUTTON}            xpath=/html/body/div[2]/div/div[1]/div/div/header/button
${DRESSES_LINK}           xpath=//span[@class='layout-categories-category__name' and text()='ELBİSE']
${DRESS_URL}              xpath=https://www.zara.com/tr/tr/mucevher-yakali-midi-elbise-p04772339.html?v1=442037911&v2=2420896
${BASIC_DRESS}            xpath=//img[@alt='Zara Koyu taba - MÜCEVHER YAKALI MİDİ ELBİSE']
${SIZE}                   xpath=//button[@data-qa-action='size-in-stock' and .//div[text()='S']]
${ADD_BUTTON}             xpath=//button[@data-qa-action='add-to-cart']//span/span[text()='Ekle']
${BASKET_BUTTON}          xpath=//span[text()='Alışveriş sepetini gör']
${CONTINUE_BUTTON}        xpath=//button[@data-qa-id='shop-continue']
${LOGIN_BUTTON}           xpath=//button[@data-qa-id='oauth-logon-button']
${EMAIL_INPUT}            xpath=//input[@data-qa-input-qualifier='logonId']
${PASSWORD_INPUT}         xpath=//input[@data-qa-input-qualifier='password']
${LOGIN_SUBMIT_BUTTON}    xpath=//button[normalize-space()='Oturum aç']
${WAIT_TIMEOUT}           10s
${SHORT_WAIT}             1s
${MEDIUM_WAIT}            2s

*** Keywords ***
Open Zara Home Page
    Open Browser    ${HOME_URL}    firefox
    Maximize Browser Window
    Sleep    ${SHORT_WAIT}
    Click Element   ${ACCEPT_BUTTON}
    Sleep    ${SHORT_WAIT}
    Click Element   ${COUNTRY}
    Wait Until Page Contains Element    ${HOME_HEADER}    ${WAIT_TIMEOUT}

Open Menu
    Click Element   ${MENU_BUTTON}

Go To Dresses Section
    Sleep    ${SHORT_WAIT}
    Click Element    ${DRESSES_LINK}
    Sleep    ${MEDIUM_WAIT}
    Execute JavaScript    window.scrollBy(0, 3000)
    Sleep    ${SHORT_WAIT}

Select Dress By Name
    [Arguments]    ${DRESS_URL}   
    Wait Until Element Is Visible   ${BASIC_DRESS}      ${WAIT_TIMEOUT}
    Click Element    ${BASIC_DRESS}
    Sleep    ${MEDIUM_WAIT}

Select Size
    [Arguments]    ${SIZE}
    Wait Until Element Is Visible   ${ADD_BUTTON}         ${WAIT_TIMEOUT}
    Click Element    ${ADD_BUTTON}   
    Sleep    ${SHORT_WAIT}
    Click Element   ${SIZE}       
Go To Basket
    Sleep    ${SHORT_WAIT}
    Click Element  ${BASKET_BUTTON} 
    Sleep    ${SHORT_WAIT}

Proceed To Checkout
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}  
    Click Element                   ${CONTINUE_BUTTON}

Login & Payment
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=15s
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${EMAIL_INPUT}      ${WAIT_TIMEOUT}
    Input Text                      ${EMAIL_INPUT}       jane@doe.com
    Wait Until Element Is Visible    ${PASSWORD_INPUT}   ${WAIT_TIMEOUT}
    Input Text                      ${PASSWORD_INPUT}    mypassword
    Wait Until Element Is Visible    ${LOGIN_SUBMIT_BUTTON}   ${WAIT_TIMEOUT}
    Click Element                   ${LOGIN_SUBMIT_BUTTON}

    


Close Zara Browser
    Sleep    ${SHORT_WAIT}
    Close Browser
