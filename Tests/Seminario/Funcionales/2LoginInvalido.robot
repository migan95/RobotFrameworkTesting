*** Settings ***
Documentation       Esta prueba probara que pasa si se ingresa informacion incorrecta.
...
...
...                 Si se desea seguir escribiendo comentarios de la suite de pruebas, solo se
...                 colocan puntos al principio de la linea.
Suite Setup         Abrir Navegador Pagina Login
Suite Teardown      Close Browser
Test Setup          Navegar Pagina Login
Test Template       Login Con Credenciales Incorrectas Debe Fallar
Resource            ../../../Resources/recursos.robot

*** Test Cases ***          USUARIO             PASSWORD
Usuario Invalido            invalido            ${PASSWORD_VALIDO}
Password Invalido           ${USER_VALIDO}      invalido
Ambos Invalidos             invalido            invalido
Usuario Vacio               ${EMPTY}            ${PASSWORD_VALIDO}
Password Vacio              ${USER_VALIDO}      ${EMPTY}
Ambos Vacios                ${EMPTY}            ${EMPTY}


*** Keywords ***
Login Con Credenciales Incorrectas Debe Fallar
    [Arguments]     ${username}     ${password}
    Ingresar Usuario        ${username}
    Ingresar Password       ${password}
    Enviar Credenciales
    Login Debio Fallar

Login Debio Fallar
    Location Should Be      ${LOGIN_URL}
    Title Should Be         Login - Sistema Tickets

