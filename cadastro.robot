*** Settings ***
Resource    SignupPage.robot
Library     SeleniumLibrary

*** Variables ***
${Nome}           Hermione Granger
${Email}          hermione@mailinator.com
${CPF}            23036754059
${CEP}            74680285
${Numero}         123
${UploadArquivo}  ${EXECDIR}\\document.png

*** Test Cases ***
Cadastro com Sucesso
    [Tags]    happy_path
    [Documentation]    Preencher todos os campos obrigatórios e verificar o sucesso do cadastro.
    Abra a Página de Cadastro
    Preencha o Formulário com Sucesso    ${Nome}    ${Email}    ${CPF}    ${CEP}    ${Numero}    ${UploadArquivo}
    Clique em Enviar
    Verifique Sucesso do Cadastro
    Capture Page Screenshot    Cadastro_dog_walker_success.png
    Close Browser

Cadastro Incompleto
    [Tags]    required
    [Documentation]    Preencher apenas alguns campos obrigatórios e verificar a mensagem de erro.
    Abra a Página de Cadastro
    Clique em Enviar
    Verifique Mensagens de Erro Campos Obrigatórios
    Capture Page Screenshot    campos_obrigatórios.png
    Close Browser

CPF Inválido
    [Tags]      cpf_inv
    [Documentation]    Preencher com um CPF inválido e verificar a mensagem de erro.
    Abra a Página de Cadastro
    Preencha o Formulário com Sucesso    ${Nome}    ${Email}    12345a    ${CEP}    ${Numero}    ${UploadArquivo}
    Clique em Enviar
    Verifique Mensagem de Erro CPF Inválido
    Capture Element Screenshot     xpath=//span[@class="alert-error"][text()="CPF inválido"]
    Capture Page Screenshot    cpf_invalido.png
    Close Browser

Email Inválido
    [Tags]     email_inv
    [Documentation]    Preencher com um email inválido e verificar a mensagem de erro.
    Abra a Página de Cadastro
    Preencha o Formulário com Sucesso    ${Nome}    seuemail    ${CPF}    ${CEP}    ${Numero}    ${UploadArquivo}
    Clique em Enviar
    Verifique Mensagem de Erro Email Inválido
    Capture Element Screenshot     xpath=//span[@class="alert-error"][text()="Informe um email válido"]
    Capture Page Screenshot    email_invalido.png
    Close Browser
