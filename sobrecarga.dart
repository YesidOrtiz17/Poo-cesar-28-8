class Operaciones {
  // Método de suma que acepta un entero
  int suma(int a) {
    return a;
  }

  // Método de suma que acepta un double
  double sumaDouble(double a) {
    return a;
  }

  // Método de suma que acepta dos enteros
  int suma(int a, int b) {
    return a + b;
  }
}

void main() {
  Operaciones op = Operaciones();

  // Llamando a los métodos sobrecargados
  print("Suma de un entero: ${op.suma(5)}");  // Llama a suma(int a)
  print("Suma de un double: ${op.sumaDouble(5.5)}");  // Llama a sumaDouble(double a)
  print("Suma de dos enteros: ${op.suma(3, 4)}");  // Llama a suma(int a, int b)
}
