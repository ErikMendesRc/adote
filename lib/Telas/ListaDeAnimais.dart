import 'package:adote/Widgets/CardLists/AnimalsList.dart';
import 'package:adote/Widgets/Headers/CustomHeader.dart';
import 'package:adote/Widgets/ListTiles/CategoriesAnimalList.dart';
import 'package:flutter/material.dart';

class ListaDeAnimais extends StatelessWidget {
  const ListaDeAnimais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget paddingHorizontal = const Padding(padding: EdgeInsets.all(10.0));
    return Scaffold(
      appBar: AppBar(
        title: Text("Adote"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: CustomHeader(
                      text: "Cachorros",
                      icon: const Icon(
                        Icons.pets_rounded,
                        color: Colors.red,
                      ),
                      iconOnPressed: () {}),
                ),
                paddingHorizontal,
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                  child: CategoriesAnimalList(
                    profileImgUrl:
                        "https://razoesparaacreditar.com/wp-content/uploads/2019/10/capa-razoes-3.jpg",
                    title: "Laika",
                    subtitle: "Doador(a): Daniel Cruz",
                    comment:
                        'Super docil, encontrada na rua e esperando uma familia',
                    onMenuOpen: () {},
                    onLike: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
