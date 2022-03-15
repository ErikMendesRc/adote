import 'package:flutter/material.dart';

class AnimalsList extends StatelessWidget {
  const AnimalsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCardMallika1(
            title: "Cachorros",
            image:
                "https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2021/03/visão-do-cachorro-2.jpeg?resize=626%2C626&ssl=1",
            onTap: () {
              print("Cachorros");
              Navigator.pushNamed(context, 'animalsList');
            },
            selected: false,
          ),
          CategoryCardMallika1(
              title: "Gatos",
              image:
                  "https://blog.cobasi.com.br/wp-content/uploads/2020/06/cuidar-de-gato-capa.png",
              onTap: () {
                print("Gatos");
              }),
          CategoryCardMallika1(
              title: "Passáros",
              image:
                  "https://www.dicaspetz.com.br/wp-content/uploads/2020/04/curiosidades-sobre-calopsitas-pet.jpg",
              onTap: () {
                print("Passáros");
              }),
          CategoryCardMallika1(
              title: "Outros",
              image:
                  "https://www.donagiraffa.com/wp-content/uploads/2014/03/hamster.jpg",
              onTap: () {
                print("outros");
              }),
        ],
      ),
    );
  }
}

class CategoryCardMallika1 extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const CategoryCardMallika1(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: selected ? 2 : 0, color: const Color(0xffFF5A60)),
                  borderRadius: BorderRadius.circular(20.0)),
              child: ClipRRect(
                child: Image.network(
                  image,
                  width: 75,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: selected ? const Color(0xffFF5A60) : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
