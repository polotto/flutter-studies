# flutter-studies
flutter studies


# Revisão de Dart
## Conceitos básicos
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
## Orientação a objetos
```Dart

```
