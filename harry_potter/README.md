# Projeto Harry Potter (Flutter)

## Descrição

Aplicativo em **Flutter** feito para teste da empresa W2O

---

## Funcionalidades

* Listagem de personagens do universo Harry Potter
* Visualização das casas de Hogwarts
* Listagem e detalhes de magias
* Navegação entre telas de listagem e detalhes
* Componentes reutilizáveis (cards, appbar, drawer)
* Interface responsiva e opção de tema escuro e claro
* Testes unitários de ViewModels

---

## Tecnologias Utilizadas

* **Flutter**
* **Dart**
* Arquitetura **MVVM**
* Consumo de API REST
* Testes unitários com **flutter_test**

---

## Estrutura do Projeto

```text
📁 assets/
 ┣ 📁 fonts/
 ┗ 📁 images/

📁 lib/
 ┣ 📁 src/
 ┃ ┣ 📁 app/
 ┃ ┃ ┣ 📄 app.dart
 ┃ ┃ ┣ 📄 app_routes.dart
 ┃ ┃ ┗ 📄 app_drawer_items.dart
 ┃ ┣ 📁 model/
 ┃ ┃ ┣ 📄 personagem_model.dart
 ┃ ┃ ┗ 📄 magia_model.dart
 ┃ ┣ 📁 service/
 ┃ ┃ ┗ 📄 hp_api_service.dart
 ┃ ┣ 📁 utils/
 ┃ ┃ ┣ 📄 casas_name.dart
 ┃ ┃ ┗ 📄 random_icon.dart
 ┃ ┣ 📁 view/
 ┃ ┃ ┣ 📄 home_view.dart
 ┃ ┃ ┣ 📄 casas_view.dart
 ┃ ┃ ┣ 📄 magia_view.dart
 ┃ ┃ ┣ 📄 personagens_view.dart
 ┃ ┃ ┣ 📄 base_layout.dart
 ┃ ┃ ┗ 📁 detalhes_views/
 ┃ ┃   ┣ 📄 casas_detalhe_view.dart
 ┃ ┃   ┣ 📄 magia_detalhe_view.dart
 ┃ ┃   ┗ 📄 personagem_detalhe_view.dart
 ┃ ┣ 📁 viewModel/
 ┃ ┃ ┣ 📄 magia_view_model.dart
 ┃ ┃ ┣ 📄 personagens_view_model.dart
 ┃ ┃ ┗ 📄 theme_view_model.dart
 ┃ ┣ 📁 widgets/
 ┃ ┃ ┣ 📄 custom_appbar.dart
 ┃ ┃ ┣ 📄 custom_drawer.dart
 ┃ ┃ ┣ 📄 house_card.dart
 ┃ ┃ ┣ 📄 house_dropdown.dart
 ┃ ┃ ┣ 📄 magia_card.dart
 ┃ ┃ ┗ 📄 personagem_card.dart
 ┃ ┗ 📄 main.dart

📁 test/
 ┣ 📁 mock/
 ┃ ┗ 📄 fake_hp_api_service.dart
 ┗ 📁 viewModel/
   ┣ 📄 magia_view_model_test.dart
   ┗ 📄 personagens_view_model_test.dart
```

---

## Como Executar o Projeto

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/projeto-harry-potter.git
```

2. Acesse a pasta do projeto:

```bash
cd projeto-harry-potter
```

3. Instale as dependências:

```bash
flutter pub get
```

4. Execute a aplicação:

```bash
flutter run
```

---

## Testes

Para executar os testes unitários:

```bash
flutter test
```

Os testes utilizam **mock de serviço** para isolar a lógica dos ViewModels.

---

## Autor

**Vinícius Bornhofen**
Estudante de Ciência da Computação | FURB

