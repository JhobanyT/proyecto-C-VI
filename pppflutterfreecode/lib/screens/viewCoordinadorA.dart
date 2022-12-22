// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:gallery_saver/gallery_saver.dart';
// import 'package:pppflutterfreecode/comp/customAppBar.dart';
// import 'package:pppflutterfreecode/comp/customDrawer.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:path_provider/path_provider.dart';

// class ViewCoordinadorA extends StatefulWidget{
//   const ViewCoordinadorA ({Key? key}) : super(key: key);

//   @override
//   State<ViewCoordinadorA> createState() => _ViewCoordinadorAState();

// }

// class _ViewCoordinadorAState extends State<ViewCoordinadorA> {
//   late Future<ListResult> futureFiles;
//   Map<int, double> downloadProgress = {};

//   @override
//   void initState() {
//     super.initState();

//     futureFiles = FirebaseStorage.instance.ref('/files').listAll();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           backgroundColor: Color.fromARGB(255, 255, 255, 255),
//           appBar: CustomAppBar(),
//           drawer: CustomDrawer(),
//           body: FutureBuilder<ListResult>(
//             future: futureFiles,
//             builder: (context, snapshot){
//               if (snapshot.hasData) {
//                 final files = snapshot.data!.items;
//                 return ListView.builder(
//                   itemCount: files.length,
//                   itemBuilder: ((context, index) {
//                     final file = files[index];
//                     double? progress = downloadProgress[index];

//                     return ListTile(
//                       title: Text(file.name),
//                       subtitle: progress != null
//                         ? LinearProgressIndicator(
//                           value: progress,
//                           backgroundColor: Color.fromARGB(31, 141, 5, 73),
//                         )
//                         : null,
//                       trailing: IconButton(
//                         icon: const Icon(Icons.download, color: Colors.black26,
//                         ),
//                         onPressed: () => downloadFile(index, file),
//                       ),
//                     );
//                   }),
//                 );
//               } else if (snapshot.hasError){
//                 return const Center(child: Text('Ocurrio un error'));
//               } else {
//                 return const Center(child: CircularProgressIndicator(),);
//               }
//             })
//       )
      
//     );
//   }
//   // Future downloadFile(Reference ref) async {
//   //       final dir = await getApplicationDocumentsDirectory();
//   //       final file = File('${dir.path}/${ref.name}');
        
//   //       await ref.writeToFile(file);

//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text('Descargado ${ref.name}'))
//   //       );
//   //     }

//   Future downloadFile(int index, Reference ref) async{
//     final url = await ref.getDownloadURL();

//     final tempDir = await getTemporaryDirectory();
//     final path = '${tempDir.path}/${ref.name}';
//     await Dio().download(
//       url,
//       path,
//       onReceiveProgress: (received, total){
//         double progress = received / total;

//         setState(() {
//           downloadProgress[index] = progress;
//         });
//       }
//     );

//     if (url.contains('.jpg')){
//       await GallerySaver.saveImage(path, toDcim: true);
//     } else if (url.contains('.mp4')){
//       await GallerySaver.saveVideo(path, toDcim: true);
//     }

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Descargado ${ref.name}'))
//     );
//   }
// }













// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:path_provider/path_provider.dart';
// // import 'package:firebase_file/firebase_file.dart';

// // class FirebaseApi {
// //   static Future<List<String>> _getDownloadLinks(List<Reference> refs) =>
// //       Future.wait(refs.map((ref) => ref.getDownloadURL()).toList());

// //   static Future<List<FirebaseFile>> listAll(String path) async {
// //     final ref = FirebaseStorage.instance.ref(path);
// //     final result = await ref.listAll;

// //     final urls = await _getDownloadLinks(result.items);

// //     return urls
// //         .asMap()
// //         .map((index, url) {
// //             final ref = result.items[index];
// //             final name = ref.name;
// //             final file = FirebaseFile(ref: ref, name: name, url: url);
// //         })
// //         .values
// //         .toList();

// //   }
// // }