import 'package:flutter/material.dart';
import 'package:soloapp_global_audience_pwa/view/star_ranking.dart';

class PanelElement extends StatelessWidget {
  final String title;
  final String description;
  final int ranking;
  final String imagePath;

  const PanelElement({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.ranking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 35.0,
        left: 8.0,
        right: 8.0,
        top: 15.0,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Verdana',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: 'Verdana',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                        width: 300,
                        child: RankingStars(
                          ranking: ranking,
                          starSize: 15.0,
                        )),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
