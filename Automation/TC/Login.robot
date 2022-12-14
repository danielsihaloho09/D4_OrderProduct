*** Settings ***
Library      SeleniumLibrary
Documentation   login related keyword
variables      ../resources/login_locators.yaml


*** Variables ***
${browser}     chrome
${url}         http://automationpractice.com/index.php
${EmailLogin}  danielsihaloho2@gmail.com
${PassLogi}    123456

*** Test Cases ***
LoginTest
    Open Browser            ${url}   ${browser}
    failedlogin
    loginToApplication
    Close Browser


*** Keywords ***

failedlogin
      Click Link           xpath=//*[@title="Log in to your customer account"]
      Input Text           xpath=//*[@id="email"]        danielsi@gmail.com
      Input Password       xpath=//*[@id="passwd"]        tester
      Click Element        xpath=//*[@id="SubmitLogin"]

loginToApplication
      Input Text            xpath=//*[@id="email"]        danielsihaloho2@gmail.com
      Input Password        xpath=//*[@id="passwd"]        123456
      Click Element         xpath=//*[@id="SubmitLogin"]
      Click Element         xpath=//*[@class="logout"]