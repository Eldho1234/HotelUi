import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings")
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1631510390389-c1e4fb20ff31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=792&q=80"))),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black45, Colors.transparent],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Details",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "GrandHyatt Kochi",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.justify,
                                  maxLines: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 5),
                                child: Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "8.5/120 reviews",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.purple,
                          ),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star, color: Colors.purple),
                          Icon(Icons.star_half, color: Colors.purple),
                        ],
                      ),
                      Row(children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.black38,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "8 km to LuluMall",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "\$ 200",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "/per night",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "Book Now",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 8),
                      child: Text(
                        "DESCRIPTION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      "Cochin Grand Hyatt Kochi Bolgatty is a waterfront resort featuring two swimming pools a tennis court as well as a fitness center.All rooms are air-conditioned with private bathrooms and hot tub. Rooms and suites are well equipped with workstations & flat screen TV. The rooms offer spectacular views of lake garden city or pool.Guests have access to the business center spa & salon ids play area and some of the finest signature restaurants in the city.A continental or buffet breakfast is available daily at the property.Guests can rent a car to explore the area. Speaking English and Hindi at the reception staff are always on hand to help.Colony Clubhouse & Grill is a classic Old World grill on the hotel’s rooftop while Malabar Cafe is an all- day outlet that showcases the culinary expertize of Kerala.The property is 3.1 mi away from Durbar Hall Art Gallery which houses painting by illustrious local artists and 3.8 mi away from Greenix Village which showcases traditional music and arts. Kochi Interational Airport is 20 mi from the property and a 45-minute drive away.",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                      textAlign: TextAlign.justify,
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
