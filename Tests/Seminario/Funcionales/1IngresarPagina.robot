*** Settings ***
Library     SeleniumLibrary
Resource    ../../recursos.robot

*** Test Cases***
Navegacion Login Valido
    Abrir Navegador Pagina Login
    Ingresar Usuario    admin@test.com
    Ingresar Password    admin
    Enviar Credenciales
    Verificar Dashboard
