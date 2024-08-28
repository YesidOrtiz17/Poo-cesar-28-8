// Clase base
abstract class Figura {
  // Método abstracto que debe ser implementado por las clases derivadas
  double area();
}

// Clase derivada: Círculo
class Circulo extends Figura {
  final double radio;

  Circulo(this.radio);

  @override
  double area() {
    return 3.14159 * radio * radio; // Área del círculo: π * radio^2
  }
}

// Clase derivada: Rectángulo
class Rectangulo extends Figura {
  final double ancho;
  final double alto;

  Rectangulo(this.ancho, this.alto);

  @override
  double area() {
    return ancho * alto; // Área del rectángulo: ancho * alto
  }
}

// Función principal
void main() {
  // Crear una lista de figuras
  List<Figura> figuras = [
    Circulo(5.0),
    Rectangulo(4.0, 6.0),
  ];

  // Iterar sobre la lista y calcular el área de cada figura
  for (var figura in figuras) {
    print('Área de la figura: ${figura.area()}');
  }
}
