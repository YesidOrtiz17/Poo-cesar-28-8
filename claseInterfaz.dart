// Definimos la interfaz Vehiculo
abstract class Vehiculo {
  void arrancar();
  void detener();
  void acelerar();
}

// Implementación de la clase Coche
class Coche implements Vehiculo {
  int puertas;
  String tipo;

  Coche(this.puertas, this.tipo);

  @override
  void arrancar() {
    print('El coche está arrancando.');
  }

  @override
  void detener() {
    print('El coche se ha detenido.');
  }

  @override
  void acelerar() {
    print('El coche está acelerando.');
  }

  void abrirPuertas() {
    print('Las puertas del coche están abiertas. Total de puertas: $puertas');
  }
}

// Implementación de la clase Motocicleta
class Motocicleta implements Vehiculo {
  String tipo;

  Motocicleta(this.tipo);

  @override
  void arrancar() {
    print('La motocicleta está arrancando.');
  }

  @override
  void detener() {
    print('La motocicleta se ha detenido.');
  }

  @override
  void acelerar() {
    print('La motocicleta está acelerando.');
  }

  void realizarStunt() {
    print('La motocicleta está realizando un stunt.');
  }
}

void main() {
  // Creando instancias de Coche y Motocicleta
  Vehiculo miCoche = Coche(4, 'Sedán');
  Vehiculo miMotocicleta = Motocicleta('Deportiva');

  // Usando los métodos de la interfaz Vehiculo
  miCoche.arrancar();
  miCoche.acelerar();
  (miCoche as Coche).abrirPuertas();
  miCoche.detener();

  print('');

  miMotocicleta.arrancar();
  miMotocicleta.acelerar();
  (miMotocicleta as Motocicleta).realizarStunt();
  miMotocicleta.detener();
}
