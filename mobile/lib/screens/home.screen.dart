import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

//home screen with button to navigate to TextToSignScreen
class HomeScreen extends StatelessWidget {
  //get the provider using provider.of

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/home.jpeg'),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to SignLingo',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'SignLingo is a platform that helps you learn sign language',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Features',
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              const Text('Text to Sign',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/textToSign');
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 400,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/feat1.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              const Text('Sign To Text',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/textToSign');
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 400,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/feat2.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
