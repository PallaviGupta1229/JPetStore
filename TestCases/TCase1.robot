*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}      https://petstore.octoperf.com/actions/Catalog.action
*** Test Cases ***
LoginTest1
    open browser    ${url}    ${browser}
    loginToApplication
    close browser



*** Keywords ***
loginToApplication
        click link      xpath://*[@id="MenuContent"]/a[2]
        input text      name:username   palg@gmail.com
        input text      name:password  Pallavi@123
        click element   name:signon

