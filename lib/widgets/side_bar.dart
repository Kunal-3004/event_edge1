import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import '../utils/constants.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
    required SidebarXController controller,
  })
      : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme
        .of(context)
        .brightness == Brightness.dark;

    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[900] : white,
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: TextStyle(
          color: isDarkMode ? Colors.black : Colors.grey[900]!.withOpacity(
              0.7),
        ),
        selectedTextStyle: TextStyle(
          color: isDarkMode ? Colors.black : Colors.white,
        ),
        hoverTextStyle: TextStyle(
          color: isDarkMode ? Colors.black : Colors.white,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: gray.withOpacity(0.37),
          ),
          gradient: LinearGradient(
            colors: [strong, orange],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: isDarkMode ? Colors.white70 : Colors.grey[900]!.withOpacity(
              0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[900] : white,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return Container(
          height: 150,
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: gray.withOpacity(0.37),
              ),
            ),
            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: extended ? 70 : 20,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      },
      items: const [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
        ),
        SidebarXItem(
          icon: CupertinoIcons.tickets,
          label: 'Tickets',
        ),
        SidebarXItem(
          icon: Icons.list_alt,
          label: 'Orders',
        ),
      ],
    );
  }
}

  final divider = Divider(color: gray.withOpacity(0.3), height: 1);


