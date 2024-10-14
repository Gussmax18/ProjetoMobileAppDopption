import 'package:flutter/material.dart';
import 'package:projeto_mobile/widgets/header.dart'; 
import 'package:projeto_mobile/widgets/animal_grid.dart'; 
import 'package:projeto_mobile/models/animal.dart';
import 'package:projeto_mobile/widgets/custom_widgets.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Animal> animais = [
      Animal(nome: "Bidu", distancia: "5km", idade:"5 anos", sexo:"macho", imagem: "assets/bido.jpg"),
      Animal(nome: "Thor", distancia: "0km", idade:"7 anos", sexo:"macho", imagem: "assets/thor.jpeg"),
      Animal(nome: "Mel", distancia: "13km", idade:"2 anos", sexo:"femea", imagem: "assets/mel.jpeg"),
      Animal(nome: "Tico", distancia: "5km", idade:"4 anos", sexo:"macho", imagem: "assets/tico.jpeg"),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 239, 239),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(location: "Cotia, SP"),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 120,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 224, 178, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tem animal precisando de um lar?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(255, 152, 0, 1)),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Cadastrar"),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(
                      Icons.pets,
                      size: 80,
                      color: Color.fromRGBO(216, 79, 15, 0.765),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.orange),
                      hintText: "Buscar animal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Categorias",
                      style: TextStyle(fontSize: 18, color: Colors.orange)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryButton(text: "ONGS"),
                      CategoryButton(text: "Gatos"),
                      CategoryButton(text: "Cães"),
                      CategoryButton(text: "Aves"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.tune, color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ONGCard(name: "ONG Resgati", color: Color.fromARGB(195, 216, 79, 15)),
            ONGCard(name: "Santuário São Francisco", color: Color.fromARGB(195, 216, 79, 15)),
            ONGCard(name: "Anjos da rua", color: Color.fromARGB(195, 216, 79, 15)),
            SizedBox(height: 16),
            Center(
              child: Text(
                " ONG Anjos da rua",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 8, 8, 7),
                ),
              ),
            ),
            SizedBox(height: 16),
            AnimalGrid(animais: animais),
          ],
        ),
      ),
    );
  }
}
