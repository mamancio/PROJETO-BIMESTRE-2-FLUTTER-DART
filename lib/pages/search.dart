import 'package:flutter/material.dart';
//import 'homePages.dart';
//import 'favorites.dart';
//import 'profile.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de pesquisa
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Icon(Icons.search, color: Colors.white),
                hintText: 'O que deseja pesquisar?',
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),

            // Título "Categorias"
            Text(
              'Categorias',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Grid de categorias
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Número de botões por linha
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.5,
                children: [
                  categoryButton('Ficção'),
                  categoryButton('Ciências Humanas'),
                  categoryButton('História e Geografia'),
                  categoryButton('Autoajuda'),
                  categoryButton('Empresas e Negócios'),
                  categoryButton('Não-ficção'),
                  categoryButton('Young Adult'),
                  categoryButton('Infantojuvenil'),
                  categoryButton('Humor'),
                  categoryButton('Ficção Juvenil'),
                  categoryButton('Biografias'),
                  categoryButton('Artes'),
                  categoryButton('Documentários'),
                  categoryButton('Erótico'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Botão de categoria
  Widget categoryButton(String title) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800], // Fundo cinza escuro
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
      onPressed: () {
        // Ação ao clicar
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
