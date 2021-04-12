*** Settings ***
Library     String

*** Variables ***
${navegador}    chrome
${URL}          http://www.winstoncastillo.com/udemy

*** Keywords ***
Abrir pagina principal
    Open Browser    ${URL}   ${navegador}