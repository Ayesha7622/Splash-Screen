import 'dart:ffi';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ClassExpanded()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            image: AssetImage(
          'assets/whatsapp.png',
        )),
      ),
    );
  }
}
//import 'package:flutter/material.dart';

class ChatsModel {
  String? name;
  String? subName;
  String? images;
  String? numbers;
  String? time;

//constructor

  ChatsModel(
      {required this.name,
      required this.subName,
      required this.images,
      required this.time,
      required this.numbers});
}

class ClassExpanded extends StatefulWidget {
  const ClassExpanded({super.key});

  @override
  State<ClassExpanded> createState() => _ClassExpandedState();
}

class _ClassExpandedState extends State<ClassExpanded> {
  List<ChatsModel> chats = [
    ChatsModel(
        name: 'Naina',
        subName: 'tm jao to sahi pta chl jye ga',
        images: 'assets/woww.jpg',
        time: '10:12 pm',
        numbers: '1'),
    ChatsModel(
        name: 'Zainab',
        subName: 'ni yr ...mra dil nahi',
        images: 'assets/yeahh.jpg',
        time: '1:02 pm',
        numbers: '4'),
    ChatsModel(
        name: 'Rania',
        subName: 'blkl nahii',
        images: 'assets/yupp.jpg',
        time: '5:33 am',
        numbers: '13'),
    ChatsModel(
        name: 'Asma',
        subName: 'mujhe smjh ni ai',
        images: 'assets/zavii.jpg',
        time: '9:29 am',
        numbers: '8'),
    ChatsModel(
        name: 'Misbah',
        subName: 'jo khna h kho tm',
        images: 'assets/sunn.JPG',
        time: '4:05 pm',
        numbers: '5'),
    ChatsModel(
        name: 'Waaniya',
        subName: 'hm idea h mujhe',
        images: 'assets/tannu.jpg',
        time: '12:00 am',
        numbers: '17'),
    ChatsModel(
        name: 'Eman',
        subName: 'acha si h ...jao pphir',
        images: 'assets/rain.jpg',
        time: '2:12 am',
        numbers: '3'),
    ChatsModel(
        name: 'Zahra',
        subName: 'rest kr lo...thk ho jay g',
        images: 'assets/wide.jpg',
        time: '5:40 pm',
        numbers: '11'),
    ChatsModel(
        name: 'Noor',
        subName: 'hn alhadulillah..',
        images: 'assets/pyarii.png',
        time: '6:09 pm',
        numbers: '12'),
    ChatsModel(
        name: 'Mishhi',
        subName: 'bs tbyt set ni thi',
        images: 'assets/no.png',
        time: '9:55 am',
        numbers: '4'),
    ChatsModel(
        name: 'Fatima',
        subName: 'dimagh na khao mera',
        images: 'assets/nopee.jpg',
        time: '12:00 pm',
        numbers: '19'),
    ChatsModel(
        name: 'Hareem',
        subName: 'As you wish',
        images: 'assets/niccc.jpg',
        time: '10:31 pm',
        numbers: '8'),
    ChatsModel(
        name: 'Dua',
        subName: 'hn shyd..kuch time m',
        images: 'assets/nature.jpg',
        time: '7:18 pm',
        numbers: '3'),
    ChatsModel(
        name: 'Hira',
        subName: 'tm poch lo na zra us se',
        images: 'assets/nainn.jpg',
        time: '4:00 am',
        numbers: '31'),
    ChatsModel(
        name: 'Aqsa',
        subName: 'abhi bt ni kro na',
        images: 'assets/naaaai.jpg',
        time: '3:59 pm',
        numbers: '7'),
    ChatsModel(
        name: 'Zunaira',
        subName: 'okk . thk h',
        images: 'assets/manuu.jpg',
        time: '1:44 am',
        numbers: '3'),
    ChatsModel(
        name: 'KAinat',
        subName: 'mra koi scene ni h',
        images: 'assets/kipy.jpg',
        time: '6:19 am',
        numbers: '21'),
    ChatsModel(
        name: 'Rabia',
        subName: 'hn thk h ..jse si lgy',
        images: 'assets/izzu.jpg',
        time: '11:12 am',
        numbers: '6'),
    ChatsModel(
        name: 'Bina',
        subName: 'Khn ja rhi ho??',
        images: 'assets/juliii.jpg',
        time: '2:00 pm',
        numbers: '5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.fiber_manual_record_outlined,
          size: 50,
          color: const Color.fromARGB(255, 12, 74, 125),
        ),
      ),
      body: Column(children: [
        Expanded(
            flex: 10,
            child: Container(
              color: Colors.black,
              child: AppBar(
                  backgroundColor: Colors.black,
                  title: Text(
                    "WhatsApp",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 247, 244, 244),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: const Color.fromARGB(255, 247, 245, 245),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_vert,
                        color: const Color.fromARGB(255, 240, 238, 238),
                      ),
                    )
                  ]),
            )),
        Expanded(
            flex: 80,
            child: Container(
              color: Colors.black,
              child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChildClass(
                                  name: chats[index].name.toString(),
                                  subName: chats[index].subName.toString(),
                                  images: chats[index].images.toString(),
                                  time: chats[index].time.toString(),
                                  numbers: chats[index].numbers.toString(),
                                ),
                              ));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(chats[index].images.toString()),
                        ),
                        title: Text(
                          chats[index].name.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          chats[index].subName.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor:
                                  const Color.fromARGB(255, 79, 137, 81),
                              child: Text(
                                chats[index].numbers.toString(),
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              chats[index].time.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ));
                  }),
            )),
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.chat_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.update_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Updates',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.groups,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Communities',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Calls',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                // Row(
                //   children: [
                //     Text(
                //       'Chats',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ],
                // ),

                // Text(
                //   'Updates',
                //   style: TextStyle(color: Colors.white),
                // ),

                // Text(
                //   'Communities',
                //   style: TextStyle(color: Colors.white),
                // ),

                //   'Calls',
                //   style: TextStyle(color: Colors.white),
                // ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class ChildClass extends StatelessWidget {
  String name;
  String subName;
  String images;
  String numbers;
  String time;

  ChildClass({
    super.key,
    required this.name,
    required this.images,
    required this.subName,
    required this.numbers,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 123, 132, 137),
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 156, 155, 154)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subName,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class ClassChild extends StatelessWidget {
  const ClassChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
