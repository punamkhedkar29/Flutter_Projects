import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipl_teams/player_list.dart';

class IplTeamsList extends StatefulWidget {
  const IplTeamsList({super.key});

  @override
  State<IplTeamsList> createState() => _IplTeamsListState();
}

List playerList =[];

class _IplTeamsListState extends State<IplTeamsList> {

   List iplTeamList =[
    "Chennai Super Kings",
    "Mumbai Indians",
    "Royal Challengers Bangalore",
    "Delhi Capitals",
    "Gujarat Titans",
    "Kolkata Knight Riders",
    "Lucknow Super Giants",
    "Punjab Kings",
    "Rajasthan Royals",
    "Sunrisers Hyderabad",
   ];

   List teamImage = [
    "assets/teams/csk.webp",
    "assets/teams/mi.webp",
    "assets/teams/rcb.webp",
    "assets/teams/delhic.webp",
    "assets/teams/gujaratTitans.webp",
    "assets/teams/kkr.webp",
    "assets/teams/LSGoutline.webp",
    "assets/teams/punjab_kings.webp",
    "assets/teams/r_royals.webp",
    "assets/teams/srh.webp"
   ];

  @override
  void initState(){
    super.initState();
    addTeams();
  } 

  void addTeams() async {
    QuerySnapshot response = await FirebaseFirestore.instance.collection("IPLTeams").get();
    playerList = response.docs;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IPL Teams",
        style: TextStyle(
        
            fontWeight: FontWeight.w500
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: iplTeamList.length ,
        itemBuilder: (context,index){
            return GestureDetector(
              onTap: () {
                List filteredPlayers = playerList
                  .where((player) => player['team'] == iplTeamList[index])
                  .toList();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      PlayerList(teamName: iplTeamList[index], players: filteredPlayers),
                ),
              );
                
                setState(() {
                  
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 140,
                  width: 200,
                  decoration: BoxDecoration(
                   // color:Colors.yellow,
                    border: Border.all(),
                  ),
                  child: Stack(
                      children: [
                        // Base image
                        Positioned.fill(
                          child: Image.asset(
                            "${teamImage[index]}",
                            fit: BoxFit.contain,
                          ),
                        ),
                        // Gradient overlay for blending
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 10,
                                blurStyle: BlurStyle.outer
                              )
                            ],
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.blue.withOpacity(0.8),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]
                  )
                ),
              ),
            );
        }
      ),
    );
  }
}