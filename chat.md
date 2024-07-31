Crie um teste automatizado em Robot Framework usando as informações abaixo.
URL a ser acessada: https://walkdog.vercel.app/signup
Utilize CPF válido 
Utilize CEP válido
Utilize e-mail válido 
Para submeter o formulário é necessário clicar no botão "Cadastrar" (<button type="submit" class="button-register">Cadastrar</button>)
O upload do documento será feito com o arquivo document.png 

Inclua como passo obrigatório, o upload de arquivo que está no trecho html abaixo 
<p><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="17 8 12 3 7 8"></polyline><line x1="12" y1="3" x2="12" y2="15"></line></svg>Upload do seu documento de identificação</p>


Funcionalidade:
Sendo um visitante do site que goste de cuidar de pets 
Posso fazer meu cadastro como Dog Walker 
para que eu possa ter uma nova fonte de renda com essa atividade 


| Seletor CSS                                | Nome do Campo em Português | Estado       | Obrigatório
|--------------------------------  ----------|----------------------------|--------------|-------------
| input[type="text"][name="name"]            | Nome completo              | Habilitado   | Sim |
| input[type="text"][name="email"]           | E-mail                     | Habilitado   | Sim |
| input[type="text"][name="cpf"]             | CPF somente números        | Habilitado   | Sim |
| input[type="text"][name="cep"]             | CEP                        | Habilitado   | Sim |
| input[type="number"][name="addressNumber"] | Número                     | Habilitado   | Sim |
| input[type="text"][name="addressDetails"]  | Complemento                | Habilitado   | Não |
| input[type="text"][name="addressStreet"]   | Rua                        | Desabilitado | Não |
| input[type="text"][name="addressDistrict"] | Bairro                     | Desabilitado | Não |
| input[type="text"][name="addressCityUf"]   | Cidade/UF                  | Desabilitado | Não |


Contexto: dado que visito o site WalkDog 
e que desejo me tornar um dog walker 

Cenário 1: Registro bem-sucedido como Dog Walker

    Preencher todos os campos obrigatórios.
    Enviar o formulário de registro.
    Receber a mensagem: "Seu cadastro foi para análise".

Cenário 2: Registro incompleto como Dog Walker

    Preencher apenas alguns campos obrigatórios.
    Enviar o formulário de registro.
    Esperar uma mensagem de erro indicando campos obrigatórios não preenchidos.

Cenário 3: Registro com CPF inválido como Dog Walker

    Preencher todos os campos obrigatórios, incluindo um CPF inválido.
    Enviar o formulário de registro.
    Esperar uma mensagem de erro: "CPF inválido".

Cenário 4: Registro com e-mail inválido como Dog Walker

    Preencher todos os campos obrigatórios, incluindo um e-mail inválido.
    Enviar o formulário de registro.
    Esperar uma mensagem de erro: "Informe um email válido"