import 'package:flutter/material.dart';
import 'package:projeto_mobile/models/animal.dart';

class AnimalGrid extends StatelessWidget {
  final List<Animal> animais;

  const AnimalGrid({required this.animais});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8), 
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 8, 
          childAspectRatio: 0.80, 
        ),
        itemCount: animais.length, 
        itemBuilder: (context, index) {
          Animal animal = animais[index];

          return AnimalCard(
            nome: animal.nome,
            distancia: animal.distancia,
            idade: animal.idade,
            sexo: animal.sexo,
            imagem: animal.imagem,
            screenWidth: screenWidth, 
          );
        },
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String nome;
  final String distancia;
  final String idade;
  final String sexo;
  final String imagem;
  final double screenWidth;

  const AnimalCard({
    required this.nome,
    required this.distancia,
    required this.idade,
    required this.sexo,
    required this.imagem,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), 
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 20, 20, 20).withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              
              ClipRRect(
                borderRadius: BorderRadius.circular(12), // Aplicando borderRadius nas imagens
                child: Image.asset(
                  imagem, 
                  height: 140, 
                  width: 238, 
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {
                    
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            nome,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold), 
          ),
          Text(
            "$distancia - $idade",
            style: TextStyle(fontSize: 12, color: Colors.grey), 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.chat_bubble_outline, color: Colors.blue),
                onPressed: () {
                  
                },
              ),
              Row(
                children: [
                  Icon(
                    sexo == "Fêmea" ? Icons.female : Icons.male,
                    color: sexo == "Fêmea" ? Colors.pink : Colors.blue,
                  ),
                  Text(sexo, style: TextStyle(fontSize: 12)), 
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
