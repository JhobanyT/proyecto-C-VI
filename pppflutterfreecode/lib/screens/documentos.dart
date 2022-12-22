import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import 'package:pppflutterfreecode/comp/customAppBar.dart';
import 'package:pppflutterfreecode/comp/customDrawer.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({Key? key}) : super(key: key);

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;


  FilePickerResult? result1;
  String? _fileName1;
  PlatformFile? pickedfile1;
  bool isLoading1 = false;
  File? fileToDisplay1;



  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null){
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('Nombre: $_fileName');
      }

      setState(() {
        isLoading = false;
      });
    } catch (e){
      print(e);
    }
  }





  void pickFile1() async {
    try {
      setState(() {
        isLoading1 = true;
      });

      result1 = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result1 != null){
        _fileName1 = result1!.files.first.name;
        pickedfile1 = result1!.files.first;
        fileToDisplay1 = File(pickedfile1!.path.toString());

        print('Nombre: $_fileName1');
      }

      setState(() {
        isLoading1 = false;
      });
    } catch (e){
      print(e);
    }
  }



  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
          drawer: CustomDrawer(),
      body: SingleChildScrollView (
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Carta de presentación'),
                        ),
                        if (pickedfile != null)
                        SizedBox(
                          height: 300, width: 400, child:Image.file(fileToDisplay!),
                        ),
                        Center(
                        child: isLoading ? CircularProgressIndicator():
                        TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 4, 32, 51))),onPressed: (){
                          pickFile();
                        }, child:Text('Subir',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),)),
                      ),
                      
                      ],
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Documento de Aceptación'),
                        ),
                        if (pickedfile1 != null)
                        SizedBox(
                          height: 300, width: 400, child:Image.file(fileToDisplay1!),
                        ),
                        Center(
                        child: isLoading1 ? CircularProgressIndicator():
                        TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 4, 32, 51))),onPressed: (){
                          pickFile1();
                        }, child:Text('Subir',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),)),
                      ),
                      ],
                    )
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Plan de practicas'),
                        ),
                        if (pickedfile != null)
                        SizedBox(
                          height: 100, width: 180, child:Image.file(fileToDisplay!),
                        ),
                        Center(
                        child: isLoading ? CircularProgressIndicator():
                        TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 4, 32, 51))),onPressed: (){
                          pickFile();
                        }, child:Text('Subir',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),))
                      ),
                      ],
                    )
                  ),
                  Expanded( 
                    child: Column(
                      children: <Widget>[
                        Container(
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.blueAccent)
                          // ),
                          margin: EdgeInsets.all(15),
                          padding: const EdgeInsets.only(top: 40),
                          
                          child: Text('Constancia de evaluación final', textAlign: TextAlign.center,),
                        ),
                        if(pickedfile1 != null)
                        SizedBox(
                          height: 150, width: 120, child:Image.file(fileToDisplay1!),
                        )else SizedBox(
                          height: 150, width: 120, child:Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/PDF_icon.svg/1200px-PDF_icon.svg.png'),
                        ),
                        Center(
                        child: isLoading1 ? CircularProgressIndicator():
                        TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 4, 32, 51))), onPressed: (){
                          pickFile1();
                        }, child:Text('Subir',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),)),
                      ),
                      ],
                    )
                  ),
                ],
              ),
        ],
      ),
    )
      )
    );
  }
  }