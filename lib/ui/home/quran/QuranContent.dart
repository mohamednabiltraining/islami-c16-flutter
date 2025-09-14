import 'package:flutter/material.dart';
import 'package:islami_c16/ui/Sura.dart';
import 'package:islami_c16/ui/home/quran/chapter_row.dart';

class QuranContent extends StatelessWidget {
  QuranContent({super.key});

  final List<Chapter> chapters = Chapter.getQuranChapters();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ChapterRow(chapter: chapters[index]);
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                color: Colors.white,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 64),
              );
            },
            itemCount: 114,
          ),
        ),
      ],
    );
  }
}
