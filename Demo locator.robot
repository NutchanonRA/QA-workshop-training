*** Settings ***
Library    PuppeteerLibrary
Library    Dialogs
*** Test Cases ***
Demo id locator   
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html     options=${options}
    Input Text    id:prop-visible    RF Puppeteer
    Dialogs.Pause Execution

Demo css locator
    &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html     options=${options}
    Input Text    css:input[value="Visible"]   RF Puppeteer
    Dialogs.Pause Execution

Demo Xpath locator
  &{options} =	create dictionary	headless=${False}
    Open Browser   http://127.0.0.1:7272/basic-html-elements.html     options=${options}
    Input Text    xpath:(//input)[1]   RF Puppeteer
    Dialogs.Pause Execution