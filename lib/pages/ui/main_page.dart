part of '../pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 2:
        return WishListPage();
      case 3:
        return ProfileScreen();
      default:
        return HomePage();
    }
  }

  Widget customBottonBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        height: 80,
        color: backgroundColor4,
        notchMargin: 12,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_home.png', width: 21),
              label: '',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_chat.png', width: 20),
              label: '',
              tooltip: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_wishlist.png', width: 20),
              label: '',
              tooltip: 'WishList',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_profile.png', width: 18),
              label: '',
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget floatButton() {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: primaryColor,
      onPressed: () {},
      child: Image.asset(
        'assets/icon_cart.png',
        width: 24,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottonBar(),
      body: body(),
    );
  }
}
