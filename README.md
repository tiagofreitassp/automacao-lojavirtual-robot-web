# automacao-lojavirtual-robot-web
Scripts de automação web em uma Loja Virtual desenvolvido com Python, Robot Framework e Selenium.

### Cobertura dos testes:  ###

* Realizar compra online

## Tecnologias:
* [Robot Framework](https://robotframework.org/)
* [Python 3.9+](https://www.python.org/)
* [Selenium](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
* [VS Code](https://code.visualstudio.com/)
* [PyPI](https://pypi.org/project/selenium/)

## Dependências:
* SeleniumLibrary
* Python 3
* Utilize o pip install para instalar via terminal os drivers dos navegadores.

## Instruções de execução:

###  - Plataforma
*Importante:

O projeto foi criado para executar no MacOS. Mas pode receber adaptacoes para executar no Windows e Linux caso nao execute bem fora do MacOS.

Recomendado utilizar o Visual Studio Code.

###  - Fluxo
*Descricao: Este script ira executar uma compra online, seguindo o fluxo desde a escolha do produto ate a etapa de confirmacao da compra.

###  - Massas
*Descricao: 
Apos a execucao, os relatórios sao armazenadas na pasta Results.

Antes de executar nao esqueca de trocar as massas por uma adequada. Nao ha problema em usar a massa disponivel na feature desde que verifique antes se o site nao apagou do banco de dados.

###  - Inicializar a automação
*Descricao:

Inserir as massas para teste na classe massas.robot em Resource/data.

Abrir o Terminal do Visual Studio Code.

O webdriver deve ficar na pasta drivers, este projeto esta setado apenas para o Chrome no Mac OS e no Windows. Nao esqueca de verificar tambem a versao do navegador e baixar os webdrivers para os outros navegadores.

1. Executar o Robot.

robot bdd.robot

2. Executar o Robot mas escolhendo onde salvar os logs/resultados.

robot -d Results bdd.robot

3. Executar um cenario especifico.

robot -d Results -t "Cenário 2: Executar outro vídeo no Youtube" bdd.robot

4. Executar todos os cenarios.

robot -d Results Tests

5. Executar cenarios com determinada tag.

robot -d Results -i regressivo Tests
robot -d Results Tests/bdd.robot