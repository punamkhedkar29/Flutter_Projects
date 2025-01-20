import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final String teamName;
  final List players;

  const PlayerList({
    super.key,
    required this.teamName,
    required this.players,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teamName,
        style: const TextStyle(
              
              fontWeight: FontWeight.w600
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(),
                              
                              
                            ),
                            child: Image.network(players[index]["profilePic"], fit: BoxFit.cover,),
                          ),
                        ),
                        //SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${players[index]["name"]}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("Jersey No.: ${players[index]["jerNo"]}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("Team: ${players[index]["team"]}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
