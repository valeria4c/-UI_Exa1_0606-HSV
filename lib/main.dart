import 'package:flutter/material.dart';
import 'package:myapp/screens/galeria_screen.dart';
import 'package:myapp/screens/perfil_screen.dart';
import 'package:myapp/utils/colors.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigation(),
    ));

// --- CONTROLADOR DE NAVEGACIÓN PRINCIPAL ---
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 2; // Inicia en Galería por defecto

  final List<Widget> _paginas = [
    const Center(child: Text("Pantalla Inicio")),
    const Center(child: Text("Pantalla Sesiones")),
    const GaleriaScreen(), // Pantalla 1
    const PerfilScreen(),  // Pantalla 2 y 3 (Perfil con navegación a Configuración)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: MochiColors.azulOscuro,
        selectedItemColor: MochiColors.amarilloMochi,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Sesiones'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Galeria'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
