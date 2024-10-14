import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String nome;
  final String distancia;
  final String idade;
  final String sexo;
  final String imagem;

  const AnimalCard({
    required this.nome,
    required this.distancia,
    required this.idade,
    required this.sexo,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4), 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 20, 20, 20).withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                imagem,
                height: 140,
                width: 230,
                fit: BoxFit.cover,
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "$distancia - $idade",
            style: TextStyle(fontSize: 14, color: Colors.grey),
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
                  SizedBox(width: 4),
                  Text(sexo),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
