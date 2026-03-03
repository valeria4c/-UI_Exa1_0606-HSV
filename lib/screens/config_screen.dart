import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MochiColors.fondoGris,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.camera_alt, color: MochiColors.azulOscuro),
            SizedBox(width: 8),
            Text("STUDIO MOCHI 22PX", style: TextStyle(color: MochiColors.azulOscuro, fontWeight: FontWeight.bold)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Esto quita la flecha de "atrás" automática
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("< CONFIGURACIÓN", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: MochiColors.azulOscuro)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MochiColors.azulBoton,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    _configTile("Administración de la cuenta"),
                    _configTile("Notificaciones"),
                    _configTile("Cambiar cuenta"),
                    _configTile("Idioma de la aplicación"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _configTile(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
