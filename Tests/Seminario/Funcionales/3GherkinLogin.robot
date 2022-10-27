*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          ../../recursos.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given el navegador abre la pagina de login
    When el usuario "admin@test.com" ingresa con la clave "admin"
    Then verificar dashboard

*** Keywords ***
El navegador abre la pagina de login
    Abrir Navegador Pagina Login

El usuario "${username}" ingresa con la clave "${password}"
    Ingresar Usuario    ${username}
    Ingresar Password    ${password}
    Enviar Credenciales