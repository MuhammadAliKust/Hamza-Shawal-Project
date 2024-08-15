import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Divider(color: Color(0xffEBEBEF)),
            SizedBox(
              height: 18,
            ),
            Image.asset('assets/images/header.png'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/header.png',
                    fit: BoxFit.cover,
                    height: 36,
                    width: 36,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A protester carries the Confederate flag after breaching US Capitol security",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff323232)),
                      ),
                      Text(
                        "5 hours ago    |     News18",
                        style: TextStyle(color: Color(0xff464646)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/thumb.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/bookmark.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/copy.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/send.png',
                  height: 24,
                  width: 24,
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
