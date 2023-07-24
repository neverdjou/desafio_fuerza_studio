*** Settings ***
Documentation       Funcionalidade: Painel Gestão de Férias
...                 Como usuário Gestor,
...                 quero visualizar as solcitações de Ferias ,
...                 bem como aprovar / reprova-las 
...    

Resource            ../../resources/keywords/front/gestao-ferias.resource
Resource            ../../resources/main.resource

Test Setup          Abrir navegador
Test Teardown        Finish Test

*** Test Cases ***
CT01 - Cenário Sucesso: Acesso ao painel de Gestão de Ferias 
    Dado que acesso painel de gestão de ferias
    Quando a tela é carregada corretamente
    Então visualizo as solicitações de ferias

CT02 - Cenário Sucesso: Aprovo uma solicitação de ferias
     Dado que acesso painel de gestão de ferias
     Quando a tela é carregada corretamente
     E clico no botão aprovar
     E Preencho o formulario Colaborado com "teste"
     E Preencho o formulario Gestor com "gestor teste"
     E Clico no botão "Aprovado" do modal     
     Então o status da solicitação sera atualizado para "Aprovado"

CT03 - Cenário Sucesso: Reprovo uma solicitação de ferias
     Dado que acesso painel de gestão de ferias
     Quando a tela é carregada corretamente
     E clico no botão reprovar
     E Preencho o formulario Colaborado com "teste"
     E Preencho o formulario Gestor com "gestor teste"
     E Clico no botão "Reprovado" do modal     
     Então o status da solicitação sera atualizado para "Reprovado"