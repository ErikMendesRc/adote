import 'package:adote/Widgets/CardLists/AnimalsList.dart';
import 'package:adote/Widgets/CardLists/HorizontalList.dart';
import 'package:adote/Widgets/Headers/CustomHeader.dart';
import 'package:adote/Widgets/SearchBar/CustomSearchBar.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController txt = TextEditingController();
    Widget paddingHorizontal = const Padding(padding: EdgeInsets.all(10.0));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adote"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 20, left: 20),
                    child: CustomSearchBar(
                        searchController: txt,
                        hintText: "Procurar um amiguinho")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeader(
                    text: "Escolher pet",
                    icon: const Icon(
                      Icons.pets_rounded,
                      color: Colors.red,
                    ),
                    iconOnPressed: () {},
                  ),
                ),
                const AnimalsList(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeader(
                    text: "Próximos de você",
                    icon: const Icon(
                      Icons.pets_rounded,
                      color: Colors.red,
                    ),
                    iconOnPressed: () {},
                  ),
                ),
                const HorizontalList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
