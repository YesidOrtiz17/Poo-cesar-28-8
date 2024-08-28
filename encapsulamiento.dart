class CuentaBancaria {
  double _saldo;

  CuentaBancaria(this._saldo);

  double obtenerSaldo() {
    return _saldo;
  }

  void depositar(double cantidad) {
    if (cantidad > 0) {
      _saldo += cantidad;
    }
  }

  bool retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= _saldo) {
      _saldo -= cantidad;
      return true;
    }
    return false;
  }
}

void main() {
  var cuenta = CuentaBancaria(1000.0);

  print('Saldo inicial: ${cuenta.obtenerSaldo()}');

  cuenta.depositar(500.0);
  print('Saldo después del depósito: ${cuenta.obtenerSaldo()}');

  if (cuenta.retirar(200.0)) {
    print('Saldo después del retiro: ${cuenta.obtenerSaldo()}');
  } else {
    print('Retiro fallido.');
  }
}
