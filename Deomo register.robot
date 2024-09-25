*** Settings ***
Library    PuppeteerLibrary
Library    Dialogs
*** Variables ***
${FiletoUp}    C:/Users/Nutchanon Ragchart/Pictures/Logo สสส.png

*** Test Cases ***

Demo register 
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/register-form-example.html   options=${options}
    Input Text    id:inputEmail4   demo@qahive.com
    Input Text    id:inputPassword4    123456
    Input Text    id:inputAddress    1234 abacadraba st 
    Input Text    id:inputAddress2    Tomato studio 
    Input Text    id:inputCity    Bangkok
    Select From List By Label   id:inputState  Florida
    Wait Until Element Contains    id:inputState    Florida
    Input Text    id:inputZip    1220003
    Click Button    xpath:(//button)[1]
    Dialogs.Pause Execution

Basic HTML Test
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Click Button    id:get_ajax
    Dialogs.Pause Execution
    Click Button    id:alert_confirm
    Dialogs.Pause Execution
    Click Element    id:open-new-tab
    Wait For New Window Open    
    Switch Window    NEW
    Click Element   css:button.btn.btn-primary   
    Wait For New Window Open   
    Switch Window    NEW
    Wait Until Page Contains    Error Page
    Dialogs.Pause Execution
    Close Window    
    Close Window    
    Drag And Drop    id:ball    id:gate
    Dialogs.Pause Execution
    Select From List By Label  id:cars    Volvo
    Wait Until Element Contains    id:cars    Volvo
    Dialogs.Pause Execution
    Sleep    1
    Select From List By Label  id:cars    Saab
    Wait Until Element Contains    id:cars    Saab
    Dialogs.Pause Execution
    Sleep    1
    Select From List By Label  id:cars    Opel
    Wait Until Element Contains    id:cars    Opel
    Dialogs.Pause Execution
    Sleep    1
    Select From List By Label  id:cars    Audi
    Wait Until Element Contains    id:cars    Audi
    Dialogs.Pause Execution
    Click Element    id:prop-enable
    Input Text    id:prop-visible    Something
    Dialogs.Pause Execution

File Upload
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Upload File    id:fileToUpload    ${FiletoUp} 
    Dialogs.Pause Execution
    Click Element    css:input[value="Upload Image"]
    Wait Until Page Contains    Error response

Hide elements
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Click Element    id:click_and_hide
    Wait Until Element Is Hidden    id:click_and_hide
    Dialogs.Pause Execution

Notification 
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Click Element    id:popup_modal
    Wait Until Element Is Visible    id:exampleModalLongTitle
    Wait Until Element Contains    id:exampleModalLongTitle   Modal title
    Click Element    id:close_modal
    Dialogs.Pause Execution
    Click Element    id:popup_modal_fade
    Wait Until Element Is Visible    id:exampleModalFadeTitle
    Wait Until Element Contains    id:exampleModalLongTitle   Fade Modal title
    Click Element    id:close_modal_fade
    Dialogs.Pause Execution


Hover elements
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Mouse Over    id:dropdown-menu
    Click Element    id:menu-login

Link click
     &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Click Element    id:goto-login-page
File dowload
     &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html  options=${options}
    Download File    id:download-file

    
    