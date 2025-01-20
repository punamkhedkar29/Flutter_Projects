import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  List studData=[];

  void initState(){
    super.initState();
    fetchData();
  }

  void fetchData() async {
     QuerySnapshot response = await FirebaseFirestore.instance.collection("c2w_Student_Data").get();
      studData=response.docs;
      log("Response : ${response.docs}");
      setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("C2W Students",
        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: studData.length ,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                FirebaseFirestore.instance.collection("c2w_Student_Data").doc(studData[index].id).delete();
                studData.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data has been deleted"))
                );
                setState(() {
                  
                });
              },
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        Text("Student Name : ${studData[index]["name"]}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Text("Student College : ${studData[index]["clg"]}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Text("Student Course : ${studData[index]["course"]}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        } 
        ),
    );
  }
}