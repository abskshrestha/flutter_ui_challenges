import 'package:flutter/material.dart';
import './neu_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            child: Column(
              children: [
                //bakc button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: NeuBox(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: NeuBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                //cover art, artist name, and song name

                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'lib/images/album_art3.jpg',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  're: stacks',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  'Bon Iver',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //start time, shuffle button, repeat button, and volume slider

                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('0:00'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4.22'),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //linear bar
                //check dart sdk version and corresponding versions

                NeuBox(
                  child: LinearProgressIndicator(
                    minHeight: 10,
                    value: 0.6,
                    color: Colors.green,
                    backgroundColor: Colors.grey[400],
                  ),
                ),

                SizedBox(height: 25),
                //previous song, pause play and

                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [ // add const
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_previous, size: 32),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(Icons.play_arrow, size: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_next, size: 32),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
