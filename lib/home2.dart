import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  final Image;
  final ranges;
  final abouts;
  final String infom;
  final status;

  const Home2(
      {Key? key,
      required this.Image,
      required this.status,
      required this.abouts,
      required this.infom,
      required this.ranges})
      : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: NetworkImage(widget.Image)),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  widget.ranges,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Column(children: [
                        Text(
                          widget.status["dis"],
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.abouts["distance"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ]),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(children: [
                        Text(
                          widget.status["beds"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[400],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.abouts["bed"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ]),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(children: [
                        Text(
                          widget.status["rooms"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.abouts["bathrooms"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ]),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(children: [
                        Text(
                          widget.status["garages"],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey[400],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.abouts["garage"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              const Padding(

                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text("Description",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              ),
              const Text(
                  "San Francisco is not a place. It's a vibe.Its energy,"
                      " courses through the evergreen leaves. enjoy the fresh air and the "
                      "resilient concrete. It's a myriad of colors of newness. The limitless "
                      "boundary of a life well deserved. Where nothing matters but the "
                      "free spirit, hidden within and aching to emerge. To create To do s"
                      "o to be whatever it wants Embracing a brighter way to live The SOHO way."
                      " Because, quite simply, there just isn't another homemade this way",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),
    );
  }
}
