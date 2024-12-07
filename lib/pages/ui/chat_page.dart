part of '../pages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget messageEmpty() {
    return Expanded(
      child: Center(
        child: Text(
          'Message Is Empty',
          style: primaryTextStyle,
        ),
      ),
    );
  }

  Widget message() {
    return Column(
      children: [
        ChatCart(),
        ChatCart(),
        ChatCart(),
        ChatCart(),
        ChatCart(),
        ChatCart(),
      ],
    );
  }

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(
          fontWeight: FontWeight.w200,
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          message(),
        ],
      ),
    );
  }
}
