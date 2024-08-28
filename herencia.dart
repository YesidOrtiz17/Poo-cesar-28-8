class Animal {
  String nombre;

  Animal(this.nombre);

  void comer() {
    print('$nombre está comiendo.');
  }
}

class Perro extends Animal {
  String raza;

  Perro(String nombre, this.raza) : super(nombre);

  void ladrar() {
    print('$nombre está ladrando.');
  }
}

void main() {
  var miPerro = Perro('Rex', 'Labrador');

  miPerro.comer();

  miPerro.ladrar();
}
