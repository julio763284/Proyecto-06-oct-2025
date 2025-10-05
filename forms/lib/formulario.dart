import "package:flutter/material.dart";

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_police, color: Colors.white, size: 55.0),
        title: Text(
          "POLICIA NACIONAL",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(200, 0, 0, 0),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('fondoFormularioredimensionado.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 100,
            right: 100,
            top: 80.0,
            bottom: 80.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(120, 0, 0, 0),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Column(
                children: [
                  SizedBox(height: 90.0),
                  TextFormField(
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      label: Text(
                        "Carnet",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      hint: Text(
                        "Digitar Numero Carnet...",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                          color: Color.fromARGB(100, 0, 0, 0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextFormField(
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      label: Text(
                        "Cedula",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      hint: Text(
                        "Digitar Numero Cedula...",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                          color: Color.fromARGB(100, 0, 0, 0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Boon Presionado");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(100, 0, 0, 0),
                    ),
                    icon: Icon(
                      Icons.military_tech_outlined,
                      color: Colors.white,
                      size: 19.0,
                    ),
                    label: Text(
                      "Ingresar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
