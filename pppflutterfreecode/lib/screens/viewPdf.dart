import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pppflutterfreecode/api/pdf_api.dart';
import 'package:pppflutterfreecode/comp/customAppBar.dart';
import 'package:pppflutterfreecode/screens/pdf_viewer_page.dart';
import 'package:pppflutterfreecode/widget/button_widget.dart';

class ViewPdf extends StatefulWidget{
  const ViewPdf ({Key? key}) : super(key: key);

  @override
  State<ViewPdf> createState() => _ViewPdfState();

}

class _ViewPdfState extends State<ViewPdf> {
  @override
  Widget build(BuildContext context) => Scaffold(
        // body: Center(
        //   child: Padding(
        //     padding: EdgeInsets.all(32),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         const SizedBox(height: 16),
        //         ButtonWidget(
        //           text: 'Ver Archivo',
        //           onClicked: () async {
        //             final url = 'files/SOLICITUD.pdf';
        //             final file = await PDFApi.loadFirebase(url);

        //             if (file == null) return;
        //             openPDF(context, file);
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top:15),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 3.0, bottom: 3.0, right: 3.0),
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0, right: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 1.0,),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 244, 250, 255),
                            Color.fromARGB(255, 184, 184, 184),
                          ],
                        )
                      ),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text('CARTA DE PRESENTACIÓN', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                            const SizedBox(height: 8),
                            Image.asset('assets/pdf.png', 
                            width: 200,
                            height: 100,),
                            const SizedBox(height: 5),
                            ButtonWidget(
                              text: 'Abrir',
                              icon: Icons.open_in_new,
                              onClicked: () async {
                                final url = 'files/SOLICITUD.pdf';
                                final file = await PDFApi.loadFirebase(url);

                                if (file == null) return;
                                openPDF(context, file);
                              },
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 3.0, top: 3.0, bottom: 3.0, right: 10.0),
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0, right: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 1.0,),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 244, 250, 255),
                            Color.fromARGB(255, 184, 184, 184),
                          ],
                        )
                      ),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text('CARTA DE ACEPTACIÓN', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                            const SizedBox(height: 8),
                            Image.asset('assets/pdf.png', 
                            width: 200,
                            height: 100,),
                            const SizedBox(height: 5),
                            ButtonWidget(
                              text: 'Abrir',
                              icon: Icons.open_in_new,
                              onClicked: () async {
                                final url = 'files/COMENTARIO DEL CASO 1.pdf';
                                final file = await PDFApi.loadFirebase(url);

                                if (file == null) return;
                                openPDF(context, file);
                              },
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 3.0, right: 3.0),
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0, right: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 1.0,),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 244, 250, 255),
                            Color.fromARGB(255, 184, 184, 184),
                          ],
                        )
                      ),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text('CONVENIO DE PRACTICAS', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                            const SizedBox(height: 8),
                            Image.asset('assets/pdfplomo.png', 
                            width: 200,
                            height: 100,),
                            const SizedBox(height: 5),
                            ButtonWidget(
                              text: 'Abrir',
                              icon: Icons.open_in_new,
                              onClicked: () async {
                                final url = 'files/MANEJO FINANCIERO.pdf';
                                final file = await PDFApi.loadFirebase(url);

                                if (file == null) return;
                                openPDF(context, file);
                              },
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 3.0, top: 10.0, bottom: 3.0, right: 10.0),
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0, right: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 1.0,),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 244, 250, 255),
                            Color.fromARGB(255, 184, 184, 184),
                          ],
                        )
                      ),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text('PLAN DE PRACTICAS', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                            const SizedBox(height: 8),
                            Image.asset('assets/pdfplomo.png', 
                            width: 200,
                            height: 100,),
                            const SizedBox(height: 5),
                            ButtonWidget(
                              text: 'Abrir',
                              icon: Icons.open_in_new,
                              onClicked: () async {
                                final url = 'files/PAREJA.pdf';
                                final file = await PDFApi.loadFirebase(url);

                                if (file == null) return;
                                openPDF(context, file);
                              },
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 3.0, right: 3.0),
                      padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0, right: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 1.0,),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 244, 250, 255),
                            Color.fromARGB(255, 184, 184, 184),
                          ],
                        )
                      ),
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text('CONSTANCIA DE EVALUACIÓN', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                            const SizedBox(height: 8),
                            Image.asset('assets/pdfplomo.png', 
                            width: 200,
                            height: 100,),
                            const SizedBox(height: 5),
                            ButtonWidget(
                              text: 'Abrir',
                              icon: Icons.open_in_new,
                              onClicked: () async {
                                final url = 'files/Unidad IV.pdf';
                                final file = await PDFApi.loadFirebase(url);

                                if (file == null) return;
                                openPDF(context, file);
                              },
                            ),
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      
                    ),
                  ),
                ],
              ),
              
            ],
          ),
          
        ),
        ),
      ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}














// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:firebase_file/firebase_file.dart';

// class FirebaseApi {
//   static Future<List<String>> _getDownloadLinks(List<Reference> refs) =>
//       Future.wait(refs.map((ref) => ref.getDownloadURL()).toList());

//   static Future<List<FirebaseFile>> listAll(String path) async {
//     final ref = FirebaseStorage.instance.ref(path);
//     final result = await ref.listAll;

//     final urls = await _getDownloadLinks(result.items);

//     return urls
//         .asMap()
//         .map((index, url) {
//             final ref = result.items[index];
//             final name = ref.name;
//             final file = FirebaseFile(ref: ref, name: name, url: url);
//         })
//         .values
//         .toList();

//   }
// }