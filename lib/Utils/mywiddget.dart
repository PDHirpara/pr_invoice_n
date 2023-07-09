// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'Data/data.dart';
import 'model.dart';

Widget myProduct({required String category, required String d_name}) {
  return Builder(builder: (context) {
    // Product data = ModalRoute.of(context)!.settings.arguments as Product;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              top: 20,
            ),
            child: Text(
              d_name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          ...product
              .map((e) => (e['category'] == category)
                  ? GestureDetector(
                      onTap: () {
                        Product p1 = Product(
                            title: e['tital'],
                            price: e['price'],
                            quality: e['quality'],
                            category: e['category'],
                            image: e['image']);
                        Navigator.of(context).pushNamed('cart', arguments: p1);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            // height: double.infinity,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(
                              top: 10,
                              right: 20,
                              left: 20,
                            ),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 8,
                                          color: Colors.grey,
                                        ),
                                      ],
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          e['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    // height: double.infinity,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8,
                                          color: Colors.grey,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                top: 10,
                                              ),
                                              child: Text(
                                                e['tital'],
                                                style: const TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.orangeAccent,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 15,
                                                top: 12,
                                              ),
                                              child: Text(
                                                "⭐️ ${e['quality'].toString()}",
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                left: 15,
                                                top: 10,
                                              ),
                                              child: Text(
                                                "Price",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 15,
                                                top: 10,
                                              ),
                                              child: Text(
                                                "${e['price']} ₹".toString(),
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // if (!AddedProducts.contains(
                                              //     data)) {
                                              //   AddedProducts.add(data);
                                              // } else {
                                              //   stdout.write(
                                              //       "No data Available...");
                                              // }
                                              const massage1 = SnackBar(
                                                content: Text(
                                                  "Product Add to Your Bill",
                                                ),
                                                duration: Duration(seconds: 3),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(massage1);
                                            },
                                            child: const Text(
                                              "Add to Bill",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ],
                      ),
                    )
                  : Container())
              .toList(),
        ],
      ),
    );
  });
}
