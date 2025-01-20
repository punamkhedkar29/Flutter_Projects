
import 'dart:developer';

import 'package:c2w_student_firebase/get_data.dart';
import 'package:c2w_student_firebase/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddStudData extends StatefulWidget {
  const AddStudData({super.key});

  @override
  State<AddStudData> createState() => _AddStudDataState();
}

List<StudentModel> StudData = [];

class _AddStudDataState extends State<AddStudData> {

  TextEditingController studNameController = TextEditingController();
  TextEditingController studClgController = TextEditingController();
  TextEditingController studCourseController = TextEditingController();

  Map courseData = {};

  bool isSelected = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("C2W Students",
        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: studNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Student Name"
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: studClgController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Student College"
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  flex: 0,
                  child: Text("Enrolled courses : $courseData ",
                    style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                  ), 
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: studCourseController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Student Course"
                  ),
                ),
               
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isSelected=true;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: (isSelected==true) ? const Color.fromARGB(255, 122, 192, 250) : Colors.white,
                        ),
                        child: const Center(
                          child: Text("Offline",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isSelected=false;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: (isSelected==false) ? const Color.fromARGB(255, 122, 192, 250) : Colors.white,
                        ),
                        child: const Center(
                          child: Text("Online",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Center(
                  child: GestureDetector(
                      onTap: () {
                        if(studCourseController.text.trim().isNotEmpty){
                          String mode ="";
                          if(isSelected){
                            mode = "Offline";
                          }else{
                            mode = "Online";
                          }
                          courseData[studCourseController.text] = mode;
                          studCourseController.clear();
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 192, 250),
                        ),
                        child: const Center(
                          child: Text("Add Course",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                ),
                const SizedBox(height: 170,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: ()async{
                        if(studNameController.text.isNotEmpty && studClgController.text.isNotEmpty && 
                        courseData.isNotEmpty){
                        Map<String,dynamic> data={
                          "name":studNameController.text,
                          "clg":studClgController.text,
                          "course":courseData,
                        };

                         DocumentReference docref=await FirebaseFirestore.instance
                        .collection("c2w_Student_Data").add(data);
                        studNameController.clear();
                        studClgController.clear();
                        courseData.clear();
                        setState(() {
                          
                        });
                        log("DocRef: $docref");
                        }
                      },
    
                       child:  Container(
                        height: 40,
                        width: 130,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 192, 250),
                        ),
                        child: const Text("Add Data",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                     GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const GetData();
                        }));
                        
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 192, 250),
                        ),
                        child: const Text("Get Data",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),        
              ],
            ),
            ] 
          ),
      ),
      ),
    );
  }
}