*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${browser}     chrome
${url}         http://automationpractice.com/index.php


*** Test Cases ***
HomepageTest
    Open Browser            ${url}   ${browser} 
    Checkhomepage
    Close Browser


*** Keywords ***
 Checkhomepage
    Click Element                                         xpath=//*[@class="img-responsive"]
    Click Element                                         xpath=//*[@title="Log in to your customer account"]
    Click Element                                         xpath=//*[@title="Contact Us"]
    Click Element                                         xpath=//*[@class="icon-home"]
    Click Element                                         xpath=//*[@title="Log in to your customer account"]
    Click Element                                         xpath=//*[@id="SubmitLogin"]
    Click Element                                         xpath=//*[@class="icon-home"]
    Wait Until Element Is Visible                         xpath=//*[@id="search_query_top"]   
    Input Text                                            xpath=//*[@id="search_query_top"]            Printed
    Click Element                                         xpath=//*[@name="submit_search"]
    Click Element                                         xpath=//*[@class="icon-home"]
    Click Element                                         xpath=//*[@title="View my shopping cart"]
    Click Element                                         xpath=//*[@class="icon-home"]
    Click Element                                         xpath=//*[@class="product_img_link"]
    Click Element                                         xpath=//*[@class="icon-home"]
    Click Element                                         xpath=//*[@class="bx-prev"]
    Click Element                                         xpath=//*[@class="bx-next"]
    
