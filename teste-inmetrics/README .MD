## Preparação do Ambiente de Testes

Para preparação do ambiente de teste siga os seguintes passos:

```shell script
1) Clone este projeto executando em seu terminal: git clone https://github.com/SteicyAlves/In-Test

2) Instale o Ruby com versão >= 2.4.0

3) Instale a gem do Bundler para gestão das GEMs:
    - Após instalar, acesse a raiz do projeto e e execute no terminal: bundler install
        *Após esse comando todas as GEMs utilizadas no projeto serão instaladas

4) Instale os drivers do firefox(geckodriver) e chrome(chromedriver):
    - Windows - Após a instalação, descompacte e mova o executável para a pasta Windows;
    - MacOS e Linux - Após a instalação, descompacte e execute os comandos: 
        Para Chromedriver:
        chmod +x chromedriver
        sudo mv chromedriver /usr/local/bin

        Para Geckodriver:
        chmod +x geckodriver
        sudo mv geckodriver /usr/local/bin
```

## Execução dos Cenários de Teste

```shell script
Para executar os testes, vá para a pasta raiz do projeto e execute no terminal: 
    - Para executar todos os cenários de teste, execute: cucumber
    - Para executar um teste específico, execute: cucumber -t @tag_do_cenario
        *A tag do cenário pode ser encontrada dentro de features/specs/arquivo.feature desejado.
```