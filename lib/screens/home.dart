
import 'package:flutter/material.dart';
import '../main.dart';
import 'planner.dart';
import 'calendar.dart';
import 'prayer.dart';
import 'quran.dart';
import 'settings.dart';
class HomeShell extends StatefulWidget { @override _HomeShellState createState() => _HomeShellState(); }
class _HomeShellState extends State<HomeShell> {
  int idx=0;
  final pages=[
    PlannerScreen(),
    CalendarScreen(),
    PrayerQiblaScreen(),
    QuranScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (i)=>setState(()=>idx=i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.today), label: 'اليوم'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'التقويم'),
          BottomNavigationBarItem(icon: Icon(Icons.mosque), label: 'القبلة'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'القرآن'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الإعدادات'),
        ],
      ),
    );
  }
}
