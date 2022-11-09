import 'package:flutter/material.dart';
import 'package:flats/home2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> Names = [
    "<\$20,0000",
    "For Sale",
    "3-4 Beds",
  ];
  List<String> images = [
    "https://i.pinimg.com/originals/0d/12/c4/0d12c4c67b54df7fd629f03b70120bb1.jpg",
    "https://www.lovehappensmag.com/blog/wp-content/uploads/2021/08/paul-mcclean-luxury-home.jpg",
    "https://www.realestate.com.au/blog/images/1024x576-fit,progressive/2019/08/21160831/capi_e51a4072121d9b63a2d5dacb7f8fc8ed_9d66553cda8d01b2b0aafac2bd474d83.jpeg",
    "https://i2.au.reastatic.net/800x600/115ebf20a60716db5488b1aa84d7c0c40a83ad7c537b01a1bcc9d90a97f35b43/main.jpg"
  ];
  List list = ["square fit", "Bedrooms", "Bathrooms", "Garage"];
  List<Map<String, String>> about = [
    {"distance": "2345", "bed": "3", "bathrooms": "2", "garage": "1"},
    {"distance": "3365", "bed": "4", "bathrooms": "2", "garage": "1"},
    {"distance": "2825", "bed": "3", "bathrooms": "2", "garage": "1"},
    {"distance": "2945", "bed": "5", "bathrooms": "2", "garage": "1"},
  ];
  List<Map<String, String>> status = [
    {
      "dis": "square fit",
      "beds": "Bedrooms",
      "rooms": "Bathrooms",
      "garages": "Garage"
    },
    {
      "dis": "square fit",
      "beds": "Bedrooms",
      "rooms": "Bathrooms",
      "garages": "Garage"
    },
    {
      "dis": "square fit",
      "beds": "Bedrooms",
      "rooms": "Bathrooms",
      "garages": "Garage"
    },
    {
      "dis": "square fit",
      "beds": "Bedrooms",
      "rooms": "Bathrooms",
      "garages": "Garage"
    }
  ];
  List<String> ratings = [
    "\$20,00,000",
    "\$30,00,000",
    "\$25,00,000",
    "\$40,00,000"
  ];
  List<String> range = [
    "jenision  Mt 49420 Sf",
    "jenision  Mt 52320 Sf",
    "jenision  Mt 38420 Sf",
    "jenision  Mt 49420 Sf"
  ];

  @override
  List<String> bed = [
    "3 bedrooms / 2 bathrooms 40420 Sf",
    "4 bedrooms / 2 bathrooms 40420 Sf",
    "3 bedrooms / 2 bathrooms 40420 Sf",
    "5 bedrooms / 2 bathrooms 40400 Sf "
  ];
  List<String> info = [
    "Home Information",
    "Home Information",
    "Home Information",
    "Home Information",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.menu,
                    size: 20,
                  ),
                  Spacer(),
                  Icon(Icons.settings, size: 20),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "city",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text("san francisco",
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(Names.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 2,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          Names[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Expanded(
                child: ListView(
                  children: List.generate(images.length, (index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home2(
                                          Image: images[index],
                                          abouts: about[index],
                                          infom: info[index],
                                          status: status[index],
                                          ranges: ratings[index])));
                            },
                            child: Container(
                              child: Image.network(images[index]),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                ratings[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              range[index],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              bed[index],
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
