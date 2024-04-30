# Projeto Flutter

Este repositório contém três aplicativos e um projeto principal em Flutter.

## Projeto 1 - Gerenciador de Contatos

O Projeto 1 é um aplicativo de gerenciamento de contatos desenvolvido em Flutter.

#### Funcionalidades:

1. **Tela de Login:**
   - Uma tela de login com dois campos: Nome de usuário e senha.
   - Um botão "Entrar" para acessar o aplicativo.

2. **Lista de Contatos:**
   - Uma lista (ListView) para exibir os contatos cadastrados.
   - Um botão flutuante com o texto "+" para adicionar novos contatos.

3. **Formulário de Cadastro:**
   - Ao clicar no botão "+" da lista de contatos, abre-se uma nova tela com um formulário.
   - O formulário contém campos para inserir o nome, telefone e email do contato.
   - Botões "Sair" e "Salvar" para cancelar ou confirmar o cadastro do contato.

4. **Funcionalidade Extra:**
   - Ao clicar no botão "Sair" do formulário de cadastro, mostra-se um AlertDialog para confirmar o encerramento da aplicação.

#### Desenvolvimento:

- O aplicativo foi desenvolvido utilizando o Flutter.
- Para armazenar os dados dos contatos, foi utilizado o pacote `shared_preferences` ou `prefs`.
- A integração com o pacote `shared_preferences` ou `prefs` permite que os contatos sejam salvos localmente no dispositivo do usuário.
- Não foram implementadas funcionalidades de edição ou remoção de contatos, conforme especificado.

#### Documentação Externa:

- [shared_preferences](https://pub.dev/packages/shared_preferences)
- [prefs](https://pub.dev/packages/prefs)

## Como Executar

Para executar o Projeto 1, siga as instruções abaixo:

1. Certifique-se de ter o Flutter instalado. Se não, siga as instruções em [flutter.dev](https://flutter.dev/docs/get-started/install).
2. Clone este repositório em sua máquina local.
3. Navegue até o diretório do projeto.
4. Execute o comando `flutter run` no terminal.

## Aplicativos

### App 1 - First App

O App 1 é o primeiro aplicativo desenvolvido neste projeto. Ele é uma aplicação básica que demonstra conceitos iniciais de Flutter.

#### Diretório:
```
app_1/app1
```

#### Funcionalidades:
- Interface simples
- Demonstração de widgets básicos do Flutter

### App 2 - Button

O App 2 é um aplicativo simples que demonstra o uso de botões em Flutter.

#### Diretório:
```
app_2/apk_2
```

#### Funcionalidades:
- Demonstração de vários tipos de botões
- Navegação entre telas

### App 3 - Colors

O App 3 é um aplicativo mais complexo que combina várias funcionalidades do Flutter em uma única aplicação.

#### Diretório:
```
app_3/apk_3
```

#### Funcionalidades:
- Interface mais elaborada
- Utilização de listas e itens interativos
- Gerenciamento de estado avançado

## Contribuindo

Se você quiser contribuir para este projeto, sinta-se à vontade para abrir um problema ou enviar uma solicitação de pull request. 

---

Essa documentação fornece uma visão geral do Projeto 1, incluindo suas funcionalidades, o desenvolvimento utilizando Flutter e a integração com o pacote `shared_preferences` ou `prefs` para o armazenamento local dos contatos. Também inclui informações sobre como executar o projeto e como contribuir para ele.
