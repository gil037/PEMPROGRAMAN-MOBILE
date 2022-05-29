import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:posttest7_gilang_yuda_pratama_2009106119/FirestoreController.dart';

class pesanan extends StatelessWidget {
  pesanan({Key? key}) : super(key: key);

  FirestoreController fsc = Get.put(FirestoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 233),
        ),
        child: ListView(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: fsc.users.value.orderBy("penjemputan").snapshots(),
              builder: ((context, snapshot) {
                return snapshot.hasData
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                ),
                                height: 140,
                                width: 385,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shadowColor: Colors.grey,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.5),
                                  ),
                                  onPressed: () {
                                    
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 0),
                                            child: Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.black),
                                          ),
                                          Container(
                                            width: 287,
                                            margin: EdgeInsets.only(
                                                left: 10, top: 0),
                                            child: Text(
                                              "${e.get('penjemputan')}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                                left: 0, top: 2),
                                            child: IconButton(
                                              color: Colors.black,
                                              icon: Icon(Icons.more_vert),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 0, top: 0),
                                            child: Icon(Icons.location_history,
                                                color: Colors.black),
                                          ),
                                          Container(
                                            width: 287,
                                            margin: EdgeInsets.only(
                                                left: 10, top: 0),
                                            child: Text(
                                              "${e.get('pengantaran')}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 320,
                                            child: Text(
                                              "Berat : " +
                                                  "${e.get('berat')}" +
                                                  " kg, Tip : " +
                                                  "${e.get('tip')}",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black45,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: IconButton(
                                              color: Colors.black,
                                              iconSize: 15.0,
                                              icon: Icon(Icons.thumb_up),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList())
                    : Text("Ga ada");
              }),
            ),
          ],
        ),
      ),
    );
  }
}
