import 'package:flutter/material.dart';
import 'package:xcellence/widgets/chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> emoji = [
    "assets/laugh.png",
    "assets/sad.png",
    "assets/angry.png",
    "assets/halo.png",
    "assets/expressionless.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.yellowAccent,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: RichText(
                      text: const TextSpan(
                        text: "How's  ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                            text: "the  ",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          TextSpan(
                              text: "Mood",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.orangeAccent))
                        ],
                      ),
                    ),
                    subtitle: const Text(
                      "Today",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Image.asset(
                          emoji[i],
                          height: 30,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.speed,
                  size: 20,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Team Mood",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 1.7,
                  color: Colors.white54,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.yellowAccent,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: const Text(
                  "The Team is felling good",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                subtitle: const Text(
                  "today",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                trailing: Image.asset(
                  "assets/haloface.png",
                  height: 40,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/haloface.png",
                height: 30,
              ),
              title: const Text(
                "Moodalytics",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              trailing: const Text(
                "(Trend chart on mood)",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            const ChartWidget(),
          ],
        ),
      ),
    );
  }
}
