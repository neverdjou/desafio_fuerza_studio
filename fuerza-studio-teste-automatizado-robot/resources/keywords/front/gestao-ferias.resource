*** Settings ***


Documentation     Keywords utilizadas

Resource    ../../locators/locators.resource

Library    Browser


*** Keywords ***
Dado que acesso painel de gestão de ferias  
    New Page    ${URL_FRONT}
      ${GET_TITLE}=    Get Title
     Should Be Equal As Strings    ${GET_TITLE}    ${TITLE} 

Quando a tela é carregada corretamente
     Wait For Elements State    ${BOTAO_APPROVE}   visible     timeout=10s

 Então visualizo as solicitações de ferias
     Wait For Elements State    ${ITEM_FERIAS}    visible    timeout=10s

 E clico no botão aprovar     
    Click     ${BOTAO_APPROVE}

E Preencho o formulario Colaborado com "teste"
    Fill Text    ${FORM_COLABORADOR}   teste 
  
E Preencho o formulario Gestor com "gestor teste"
    Fill Text    ${FORM_GESTOR}   gestor teste 

E Clico no botão "Aprovado" do modal     
    Click     ${BOTAO_APROVADO}
Então o status da solicitação sera atualizado para "Aprovado"
    Wait For Elements State    ${STATUS_APROVADO}    visible    timeout=10s

E clico no botão reprovar
    Click     ${BOTAO_REPROVE}

E Clico no botão "Reprovado" do modal 
    Click     ${BOTAO_REPROVADO}

Então o status da solicitação sera atualizado para "Reprovado"
    Wait For Elements State    ${STATUS_REPROVADO}    visible    timeout=10s