*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${browser}     chrome
${url}         http://automationpractice.com/index.php


*** Test Cases ***
Contact Us Test
    Open Browser            ${url}   ${browser} 
    Failed Contact Us
    Check Contact Us
    Close Browser


*** Keywords ***

Failed Contact Us
     Click Element                                        xpath=//*[@title="Contact Us"]
     Click Element                                        xpath=//*[@id="submitMessage"]  
Check Contact Us
    Click Element                                         xpath=//*[@title="Contact Us"]
    Select From List By Index                             xpath=//*[@id="id_contact"]                 2
    Input Text                                            xpath=//*[@id="email"]                      danielsihaloho@gmail.com
    Input Text                                            xpath=//*[@id="id_order"]                   Free           
    Wait Until Element Is Visible                         xpath=//*[@id="uniform-fileUpload"]         
    Click Element                                         xpath=//*[@id="uniform-fileUpload"]   
    Wait Until Element Is Visible                         xpath=//*[@id="uniform-fileUpload"]                     
    Choose File                                           xpath=//*[@id="uniform-fileUpload"]        /Users/DANIEL/TESTING.JPG
    Input Text                                            xpath=//*[@id="message"]                   Oke,sudah sesuai dengan yang diinginkan
    Click Element                                         xpath=//*[@id="submitMessage"]     
