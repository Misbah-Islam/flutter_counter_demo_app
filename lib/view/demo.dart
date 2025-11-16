import 'package:flutter/material.dart';
import 'package:flutter_03/controller/provider/demo_provider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 55, 152, 231),
                Color.fromARGB(255, 22, 1, 49),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1517495306984-f84210f9daa8?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2t5fGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=500",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ShaderMask(
                        shaderCallback: (bounds) =>
                            const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 125, 180, 231),
                                Color.fromARGB(255, 220, 154, 223),
                                Color.fromARGB(255, 4, 20, 63),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                            ),
                        child: Text(
                          "Counter App",
                          style: GoogleFonts.coiny(
                            fontSize: 40,
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: size.width * 0.5 - (size.width * 0.45) / 2,
                    child: Container(
                      height: size.height * 0.16,
                      width: size.width * 0.45,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                         offset: const Offset(4, 4),
                        blurRadius: 6,
                          ),
                         BoxShadow(
                          color: Colors.white.withOpacity(0.8),
                           offset: const Offset(-4, -4),
                         blurRadius: 6,
                         ),
                        ],
                      ),
                      child: Center(
                        child: Builder(
                          builder: (context) {
                            var provider = context.watch<DemoProvider>();
                            return Text(
                              "${provider.count}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 90,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          var provider = context.read<DemoProvider>();
                          provider.removeCount();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 25,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 33, 10, 95),

                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(4, 4),
                                blurRadius: 6,
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(
                                  255,
                                  13,
                                  87,
                                  148,
                                ).withOpacity(0.8),
                                offset: const Offset(-4, -4),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 60,
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          var provider = context.read<DemoProvider>();
                          provider.addCount();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 25,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 33, 10, 95),

                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(4, 4),
                                blurRadius: 6,
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(
                                  255,
                                  13,
                                  87,
                                  148,
                                ).withOpacity(0.8),
                                offset: const Offset(-4, -4),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 60,
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    var provider = context.read<DemoProvider>();
                    provider.resetCount();
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 33, 10, 95),

                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(4, 4),
                          blurRadius: 6,
                        ),
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            13,
                            87,
                            148,
                          ).withOpacity(0.8),
                          offset: const Offset(-4, -4),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.refresh,
                        size: 50,
                        color: Colors.grey.shade100,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
