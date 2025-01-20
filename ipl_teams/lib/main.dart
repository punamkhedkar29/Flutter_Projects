import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ipl_teams/ipl_teams.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCqNUtS-heVH-8cLt3JiFPkXyhanGGQjnw",
      appId:  "1:401681774682:android:ad715fe3fce78b8f2dc063", 
      messagingSenderId: "401681774682", 
      projectId: "c2wstudinfo-52815",
      storageBucket: "c2wstudinfo-52815.firebasestorage.app"
    )
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IPLTeamsScreen()
    );
  }
}


class IPLTeamsScreen extends StatefulWidget {
  const IPLTeamsScreen({super.key});

  @override
  State<IPLTeamsScreen> createState() => _IPLTeamsScreenState();
}

class _IPLTeamsScreenState extends State<IPLTeamsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jerNoController = TextEditingController();
  TextEditingController iplTeamController = TextEditingController();

  XFile? selectedImg;

  String? selectedTeam;

final List<String> iplTeams = [
  "Chennai Super Kings",
  "Delhi Capitals",
  "Gujarat Titans",
  "Kolkata Knight Riders",
  "Lucknow Super Giants",
  "Mumbai Indians",
  "Punjab Kings",
  "Rajasthan Royals",
  "Royal Challengers Bangalore",
  "Sunrisers Hyderabad",
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IPL Teams Players",style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [
                GestureDetector(
                  onTap: () async{
                    ImagePicker imagePicker = ImagePicker();
                    selectedImg = await imagePicker.pickImage(source: ImageSource.gallery);
                    log("Image Path: ${selectedImg!.path}");
                    log("Image Name: ${selectedImg!.name}");
                   
                    setState(() {});
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                    ),
                    child: selectedImg==null ? Image.asset("assets/playerProfile.jpg") : 
                    Image.file(File(selectedImg!.path)),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Player Name"
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: jerNoController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Player Jer No.",
                  ),
                ),
                const SizedBox(height: 20,),
                DropdownButtonFormField<String>(
              value: selectedTeam,
              items: iplTeams.map((String team) {
                return DropdownMenuItem(
                  value: team,
                  child: Text(team),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedTeam = newValue;
                  iplTeamController.text = newValue ?? "";
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Select Player IPL Team",
              ),
            ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async{
                        if(nameController.text.isNotEmpty && jerNoController.text.isNotEmpty && iplTeamController.text.isNotEmpty){
                          await FirebaseStorage.instance.ref().child("${iplTeamController.text}/${nameController.text}").putFile(File(selectedImg!.path));
                          String url = await FirebaseStorage.instance.ref().child("${iplTeamController.text}/${nameController.text}").getDownloadURL();
                          log("URL: $url");
                        Map<String, dynamic> data = {
                          "name" : nameController.text,
                          "jerNo" : jerNoController.text,
                          "team" : iplTeamController.text,
                          "profilePic" : url
                        };
                        await FirebaseFirestore.instance.collection("IPLTeams").add(data);
                        nameController.clear();
                        jerNoController.clear();
                        iplTeamController.clear();
                        selectedImg=null;
                        setState(() {
                          
                        });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                          boxShadow:const [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                        ),
                        child: const Center(
                          child: Text("Add Data",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const IplTeamsList();
                        }));
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                          boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 10,
                          blurStyle: BlurStyle.outer
                        )
                      ]
                        ),
                        child: const Center(
                          child: Text("Get Data",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
          ),
        ),
      ),
    );
  }
}
