import 'package:api_device_info/product_individual.dart';
import 'package:flutter/material.dart';


int globalIndex=0;
 List<dynamic> deviceList=[];

// ignore: must_be_immutable
class DevicePage extends StatelessWidget {
 
  DevicePage({super.key});

  List<String> imagesList=[
    "assets/Devices/Google pixel 6 pro.jpeg",
    "assets/Devices/Apple iphone 12 mini.jpeg",
    "assets/Devices/Apple iphone 12 pro max.jpeg",
    "assets/Devices/Apple iphone 11.jpeg",
    "assets/Devices/samsung galaxy z fold2.jpeg",
    "assets/Devices/Apple airpods.jpeg",
    "assets/Devices/Apple mackbook pro 16.jpeg",
    "assets/Devices/Apple watch series 8.jpeg",
    "assets/Devices/beats studio3 wireless.jpeg",
    "assets/Devices/apple ipad mini 5th gen 10.jpeg",
    "assets/Devices/apple ipad mini 5th gen 11.jpeg",
    "assets/Devices/apple ipad air.jpeg",
    "assets/Devices/apple ipad air 13.jpeg"
  ];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text("Devices",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 190, 84, 208),
        ),
        body: GridView.builder(
          itemCount: deviceList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
            itemBuilder: (context, index){
             return Padding(
               padding: const EdgeInsets.all(2.0),
               child: Container(
                  height: 180,
                  width: 90,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.purple,
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          deviceIndividual.clear();
                          imageIndividual.clear();
                          globalIndex=index;
                          deviceIndividual.add(deviceList[index]);
                          imageIndividual.add(imagesList[index]);
                          
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return DeviceDetails();
                          }));
                        },
                        child: Container(
                          height: 110,
                          width: 120,
                          child: Image.asset(imagesList[index],fit: BoxFit.cover,),
                        ),
                      ),
                      Text("Device name: ${deviceList[index]['name']}")
                    ],
                  ) ,
                ),
             );

            },
          ),
    );
  }
}