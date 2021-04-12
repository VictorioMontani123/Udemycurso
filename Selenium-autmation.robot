*** Settings ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${navegador}    chrome
${URL}          automationpractice.com/index.php
${scheme}       http
${testurl}      ${scheme}://${URL}

*** KeyWords ***
Open Homepage
    Open Browser    ${testurl}      ${navegador}

*** Test Cases ***
C001 Hacer Click en Contenedores
    Open Homepage
    Set Global Variable     @{nombredecontenedores}     //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    FOR    ${nombredecontenedor}        IN         @{nombredecontenedores}
       Click Element   xpath=${nombredecontenedor}
       Wait Until Element Is Visible   xpath=/html/body/div/div[2]/div/div[3]/div/div/div/div[2]/div[1]/span/img
       Click Element   xpath=//*[@id="header_logo"]/a/img
    END
    Close Browser

C002 Primer caso de prueba
    Open Homepage