*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/ZaraKeywords.robot

*** Keywords ***
Select Dress By Name
    [Arguments]    ${dress_url}
    Select Dress By Name    ${dress_url}
