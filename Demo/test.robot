*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
login test
    [Documentation]    ceci est un test de login
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Input Text    id=txtUsername    &{datalogin}[key1]            #@{logins}[0]
    Input Password    id=txtPassword    &{datalogin}[key2]        #@{logins}[1]    
    Click Button    id=btnLogin  
    Click Element    id=welcome    
    Set Browser Implicit Wait    1   
    Wait Until Element Is Visible    link=Logout       
    Click Element    link=Logout
    Close Window
    Log    ceci est un test execute %{username} dans %{os} 
    Log    %{os}        
    

*** Variables ***
#variable scalaire
${Url}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc
#variable list
#@{logins}    Admin    admin123
#variable dictionnaire
&{datalogin}    key1=Admin    key2=admin123

