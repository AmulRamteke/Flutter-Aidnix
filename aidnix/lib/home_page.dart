// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller = PageController();
  int _currentIndex = 0;

  final _controller1 = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Location',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    child: const Text(
                      'New York, USA',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notifications_active_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.only(
          left: 28,
        ),
        child: BottomNavigationBar(
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: Color(0xff31c48d),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            setState(() => _currentIndex = value);
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'call'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ), // icon is 48px widget.
                    ),
                    hintText: 'Medical test or laboratories',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
            // Image.asset('assets/images/filtertube.png')
          ],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Book With Prescription',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            'Upload your prescription for Tests And Scan'),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              elevation: 3,
                              padding: const EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {},
                          child: const Text(
                            'Upload',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                      'assets/images/Nurse.png'), // Adjust image path as needed
                ],
              ),
            ),
          ),
        ),
        Container(
            height: 250,
            margin: const EdgeInsets.all(10),
            child: Card(
                color: Color(0xffe6f4ef),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                const Text(
                                  'Call or chat with A\n health Expert',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    'Need Help? Talk to our health Experts!'),
                                const SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.greenAccent,
                                              elevation: 1,
                                              padding: const EdgeInsets.all(12),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                          onPressed: () {},
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.call,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                ' Call Now',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 10,
                                        ),
                                        // ElevatedButton(
                                        //     style: ElevatedButton.styleFrom(
                                        //         primary: Colors.greenAccent,
                                        //         elevation: 3,
                                        //         padding:
                                        //             const EdgeInsets.all(12),
                                        //         shape: RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     12))),
                                        //     onPressed: () {},
                                        //     child: Row(
                                        //       children: [
                                        //         Image.asset(
                                        //           'assets/images/Vector.png',
                                        //           color: Colors.white,
                                        //         ),
                                        //         SizedBox(
                                        //           height: 8,
                                        //         ),
                                        //         const Text(
                                        //           '  Chat With Us',
                                        //           style: TextStyle(
                                        //               color: Colors.white),
                                        //         ),
                                        //       ],
                                        //     )),
                                      ],
                                    ),
                                  ],
                                )
                              ])),
                          Image.asset(
                            'assets/images/doctor.png',
                          )
                        ])))),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text('Labs Near You',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: Text(
                'See all',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
            height: 250,
            margin: const EdgeInsets.all(10),
            child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            children: [
                              Image.asset('assets/images/tube.png'),
                              Container(
                                width: 20,
                              ),
                              const Text(
                                'Greenlab Biotech',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/star.png',
                                  ),
                                  Container(
                                    width: 8,
                                  ),
                                  const Text(
                                    '5.0 Rating ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    width: 30,
                                  ),
                                  Image.asset('assets/images/light.png'),
                                  Container(
                                    width: 8,
                                  ),
                                  Text(
                                    '100+ Tests',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Image.asset('assets/images/clinichome.png'),
                              Container(
                                width: 5,
                              ),
                              Text(
                                '2972 Westheimer Rd. Santa Ana, Illinois \n85486 ',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Image.asset('assets/images/location.png'),
                              Container(
                                width: 15,
                              ),
                              Text('2 Km from you')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              children: [
                                Image.asset('assets/images/tube.png'),
                                Container(
                                  width: 20,
                                ),
                                Text(
                                  'Healthy Biotech',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/star.png',
                                    ),
                                    Container(
                                      width: 8,
                                    ),
                                    Text(
                                      '5.0 Rating ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Container(
                                      width: 30,
                                    ),
                                    Image.asset('assets/images/light.png'),
                                    Container(
                                      width: 8,
                                    ),
                                    Text(
                                      '100+ Tests',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Image.asset('assets/images/clinichome.png'),
                                Container(
                                  width: 5,
                                ),
                                Text(
                                  '2972 Westheimer Rd. Santa Ana, \n85486 ',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Image.asset('assets/images/location.png'),
                                Container(
                                  width: 15,
                                ),
                                Text('2 Km from you')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: 250,
                      margin: const EdgeInsets.all(10),
                      child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/tube.png'),
                                  Container(
                                    width: 20,
                                  ),
                                  const Text(
                                    'Routine Biotech',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/star.png',
                                      ),
                                      Container(
                                        width: 8,
                                      ),
                                      Text(
                                        '5.0 Rating ',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        width: 30,
                                      ),
                                      Image.asset('assets/images/light.png'),
                                      Container(
                                        width: 8,
                                      ),
                                      Text(
                                        '100+ Tests',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/clinichome.png'),
                                  Container(
                                    width: 5,
                                  ),
                                  Text(
                                    '2972 Westheimer Rd. Santa Illinois \n85486 ',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/location.png'),
                                  Container(
                                    width: 15,
                                  ),
                                  Text('5 Km from you')
                                ],
                              ),
                            )
                          ]))),
                ])),
        SizedBox(
          height: 5,
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Test Category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/tube1.png',
                    ),
                    Container(
                      width: 10,
                    ),
                    Image.asset('assets/images/bucket.png'),
                    Container(
                      width: 10,
                    ),
                    Image.asset('assets/images/heart.png'),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.all(10),
            height: 250,
            child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller1,
                children: [
                  Card(
                    color: Color(0xff31c48d),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/limited.png',
                                height: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 35),
                                child: Row(children: [
                                  Image.asset('assets/images/Group.png'),
                                  // Image.asset('assets/images/nurse1.png'),
                                  Container(
                                    width: 20,
                                  ),
                                  const Text(
                                    'Pathlabs',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'Get blood check at low \nprice near your home',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 35.0),
                                  child: Image.asset('assets/images/500.png'),
                                ),
                                Container(
                                  width: 8,
                                ),
                                Image.asset('assets/images/350.png'),
                                // Image.asset('assets/images/nurse1.png'),
                              ]),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(children: [
                                  Image.asset(
                                    'assets/images/location.png',
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  Container(
                                    width: 10,
                                  ),
                                  const Text(
                                    '2 Km from you',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )
                                ]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 63.0),
                          child: Image.asset(
                            'assets/images/nurse1.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 250,
                    child: Card(
                      color: Color(0xff31c48d),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/limited.png',
                                  height: 30,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Row(children: [
                                    Image.asset('assets/images/Group.png'),
                                    // Image.asset('assets/images/nurse1.png'),
                                    Container(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Pathlabs',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    'Get blood check at low \nprice near your home',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35.0),
                                    child: Image.asset('assets/images/500.png'),
                                  ),
                                  Container(
                                    width: 8,
                                  ),
                                  Image.asset('assets/images/350.png'),
                                  // Image.asset('assets/images/nurse1.png'),
                                ]),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(children: [
                                    Image.asset(
                                      'assets/images/location.png',
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    const Text(
                                      '2 Km from you',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 63.0),
                            child: Image.asset(
                              'assets/images/nurse1.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 250,
                    child: Card(
                      color: Color(0xff31c48d),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/limited.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Row(children: [
                                    Image.asset('assets/images/Group.png'),
                                    // Image.asset('assets/images/nurse1.png'),
                                    Container(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Pathlabs',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    'Get blood check at low \nprice near your home',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35.0),
                                    child: Image.asset('assets/images/500.png'),
                                  ),
                                  Container(
                                    width: 8,
                                  ),
                                  Image.asset('assets/images/350.png'),
                                  // Image.asset('assets/images/nurse1.png'),
                                ]),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(children: [
                                    Image.asset(
                                      'assets/images/location.png',
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      '2 Km from you',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 63.0),
                            child: Image.asset(
                              'assets/images/nurse1.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ])),
        SizedBox(
          height: 5,
        ),
        SmoothPageIndicator(
          controller: _controller1,
          count: 3,
        ),
        SizedBox(height: 10),
        Container(
            height: 235,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Card(
              color: Color(0xffc0f4ff),
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      'Get 50% On Your \nFirst Lab Test',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit \namet, consectetur ',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            elevation: 5,
                            padding: const EdgeInsets.all(12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Text(
                          'Hurry Up',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )),
            )),
        SizedBox(
          height: 15,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 20),
        //       child: Text(
        //         'Reviews',
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(right: 20.0),
        //       child: Text(
        //         'See All',
        //         style: TextStyle(fontSize: 15),
        //       ),
        //     )
        //   ],
        // ),
      ])),
    );
  }
}
