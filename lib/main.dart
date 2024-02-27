import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerBarrios());

class MiDrawerBarrios extends StatelessWidget {
  const MiDrawerBarrios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Cristobal "),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: const Color(0xff7acc4d4),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Jose",
                    style: TextStyle(color: Color(0xff000000), fontSize: 15)),
                accountEmail: Text("Jose0456@CFE.com",
                    style: TextStyle(color: Color(0xff000000), fontSize: 15)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://e00-mx-marca.uecdn.es/mx/assets/multimedia/imagenes/2023/04/05/16806759686086.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/005/182/612/small/green-abstract-geometric-shape-background-free-vector.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Funidad.plateros%2Fposts%2Flos-nuevos-medidores-de-luz-digitales-que-estan-poniendo-en-plateroshay-muchos-r%2F2553886111357126%2F%3Flocale%3Des_LA&psig=AOvVaw311aruGgxdrY4f1FzQUhAK&ust=1709129527896000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKCn6-XZy4QDFQAAAAAdAAAAABAD"),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(
                  Icons.supervised_user_circle_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Usuario",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.group,
                  color: Color(0xff8c0606),
                ),
                title: Text(
                  "Empleados",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.confirmation_num,
                  color: Color(0xff869dc5),
                ),
                title: Text(
                  "Servicio",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.payment_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Paga Servicios",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.ac_unit_outlined,
                  color: Color(0xff02933e),
                ),
                title: Text(
                  "Nosotros",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.phone_android,
                  color: Color(0xff295255),
                ),
                title: Text(
                  "Contactanos",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
