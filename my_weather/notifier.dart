   // return ChangeNotifierProvider(
    //     create: (_) => ModelTheme(),
    //     child: Consumer<ModelTheme>(
    //       builder: (context, ModelTheme themeNotifier, child) {
    //         debugPrint(themeNotifier.isDark.toString());

           // return Material(
                // child: AppBar(
                //   actions: [
                //     IconButton(
                //       onPressed: () {
                //         themeNotifier.isDark = !themeNotifier.isDark;
                //         debugPrint(themeNotifier.isDark.toString());
                //       },
                //       icon: const Icon(Icons.dark_mode),
                //       color: Constant.blackColor,
                //     )
                //   ],
                //   backgroundColor: Constant.whiteColor,
                //   elevation: 0,
                //   leading: IconButton(
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const Register()));
                //       },
                //       icon: const Icon(
                //         Icons.arrow_back_rounded,
                //         color: Constant.blackColor,
                //       )),
                // ),
              //  );
            // theme:
            // themeNotifier.isDark
            //     ? ThemeData(brightness: Brightness.light)
            //     : ThemeData(brightness: Brightness.dark);
            // debugShowCheckedModeBanner:
            // false;