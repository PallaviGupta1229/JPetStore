*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     JPetStore Demo
    click link  xpath://*[@id="MenuContent"]/a[2]
    ${"email_txt"}  set variable  name:username

    element should be visible  ${"email_txt"}
    element should be enabled  ${"email_txt"}

    input text  ${"email_txt"}  pycharm@gmail.com
    sleep  5
    clear element text  ${"email_txt"}
    sleep  5
    close browser

*** Keywords ***

