// lib/screens/match_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
        leading: const Icon(Icons.arrow_back, color: AppColors.textWhite),
        title: const Text(
          'UEFA Champions League',
          style: TextStyle(color: AppColors.textWhite),
        ),
        actions: const [Icon(Icons.more_vert, color: AppColors.textWhite)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.headerPurple,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.sports_soccer, size: 50, color: AppColors.textWhite),
                      Text('Barcelona', style: TextStyle(color: AppColors.textWhite)),
                    ],
                  ),
                  const Text('5', style: TextStyle(color: AppColors.textWhite, fontSize: 48)),
                  const Text('|', style: TextStyle(color: AppColors.textWhite, fontSize: 48)),
                  const Text('7', style: TextStyle(color: AppColors.textWhite, fontSize: 48)),
                  Column(
                    children: const [
                      Icon(Icons.sports_soccer, size: 50, color: AppColors.textWhite),
                      Text('Bayern', style: TextStyle(color: AppColors.textWhite)),
                    ],
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Stats'),
                    ],
                    labelColor: AppColors.tabSelectedGreen,
                    unselectedLabelColor: AppColors.tabUnselectedRed,
                  ),
                  SizedBox(
                    height: 300,
                    child: TabBarView(
                      children: [
                        // Overview Tab (hardcoded table)
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Table(
                            border: TableBorder.all(color: AppColors.textWhite),
                            children: const [
                              TableRow(children: [
                                Text('Bowler', style: TextStyle(color: AppColors.textWhite)),
                                Text('O', style: TextStyle(color: AppColors.textWhite)),
                                Text('R', style: TextStyle(color: AppColors.textWhite)),
                                Text('W', style: TextStyle(color: AppColors.textWhite)),
                                Text('Econ', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('Darcie Brown', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('19', style: TextStyle(color: AppColors.textWhite)),
                                Text('2', style: TextStyle(color: AppColors.textWhite)),
                                Text('4.75', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('Megan Schutt', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('24', style: TextStyle(color: AppColors.textWhite)),
                                Text('1', style: TextStyle(color: AppColors.textWhite)),
                                Text('5.75', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('Annabel land', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('14', style: TextStyle(color: AppColors.textWhite)),
                                Text('0', style: TextStyle(color: AppColors.textWhite)),
                                Text('14.0', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('Alana King', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('34', style: TextStyle(color: AppColors.textWhite)),
                                Text('1', style: TextStyle(color: AppColors.textWhite)),
                                Text('11.0', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('Saulo A.C.', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('4', style: TextStyle(color: AppColors.textWhite)),
                                Text('3', style: TextStyle(color: AppColors.textWhite)),
                                Text('4.32', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                            ],
                          ),
                        ),
                        // Stats Tab
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Table(
                            children: const [
                              TableRow(children: [
                                Text('8', style: TextStyle(color: AppColors.textWhite)),
                                Text('Shooting', style: TextStyle(color: AppColors.textWhite)),
                                Text('12', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('22', style: TextStyle(color: AppColors.textWhite)),
                                Text('Attacks', style: TextStyle(color: AppColors.textWhite)),
                                Text('29', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('42', style: TextStyle(color: AppColors.textWhite)),
                                Text('Possession', style: TextStyle(color: AppColors.textWhite)),
                                Text('58', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('3', style: TextStyle(color: AppColors.textWhite)),
                                Text('Cards', style: TextStyle(color: AppColors.textWhite)),
                                Text('5', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                              TableRow(children: [
                                Text('8', style: TextStyle(color: AppColors.textWhite)),
                                Text('Corners', style: TextStyle(color: AppColors.textWhite)),
                                Text('8', style: TextStyle(color: AppColors.textWhite)),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Head to Head',
                style: TextStyle(color: AppColors.textWhite, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.sports_soccer, color: AppColors.textWhite),
                SizedBox(width: 16),
                Text('2', style: TextStyle(color: AppColors.textWhite)),
                SizedBox(width: 16),
                Text('1', style: TextStyle(color: AppColors.textWhite)),
                SizedBox(width: 16),
                Text('2', style: TextStyle(color: AppColors.textWhite)),
                SizedBox(width: 16),
                Icon(Icons.sports_soccer, color: AppColors.textWhite),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'WINS DRAW WINS',
              style: TextStyle(color: AppColors.textWhite),
            ),
          ],
        ),
      ),
    );
  }
}