***Settings***

Library             SeleniumLibrary
Variables           resources/variable.py


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