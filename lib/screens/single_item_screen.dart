import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {

  String img;

  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212325),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Image.asset(
                          'images/$img.png',
                      width: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25, right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BEST COFFEE',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 3,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            img,
                            style: const TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                 width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.2),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Icon(
                                          Icons.minimize_outlined,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Icon(
                                          Icons.minimize_outlined,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  '\$30.20',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Coffee is a major source of antioxidants in the diet. It has many health benefits.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Volume : ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '60 ml',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                      'Add to cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 44),
                                  backgroundColor: const Color.fromARGB(255, 50, 54, 56),
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(44, 44),
                                  backgroundColor: const Color(0xFFE57734),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
