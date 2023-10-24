***Settings***
Library             SeleniumLibrary
Suite Setup         Open Browser  ${webSauceDemo}   ${BROWSER}
Suite Teardown      Close Browser
Variables           ../resources/login_locators.py

***Variables***
${webSauceDemo}     https://www.saucedemo.com/v1/
${BROWSER}          chrome

***Keywords***

input Username
    Input Text  ${txtUsername}     standard_user

input Invalid Username
    Input Text  ${txtUsername}     asdasfsaf

input password
    Input Text  ${txtPassword}     secret_sauce

input Invalid password
    Input Text  ${txtPassword}     secreasdsasce

Click Button Login
    Click Element   ${btnLogin}
    Sleep   1s

Verify On Login Page
    Page Should Contain     Sauce Labs Backpack


***Test Cases***
user login with valid data
    input Username
    input password
    Click Button Login
    

    