import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/images.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController scrollController = ScrollController();

  void _scrollListener() {
    double maxScroll = scrollController.position.maxScrollExtent;
    double currentScroll = scrollController.position.pixels;
    double scrollPercentage = 0.7;
    if (currentScroll > (maxScroll * scrollPercentage)) {}
  }

  @override
  void initState() {
    scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).padding.top + 10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Welcome,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                    ),
                    Text(
                      "Ala-Too store",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 22),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage(kUserAvatar),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autofocus: false,
                    onChanged: (val) => setState(() {}),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            left: 20, bottom: 22, top: 22),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.search),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: "Search",
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 3.0),
                            borderRadius: BorderRadius.circular(26)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 3.0),
                        )),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
