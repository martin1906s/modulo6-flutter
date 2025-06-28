class ServidorCorreo {
  ServidorCorreo._interno();
  factory ServidorCorreo() => _instancia;
  static final ServidorCorreo _instancia = ServidorCorreo._interno();

  bool _conectado = false;
  bool get estaConectado => _conectado;

  void conectar() {
    if (!_conectado) {
      _conectado = true;
      print('Conectada correctamente.');
    } else {
      print('Ya existe una conexión activa');
    }
  }

  void enviarCorreo(String destinatario, String asunto) {
    if (_conectado) {
      print('Correo enviado a $destinatario\nAsunto: $asunto\n');
    } else {
      print('No hay conexion');
    }
  }

  void desconectar() {
    if (_conectado) {
      _conectado = false;
      print('Conexion desactivada');
    }
  }
}
