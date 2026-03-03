import 'package:flutter/material.dart';
import 'package:myapp/screens/config_screen.dart';
import 'package:myapp/utils/colors.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
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
              automaticallyImplyLeading: false,
            ),
            body: Column(
              children: [
                const SizedBox(height: 30),
                const CircleAvatar(radius: 50, backgroundColor: Colors.grey, child: Icon(Icons.person, size: 50, color: Colors.white)),
                const SizedBox(height: 10),
                const Text("USER", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                _menuItem(context, "Configuración", isConfig: true),
                _menuItem(context, "Información de trabajo"),
                _menuItem(context, "Editar información"),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: MochiColors.azulOscuro, minimumSize: const Size(double.infinity, 50)),
                    onPressed: () {},
                    child: const Text("Cerrar sesión", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _menuItem(BuildContext context, String title, {bool isConfig = false}) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        if (isConfig) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfigScreen()));
        }
      },
    );
  }
}
