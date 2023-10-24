***Settings***
Library             SeleniumLibrary

***Variables***
${urlsaucedemo}     https://www.saucedemo.com/v1/
${txfusername}      id = user-name
${txfpassword}      id = password
${btnlogin}         id = login-button


***Keywords***
Input Valid data
    Open Browser    ${urlsaucedemo}     Chrome
    Input Text      ${txfusername}      standard_user
    Input Text      ${txfpassword}      secret_sauce
    Click Element   ${btnlogin}

Input Invalid data
    Open Browser    ${urlsaucedemo}     Chrome
    Input Text      ${txfusername}      xxxxaaaaxxxx
    Input Text      ${txfpassword}      zzzzccvzzzzz
    Click Element   ${btnlogin}

***Test Cases***
Login Valid data
    Input valid data
    Close Browser

Login Invalid data
    Input Invalid data
    Close Browser