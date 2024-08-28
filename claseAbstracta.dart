// Clase abstracta
abstract class Vehiculo {
  double velocidad;

  Vehiculo(this.velocidad);

  // Métodos abstractos
  void acelerar();
  void frenar();
}

// Clase Coche que hereda de Vehiculo
class Coche extends Vehiculo {
  String tipo;

  Coche(double velocidad, this.tipo) : super(velocidad);

  @override
  void acelerar() {
    velocidad += 10;
    print("El coche de tipo $tipo acelera a $velocidad km/h.");
  }

  @override
  void frenar() {
    velocidad -= 10;
    print("El coche de tipo $tipo frena a $velocidad km/h.");
  }
}

// Clase Bicicleta que hereda de Vehiculo
class Bicicleta extends Vehiculo {
  String tipo;

  Bicicleta(double velocidad, this.tipo) : super(velocidad);

  @override
  void acelerar() {
    velocidad += 5;
    print("La bicicleta de tipo $tipo acelera a $velocidad km/h.");
  }

  @override
  void frenar() {
    velocidad -= 5;
    print("La bicicleta de tipo $tipo frena a $velocidad km/h.");
  }
}

void main() {
  Coche coche = Coche(0, "SUV");
  coche.acelerar();
  coche.frenar();

  Bicicleta bicicleta = Bicicleta(0, "De montaña");
  bicicleta.acelerar();
  bicicleta.frenar();
}
