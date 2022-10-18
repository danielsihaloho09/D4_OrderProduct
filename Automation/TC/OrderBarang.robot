*** Settings ***
Library      SeleniumLibrary
variables      ../resources/OrderBarang_locators.yaml

*** Variables ***
${browser}                chrome
${url}                    http://automationpractice.com/index.php
${email_field}            danielsihaloho2@gmail.com
${password_field}         123456
${search_field}           Blouse


*** Test Cases ***
Order Barang Test
    Open Browser            ${url}   ${browser} 
    Flow Order Barang
    Close Browser


*** Keywords ***
 Flow Order Barang
    Click Link                          xpath=//*[@title="Log in to your customer account"]
    Input Text                          xpath=//*[@id="email"]        danielsihaloho2@gmail.com
    Input Password                      xpath=//*[@id="passwd"]        123456
    Click Element                       xpath=//*[@id="SubmitLogin"]
    Wait Until Element Is Visible       xpath=//*[@id="search_query_top"]   
    Input Text                          xpath=//*[@id="search_query_top"]            Blouse
    Click Element                       xpath=//*[@name="submit_search"]
    Click Element                       xpath=//*[@title="Add to cart"]
    Wait Until Element Is Visible       xpath=//*[@title="Proceed to checkout"]
    Click Element                       xpath=//*[@title="Proceed to checkout"]
    Click Element                       xpath=//*[@class="button btn btn-default standard-checkout button-medium"]
    Input Text                          xpath=//*[@name="message"]      Saya tunggu barangnya admin, Terima Kasih
    Click Element                       xpath=//*[@name="processAddress"]    
    Wait Until Element Is Visible       xpath=//*[@id="cgv"]     
    Checkbox Should Be Selected         xpath=//*[@id="cgv"]   
    Click Element                       xpath=//*[@class="button btn btn-default standard-checkout button-medium"] 
    Click Element                       xpath=//*[@class="bankwire"]
    Click Element                       xpath=//*[@class="button btn btn-default button-medium"]

    

