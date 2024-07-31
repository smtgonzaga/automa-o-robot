*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://walkdog.vercel.app/signup

*** Keywords ***
Abra a Página de Cadastro
    Open Browser    ${URL}    Chrome

Preencha o Formulário com Sucesso
    [Arguments]    ${nome}    ${email}    ${cpf}    ${cep}    ${numero}    ${upload_file}
    Input Text    css:input[type="text"][name="name"]    ${nome}
    Input Text    css:input[type="text"][name="email"]    ${email}
    Input Text    css:input[type="text"][name="cpf"]    ${cpf}
    Input Text    css:input[type="text"][name="cep"]    ${cep}
    Input Text    css:input[type="number"][name="addressNumber"]    ${numero}
    Click Element    xpath://p[contains(text(), 'Upload do seu documento de identificação')]
    Choose File    xpath://input[@type="file"]    ${upload_file}

Clique em Enviar
    Click Button    css:button.button-register

Verifique Sucesso do Cadastro
    Wait Until Page Contains    Obrigado!

Verifique Mensagens de Erro Campos Obrigatórios
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Informe o seu nome completo"]
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Informe o seu melhor email"]
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Informe o seu CPF"]
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Informe o seu CEP"]
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Informe um número maior que zero"]
    Element Should Be Visible    xpath=//span[@class="alert-error"][text()="Adcione um documento com foto (RG ou CHN)"]

Verifique Mensagem de Erro CPF Inválido
    Wait Until Page Contains    CPF inválido

Verifique Mensagem de Erro Email Inválido
    Wait Until Page Contains    Informe um email válido
