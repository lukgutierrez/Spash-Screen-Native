import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simula una carga de recursos o trabajo inicial.
    Future.delayed(Duration(seconds: 8), () {
      // Navega a la siguiente pantalla después de 3 segundos.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242328) ,// Cambia el color de fondo según tus preferencias.
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Expanded(child: Center(child: Container(child: Image(image: AssetImage("assets/splash.png")),))),
         
              SpinKitDoubleBounce( // Ejemplo de indicador de carga animado.
                      color: Color(0xFF0ea6f9),
                      size: 50.0,
                      
                    ),
              
          
           
          ],
        ),
      );
    
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      body: Center(
        child: Text('¡Bienvenido a mi aplicación!'),
      ),
    );
  }
}
