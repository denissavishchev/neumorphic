import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'neu_box.dart';
import 'neu_box_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: NeuBoxButton(
                    onTap: () { print('back'); },
                    child: Icon(Icons.arrow_back_ios_new),),
                  ),
                  const Text('E X P E R I M E N T', style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: NeuBoxButton(
                    onTap: () { print('menu'); },
                    child: Icon(Icons.menu),),
                  ),
                ],
              ),
              const SizedBox(height: 30,),

              NeuBox(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/2.png')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Live', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xff7a7f7f)),),
                      Icon(Icons.favorite_border, color: Color(0xff9bcfe0),),
                    ],
                  ),
                ],
              ),
              ),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22'),
                ],
              ),

              const SizedBox(height: 30,),

              NeuBox(
                child: LinearPercentIndicator(
                  barRadius: const Radius.circular(10),
                  lineHeight: 6,
                  percent: 0.4,
                  progressColor: const Color(0xff7a7f7f),
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 40,),

              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                        child: NeuBoxButton(
                        onTap: () { print('prev'); },
                        child: Icon(Icons.skip_previous,size: 34,),),),
                    Expanded(
                      flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: NeuBoxButton(
                          onTap: () { print('play'); },
                          child: Icon(Icons.play_arrow, size: 34,),),
                        )),
                    Expanded(
                        child: NeuBoxButton(
                        onTap: () { print('skip'); },
                        child: Icon(Icons.skip_next, size: 34,),)),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
