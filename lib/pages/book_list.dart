import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SUGESTÃO DO MÊS
          Text(
            'SUGESTÃO DO MÊS DE NOVEMBRO:',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/Camilla.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // MAIS LIDOS
          sectionTitle('Ebooks Mais Lidos'),
          bookCarousel([
            'images/strorytelling.png',
            'images/aperte o f... .png',
            'images/tinha que ser você.png',
            'images/mais1.png',
            'images/mais2.png',
            'images/mais3.png',
            'images/mais4.png',
            'images/mais5.png',
            'images/mais6.png',
          ]),

          // EXCLUSIVOS
          sectionTitle('Ebooks Exclusivos'),
          bookCarousel([
            'images/you wn or you die.png',
            'images/alta performance.png',
            'images/a outra tribo.png',
            'images/exclusivos/1.png',
            'images/exclusivos/2.png',
            'images/exclusivos/3.png',
            'images/exclusivos/4.png',
            'images/exclusivos/5.png',
            'images/exclusivos/6.png',
            'images/exclusivos/7.png',
            'images/exclusivos/8.png',
            'images/exclusivos/9.png',
          ]),

          // CLÁSSICOS
          sectionTitle('Ebooks Clássicos'),
          bookCarousel([
            'images/machado macabro.png',
            'images/a morte de ivan ilitch.png',
            'images/dracula.png',
            'images/classicos/1.png',
            'images/classicos/2.png',
            'images/classicos/3.png',
            'images/classicos/4.png',
            'images/classicos/5.png',
            'images/classicos/6.png',
            'images/classicos/7.png',
            'images/classicos/8.png',
            'images/classicos/9.png',
          ]),
        ],
      ),
    );
  }

  // Widget para exibir um título de seção
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  // Widget para exibir o carrossel de livros
  Widget bookCarousel(List<String> imagePaths) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return bookCard(imagePaths[index]);
        },
      ),
    );
  }

  // Widget para exibir um livro
  Widget bookCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 100,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
