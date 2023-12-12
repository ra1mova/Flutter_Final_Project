import 'package:flutter/material.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/router/app_router.dart';
import '../../../widgets/other_item_card.dart';

class OtherView extends StatelessWidget {
  const OtherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 36.0,
                    backgroundImage: AssetImage(kUserAvatar),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login in your account",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Text("")
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          OtherItemCard(
            onClick: () {
              Navigator.of(context).pushNamed(AppRouter.signUp);
            },
            title: "Profile",
          ),
          const SizedBox(height: 6),
          OtherItemCard(
            onClick: () {
              Navigator.of(context).pushNamed(AppRouter.settings);
            },
            title: "Settings",
          ),
          const SizedBox(height: 6),
          OtherItemCard(
            onClick: () {
              Navigator.of(context).pushNamed(AppRouter.notifications);
            },
            title: "Notifications",
          ),
          const SizedBox(height: 6),
          OtherItemCard(
            onClick: () {
              Navigator.of(context).pushNamed(AppRouter.about);
            },
            title: "About",
          ),
          const SizedBox(height: 6),
          SizedBox(height: (MediaQuery.of(context).padding.bottom + 50)),
        ],
      ),
    );
  }
}
