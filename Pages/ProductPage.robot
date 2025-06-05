*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/ZaraKeywords.robot

*** Keywords ***
Select Size
    [Arguments]    ${SIZE}
    Select Size    ${SIZE}

Go To Basket
    Go To Basket
