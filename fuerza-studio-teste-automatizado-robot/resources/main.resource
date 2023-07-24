*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser


*** Keywords ***
Abrir navegador
    New Browser    browser=chromium    headless=False
    Set Browser Timeout    20
    New Context    viewport={'width': 1920, 'height': 1080}    acceptDownloads=True
  
Finish Test
    Take Screenshot
 