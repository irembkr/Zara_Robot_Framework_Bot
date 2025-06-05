*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Google Açılış Testi
    Open Browser    https://www.google.com    firefox
    Sleep    3s
    Close Browser
