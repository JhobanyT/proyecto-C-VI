import 'package:flutter/material.dart';
import 'package:pppflutterfreecode/comp/customAppBar.dart';
import 'package:pppflutterfreecode/comp/customDrawer.dart';
import 'package:pppflutterfreecode/comp/custombottomNavigationBar.dart';
import 'package:pppflutterfreecode/model/practica.dart';
import 'package:pppflutterfreecode/screens/documentos.dart';

class PracticaPage extends StatefulWidget{
  const PracticaPage ({Key? key}) : super(key: key);

  @override
  State<PracticaPage> createState() => _PracticaPageState();

}

class _PracticaPageState extends State<PracticaPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          appBar: CustomAppBar(),
          drawer: CustomDrawer(),
          body: new ListView(
              children: countries.map(_buildItem).toList(),
          )
      )
    );
  }
}

Widget _buildItem(Country country) {
  return new ListTile(
      title: new Text(country.name!),
      subtitle: new Text('Capital: ${country.capital}'),
      leading: new Icon(Icons.map),
      trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 20.0,
                  color: Color.fromARGB(255, 1, 0, 54),
                ),
                onPressed: () {
                  //
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  size: 20.0,
                  color: Color.fromARGB(255, 1, 0, 54),
                ),
                onPressed: () {
                  //
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.document_scanner,
                  size: 20.0,
                  color: Color.fromARGB(255, 1, 0, 54),
                ),
                onPressed: () {
                  //
                },
              ),
            ],
          ),
      onTap: (){
        print(country.name);
      },
  );
}