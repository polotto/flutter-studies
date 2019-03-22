# flutter-studies

flutter studies

## Revisão de Dart

### Conceitos básicos

```Dart
void main() {
  // declaração de variáveis
  String variavel = "Olá"; // String, bool, int, double, dynamic

  // alterando valores numéricos
  double res = 10.0 * 20.0;
  int i = 0;
  i++;
  i--;
  i += 10;

  // mostrando uma string
  print(variavel + " mundo!");
  print("$variavel mundo!");

  // operadores lógicos
  bool resAnd = true && false;
  bool resOr = true || false;
  bool redNot = !true;
  bool resMaior = 10 > 5;

  // if
  if(25 <= 1000){

  } else if (27 >= 2){

  } else {

  }

  // if ternário
  String resTri = 5 > 10 ? "maior" : "menor";

  // operador de teste de nulos
  String nome;
  print(nome ?? "vazio");

  // switch
  int a = 10;
  switch(a){
    case 10:
      break;
    case 15:
      break;
    default:

  }

  // laço for
  for (int j= 0; j < 10; j++) {
    print(j);
  }

  // laço while
  int k=0;
  while(k < 10) {
    print(k);
    k++;
  }

  // declaração de função
  int func(int x, int y) {
    return x + y;
  }

  int fun2(int x, int y) => x + y;

  // função com valores opcionais
  void funcOpt ({int x, int y}) {

  }

  // chamada de uma função com valor opcional
  funcOpt(y: 15, x: 10);
}
```

### Orientação a objetos

```Dart
// criação de uma classe
class Animal {
  // variável estática
  static int quantidade;
  
  // propriedades da classe
  String nome;
  int idade;
  
  // construtor completo
  /*
  Animal(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }
  */
  
  // construtor resumido
  Animal(this.nome, this.idade);
  
  // criação de um método
  void comer() {
    print("$nome comeu!");
  }
}

// herança de classes
class Cachorro extends Animal {
  // construtor resumido da classe
  Cachorro(String nome, int idade): super(nome, idade);
  
  // override
  @override
  void comer() {
    print("func overrided!");
  }
}

void main() {
  // criação de uma instância do objeto
  Animal animal1 = Animal("Rex", 2);
  
  // chamada da propriedade
  print(animal1.nome);
  
  // chamada do método
  animal1.comer();
  
  // alterando valor da propriedade
  Animal.quantidade = 10;
  
  // constante em tempo de compilação
  const max = 20;
  
  // constante em tempo de execução
  final animal = Animal("Toto", 3);
  
  // listas
  List<String> nomes = ["Daniel", "Thiago"];
  print(nomes[0]);
  nomes.removeAt(0);
  nomes.add("Mari");
  
  // hash tables (mapas)
  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Marcos";
  pessoa["idade"] = 30;
  print(pessoa.keys);
  print(pessoa.values);
}
```

## Flutter

### Packages Dart Pub: https://pub.dartlang.org/flutter

### Widgets

São componentes que podem ser adicionados no layout, são organizados em hierarquias para formar a tela.
Consulta aos widgets: https://flutter.dev/docs/development/ui/widgets

### Material design

Site: material.io

### Stateless

Mantém o mesmo estado ao longo da aplicação, caso o pai seja stateless, não funciona o hot reload nos filhos.

### Statefull

Altera o estado ao longo da uso da aplicação, o hot reload funciona nesses casos.

#### setState(() {} ) - função necessária para poder se conseguir alterar o estado de um Widget na tela, qualquer coisa que altere o estado de um Widget deve estar dentro dela, se não, não será alterado. O flutter atualiza somente redenriza os componentes alterados.

### Projetos e conceitos

* primeiro_projeto: como criar um projeto em flutter;

* contador_de_pessoas ([Screenshots](./screenshots/contador_de_pessoas/)): MaterialApp, StatefulWidget, setState, adição de imagem do resources (asset), Image.asset, Text, TextStyle, FlatButton, Padding, Stack, Column, debugPrint, Container, EdgeInsets, Colors;

* calculo_imc: TextEditingController, double.parse, .toStringAsPrecision(3), Scaffold, AppBar, IconButton, Icons, SingleChildScrollView, GlobalKey\<FormState>, Form, TextFormField, TextInputType, RaisedButton, Column;

* conversor_de_moedas: async, FutureBuilder, Icon, Divider, Future<Map>, http, json, TextField, InputDecoration, OutlineInputBorder;

* lista_tarefas: initState, getApplicationDocumentsDirectory, File, Future.delayed, Row, ListView, Expanded, Dismissible, DateTime, Align, CheckboxListTile, SnackBar, SnackBarAction, Duration;

* buscador_gifs: debugShowCheckedModeBanner, separação das telas por arquivos, Image.network, CircularProgressIndicator, AlwaysStoppedAnimation, Alignment, AsyncSnapshot, GridView, SliverGridDelegateWithFixedCrossAxisCount, GestureDetector, FadeInImage, kTransparentImage, BoxFit, Navigator, MaterialPageRoute, Share;

* agenda_contatos: enum, PopupMenuButton, PopupMenuEntry, PopupMenuItem, FloatingActionButton, Card, BoxDecoration, BoxShape, DecorationImage, FileImage, AssetImage, showModalBottomSheet, BottomSheet, FlatButton, Navigator, sort, FocusNode, WillPopScope, FocusScope, ImagePicker, ImageSource, FileImage, AssetImage, showDialog, AlertDialog, FlatButton, Future.value, singleton, Database, fromMap, toMap;

* chat_online: ThemeData, GoogleSignIn, FirebaseAuth, GoogleSignInAccount, GoogleSignInAuthentication, Firestore, Theme.of(context).platform, SafeArea, StreamBuilder, CircularProgressIndicator, Divider, IconTheme, IconThemeData, IconButton, StorageUploadTask, FirebaseStorage, CupertinoButton, IconButton, CircleAvatar;

* loja_virtual: 

### Packages

* http : requisições http para API Restful;
* path_provider : retorna o endereço do arquivo no dispositivo;
* share : compartilha conteúdo do app, mostra dialog do sistema para compartilhar;
* transparent_image : imagem transaparent para o FadeInImage;
* sqflite : banco de dados SQLite;
* url_launcher : abre aplicativos padrão do sistema: navegador, discador, etc;
* image_picker : Obtém uma imagem da camera ou da galeria;

* cloud_firestore : acesso ao db firestore;
* google_sign_in : login com o google;
* firebase_storage : acesso ao storage (blog de imagens);
* firebase_auth : autenticação com o firebase;
* firebase_analytics : analytics do firebase;
* firebase_messaging : push notifications do firebase;

* font_awesome : icones do font awesome;
* flutter_staggered_grid_view : grid view staggered para flutter;
* carousel_pro : carrossel;
* scoped_model : conjunto de utilitários para passar dados de um Model para um Widget pai e seus filhos, permitindo ainda sua reconstrução caso o Model seja atualizado;

## JsonEditor: <https://jsoneditoronline.org/>

## HG Finance API valor das moedas: <https://hgbrasil.com/status/finance/>

## Banco de imagens gratuitos

* <https://www.pexels.com>
* <https://unsplash.com/>

## Icones: <https://icons8.com>