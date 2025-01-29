import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';
import 'package:login_screen/features/auth/widgets/login_form.dart';
import 'package:login_screen/features/auth/widgets/signup_form.dart';

class AuthTabs extends StatefulWidget {
  const AuthTabs({super.key});

  @override
  _AuthTabsState createState() => _AuthTabsState();
}

class _AuthTabsState extends State<AuthTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tabs
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: TabBar(
            controller: _tabController,
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize
                .tab, // Set the indicator size to fill the tab
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppStyles.primaryColor, // Active tab background color
            ),
            labelColor: Colors.white, // Active tab text color
            unselectedLabelColor: Colors.black, // Inactive tab text color
            labelStyle:
                AppStyles.buttonText.copyWith(fontWeight: FontWeight.bold),

            unselectedLabelStyle: AppStyles.buttonText,

            tabs: const [
              Tab(text: 'Log in'),
              Tab(text: 'Sign up'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Tab Views
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [LoginForm(), SignupForm()],
          ),
        ),
      ],
    );
  }
}
