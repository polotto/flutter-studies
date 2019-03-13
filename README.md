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


