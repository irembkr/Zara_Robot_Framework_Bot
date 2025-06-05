*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/HomePage.robot
Resource   ../pages/DressesPage.robot
Resource   ../pages/ProductPage.robot

*** Test Cases ***
Zara Shopping Test
    ZaraKeywords.Open Zara Home Page
    ZaraKeywords.Open Menu
    ZaraKeywords.Go To Dresses Section
    ZaraKeywords.Select Dress By Name    MÜCEVHER YAKALI MİDİ ELBİSE
    ZaraKeywords.Select Size   ${SIZE}
    ZaraKeywords.Go To Basket
    ZaraKeywords.Proceed To Checkout
    ZaraKeywords.Login & Payment
    ZaraKeywords.Close Zara Browser

