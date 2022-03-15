import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, right: 25.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
                "Laika",
                "https://razoesparaacreditar.com/wp-content/uploads/2019/10/capa-razoes-3.jpg",
                "6 Aninhos"),
            Card(
                "Fred",
                "https://gatinhosproblema.com.br/wp-content/uploads/2019/02/GP-Dudu-1-ano-depois-13-2-770x513.jpg",
                "2 Aninhos"),
            Card(
                "Estopinha",
                "https://i0.statig.com.br/bancodeimagens/2f/ym/i8/2fymi85z5vo5pcl5rsnsr3xgi.jpg",
                "1 Aninho"),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  const Card(this.text, this.imageUrl, this.subtitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red[200]!),
            color: Colors.red[50],
            borderRadius: BorderRadius.circular(12.5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(10, 20),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.05)),
            ],
          ),
          child: Column(
            children: [
              Image.network(imageUrl, height: 70, fit: BoxFit.cover),
              const Spacer(),
              Text(text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
