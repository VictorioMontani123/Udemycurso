*** Settings ***
Library      SeleniumLibrary
Resource      recursos.robot

*** Test Cases ***
C001 Ir al blog de Winston Castillo
    Abrir pagina principal
    Title Should Be   Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link   xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element is Visible    xpath=/html/body/div/div[2]
    Title Should Be     Winston Castillo – Un sitio para comunicarse
    Close Browser
C002 Abrir Pestaña modal
    Abrir pagina principal
    Title Should Be   Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[2]
    Wait Until Element Is Visible       xpath=//*[@id="exampleModalLabel"]
    Close Browser
