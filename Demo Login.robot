*** Settings ***
Library    PuppeteerLibrary
Library    Dialogs
*** Test Cases ***
Demo login with valid password and username
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/login-form-example.html    options=${options}
    Input Text    id:exampleInputEmail1   demo@qahive.com
    Input Text    id:exampleInputPassword1    123456789
    Click Element    id:exampleCheck1
    Run Async Keywords
    ...    Wait For New Window Open    AND
    ...    Click Element    css:button.btn.btn-primary
    Switch Window     NEW
    Wait Until Page Contains    Welcome Page
    Dialogs.Pause Execution
    
