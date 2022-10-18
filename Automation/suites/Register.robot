*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${browser}     chrome
${url}         http://automationpractice.com/index.php


*** Test Cases ***
RegisterTest
    Open Browser            ${url}   ${browser} 
    registerToApplication
    failedregister
    Close Browser


*** Keywords ***
registerToApplication
      Click Link                           xpath=//*[@title="Log in to your customer account"]
      Input Text                           xpath=//*[@id="email_create"]           feliksric@gmail.com
      Click Element                        xpath=//*[@id="SubmitCreate"]
      Wait Until Element Is Visible        xpath=//*[@id="id_gender1"]  
      Click Element                        xpath=//*[@id="id_gender1"]          
      Input Text                           xpath=//*[@id="customer_firstname"]   feliks
      Input Text                           xpath=//*[@id="customer_lastname"]     ric
      Input Text                           xpath=//*[@id="email"]               feliksric@gmail.com
      Input Password                       xpath=//*[@id="passwd"]              feliks123
      Select From List By Index            xpath=//*[@id="days"]                4
      Select From List By Index            xpath=//*[@id="months"]              2
      Wait Until Element Is Visible        xpath=//*[@value="2022"] 
      Select From List By Value            xpath=//*[@value="2022"]              
      Wait Until Element Is Visible        xpath=//*[@id="newsletter"]
      Click Element                        xpath=//*[@id="newsletter"]
      Click Element                        xpath=//*[@id="optin"]
      Input Text                           xpath=//*[@id="firstname"]            feliks                   
      Input Text                           xpath=//*[@id="lastname"]             ric
      Input Text                           xpath=//*[@id="company"]              dojobox
      Input Text                           xpath=//*[@id="address1"]             kenangan
      Input Text                           xpath=//*[@id="address2"]             manis
      Input Text                           xpath=//*[@id="city"]                 Jogja
      Wait Until Element Is Visible        xpath=//*[@id="id_state"]             2
      Select From List By Index            xpath=//*[@id="id_state"]             2
      Input Text                           xpath=//*[@id="postcode"]             93928
      Wait Until Element Is Visible        xpath=//*[@id="id_country"]           21
      Select From List By Index            xpath=//*[@id="id_country"]           21
      Input Text                           xpath=//*[@id="other"]                welcome
      Input Text                           xpath=//*[@id="phone"]                9898989334
      Input Text                           xpath=//*[@id="phone_mobile"]         8786565323         
      Input Text                           xpath=//*[@id="alias"]                myaddress
      Click Element                        xpath=//*[@id="submitAccount"] 
      Click Element                        xpath=//*[@class="logout"]
                                
 failedregister
      Click Link                           xpath=//*[@title="Log in to your customer account"]
      Input Text                           xpath=//*[@id="email_create"]           juanric@gmail.com
      Click Element                        xpath=//*[@id="SubmitCreate"]
      Click Element                        xpath=//*[@id="submitAccount"] 
