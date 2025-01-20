import 'package:flutter/material.dart';
import 'package:netflix_demo/netflix_model.dart';

class NetflixHome extends StatefulWidget{
  const NetflixHome({super.key});
  @override
  State<NetflixHome> createState() => _NetflixHome();
}

class _NetflixHome extends State<NetflixHome>{

  List<NetflixCard> cardList1=[
    NetflixCard(image: "https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSnq-f_JS2Pl1RmFj2EvrdF4ZPD6ynaFTJTzFqHYdptj1rOTFXoLO7YfhlFUasCekaH-B0kH1Ie2k9ZpTCsoqxCCQ3TH1SApyskx3qBgmkMog0i_NR7zksy0pCnj5vCQAQj4feSgTE3YqBKE_nwOHDbnpjLVUd6DtgoRONSpV2yLSZqia8PSBJ8xi7wQlKzExsfjtoehvUiOXZDr9XVsqHTdqhSgYXwvAsMG01VJityzmYVnjNrdadYsK9LqRwp3-8fZpagSqFA5uuPuJ46JQbCJwyuo87wvrmarVXQwIsqJnP__AiwHmdr0i50_8qk4w87GNagJe0THWJWe_qex6Rd3rG7luu44TVuH9BJaqLU73EX3NBI.jpg?r=878", 
      name: "Sector 36"),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
    NetflixCard(image: "", 
      name: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "NETFLIX",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.red,
            ),
          ),
        backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 1,
          //physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(7)),
                const Text("UNLIMITED TV SHOWS & MOVIES ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                ),
                const Padding(padding: EdgeInsets.all(7)),
                Container(
                  width: 80,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text("Join now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(7)),
                Container(
                  width: 60,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white)
                  ),
                  child: const Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ],
                ),
                const Padding(padding: EdgeInsets.all(7)),
                const Text(
                  "Made in India",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSnq-f_JS2Pl1RmFj2EvrdF4ZPD6ynaFTJTzFqHYdptj1rOTFXoLO7YfhlFUasCekaH-B0kH1Ie2k9ZpTCsoqxCCQ3TH1SApyskx3qBgmkMog0i_NR7zksy0pCnj5vCQAQj4feSgTE3YqBKE_nwOHDbnpjLVUd6DtgoRONSpV2yLSZqia8PSBJ8xi7wQlKzExsfjtoehvUiOXZDr9XVsqHTdqhSgYXwvAsMG01VJityzmYVnjNrdadYsK9LqRwp3-8fZpagSqFA5uuPuJ46JQbCJwyuo87wvrmarVXQwIsqJnP__AiwHmdr0i50_8qk4w87GNagJe0THWJWe_qex6Rd3rG7luu44TVuH9BJaqLU73EX3NBI.jpg?r=878"),
                            const Text("Sector 36",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa04ZxjLCSuOTfhqAgvq1IiOJgOSCMDerqcO0fN2O1CoFbA7QZvaGNdfHjhAaWcDdrPuQEY9q_BpcC2NXvM_sQ2uxzGgbdyzvEFU873attvdY_Tld6ZAplMH6CAucjNNCiow.jpg?r=dc3"),
                            const Text("Maharaj",style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQY1CJ6Yn7pBHkI7QPMgJ60WC9JJ3S1Y8LhsHUInz3HGJDEWPUH9cEXZoERDveKrm4v4pmTJbZH__DH4ROQUPUc8az8gE3WdwRKGCyEB8H75Uzdtz3ScMvC3ElgOXVZRNout.jpg?r=19c"),
                            const Text("Kota Factory",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTC3EtgbWMT9lOOx3-t2tQz-vf5mFoTA_3Hj41Uo_i-r_0E0Obui7nyjbJuSwmNiKC4whETh7soFT8oh6POmcBssMrDFwTbWnGXHoeLtorhGhEMRftvtqUbbtyS8bTjg_trV.jpg?r=856"),
                            const Text("Amar Singh Chamkila",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABV1D3BFin5nSB90HF5dzTy6n9yHXnyU_YH9t3kdwuUwBHbXoqmtpHKqAfYWOlH2B9p9_EcxFVJkeE0Su0qQMAQLUUUtrIJ6TQpI9IwsVtsLOu6qC7o4eTMt-0M_6ZDKwG3EO.jpg?r=23e"),
                            const Text("Mission Majnu",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRnXCGHV6mju4IywRYdeQMxFayybmjJ89UTn17AgiXr85zd8LxguTJlafjL33yJO9ZkPsz-PUhY_ydkM6_H-BRe4WfWNRAcmPy5fCdnLnN5cF_AZDZ4F1c0GOQPZykpgZAS_i-91yXUkpl-di4crxu3eI9uNewAP2BkzvYYODNhXo3vbqIp22HecQtfKMFY.jpg?r=125"),
                            const Text("Tribhuvan Mishra CA Topper",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZRAlQ7Jlkc7e84ABWXduW-FqWelwec7UVsMDsQIM2vICPYmwMzfF7-4dWDVv0Kyo0XWEKRJGvig6KgRErjUjCWRzbXGyrV2t2cC3L6ubH9qHx5T-c1l4TbphF1WqN2yLMG4SdSAHantkHfXhTkmYk6vyXXb54G24yoFZifkzx9km1pr3NE4wXOdaPOtwZg.jpg?r=533"),
                            const Text("IC814: The Kandahar Hijack",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRyj6fh1HXIp0PeqHNK00MICNkWoKRfWdc6WhO_yEULQYyHXRSQ-6jMrqfxQKcfaorDtwOPgHinYsTRPAJ4xGppUVgfYN9l6pLVgtODwcce1IyPj0rfySHCnNkUzw6_8QGhVOp58Neji2DfqdSqrQpyLtSEK7piz7ZR8u5SfxuqM8nANKVjPOE7ih92vjMjngw916qZ_Suf-NS6SflhaEl8eBrLpG-ipdusJE5g5hioS2RbfRluVDDJab-Nms5dKhw1otU1ZgmMGFnVG5X2rxaUIOKPpRRUz4S8uKPyHtiOyolQJY3M98E6bVihBBsXjlkRl2R2rA4pJbhFlxNfATgIb7O2pZu3YGvnrCF4PaNvPQg.jpg?r=155"),
                            const Text("The Great Indian Kapil Show",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                      )
                   ],
                  ),
                ),
              ]
            );  
          },
        )
      ),
    );
  }
}
