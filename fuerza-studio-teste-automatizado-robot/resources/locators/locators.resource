*** Settings ***
Documentation       Estrutura com todos os elementos identificados no sistema


*** Variables ***

#    PAINEL-COTACAO
${TITULO_COLABORADOR}        //th[@scope='col'][contains(.,'Colaborador')]
${TITLE}                     Fuerza Space
${BOTAO_APPROVE}             (//button[contains(.,'approve_')])[1]
${BOTAO_REPROVE}             (//button[contains(.,'reprove_')])[1]
${URL_FRONT}                 https://jr-qa.fuerza.space/
${ITEM_FERIAS}               //img[@alt='The Turnip Avenger']
${FORM_COLABORADOR}          //textarea[contains(@name,'message_collaborator')]
${FORM_GESTOR}               //textarea[contains(@name,'message_manager')]
${BOTAO_APROVADO}            //button[@type='submit'][contains(.,'APPROVED')]
${BOTAO_REPROVADO}           //button[@type='submit'][contains(.,'REPROVED')]
${STATUS_APROVADO}           //div[@data-test='4gfvkqfhj4ntneu'][contains(.,'APPROVED')]
${STATUS_REPROVADO}          //div[@data-test='4gfvkqfhj4ntneu'][contains(.,'REPROVED')]                                                          
