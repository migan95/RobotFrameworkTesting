*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SERVER}   http://venta_tickets.test
${BROWSER}  Firefox
${USER_VALIDO}     admin@test.com
${PASSWORD_VALIDO}     admin
${DASHBOARD}    http://venta_tickets.test/
${LOGIN_URL}    http://venta_tickets.test/login

*** Keywords ***
Abrir Navegador Pagina Login
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Verificar Login Abierto

Verificar Login Abierto
    Title Should Be    Login - Sistema Tickets

Navegar Pagina Login
    Go To    ${SERVER}
    Verificar Login Abierto

Ingresar Usuario
    [Arguments]     ${username}
    Input Text    email    ${username}

Ingresar Password
    [Arguments]     ${password}
    Input Text    password    ${password}

Enviar Credenciales
    Click Button    Iniciar Sesión
    
Verificar Dashboard
    Location Should Be    ${DASHBOARD}
    Title Should Be    Eventos - Sistema Tickets

