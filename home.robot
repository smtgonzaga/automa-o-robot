*** Settings ***
Documentation        Suíte de testes da página principal 
Library              SeleniumLibrary

*** Test Cases ***
Webapp deve estar Online
    Open Browser            https://walkdog.vercel.app/    chrome
    
    Title Should Be         Walkdog by Papito
    Page Should Contain     Cuidado e diversão em cada passo
    #temporário
    Sleep    5             # Aguarda 5 segundos para visualização
    Close Browser


    

