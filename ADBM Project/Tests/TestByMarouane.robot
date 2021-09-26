*** Settings ***
Library    SeleniumLibrary


   
*** Test Cases ***
FirstTest
    [Tags]    smoke
    Log    First Test  
    
SecondTest
    Log    Second Test
    Set Tags    Regression1
    Remove Tags    Regression1
    
ThirdTest
    Log    Third Test
    
FourthTest
    Log    Fourth Test


    


    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin             admin123
&{LOGINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKWD 
    Input Text            id=txtUsername        @{CREDENTIALS}[0]    
    Input Password        id=txtPassword        &{LOGINDATA}[password]
    Click Button    id=btnLogin
        
    