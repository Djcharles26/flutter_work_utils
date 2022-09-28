# Flutter Work Utils

 Flutter Utils is a miscelaneous package with multiple utilities that can take out of thinking how to solve problems or losing time building simple methods that should already exist in flutter

### Flutter Work Utils includes this packages

- ***color_parse***: A method to parse hex color strings to Color objects.
    - e.g.
        ```dart
            String stringColor = "ff000000";
            Color? res = colorFromString (stringColor);
        ```

- ***dates***: An extension of DateTime class to have multiple types of string formatted dates
    - e.g.
        ```dart
            DateTime date = DateTime.now ();
            print (date.dateString); // Will return 26-09-2022
            print (date.hourString); // Will return 22:42
            print (date.monthAbbr); // Will return SEPT
        ```
    - It also has a method to parse a millsecond date to *DateTime?* class validating zeros

- ***digester***: An extension of String impulsed by crypto package to convert a string into sha256 diggest
    - e.g.
        ```dart
            String password = "hola12";
            String diggest = password.diggest; // Will return sha256 of "hola12"
        ```

- ***font_color_switcher***: Includes a method that will return the contrasted color of the background passed as argument
    - e.g.
        ```dart
            Color background = Colors.black;
            Color textColor = getColorContrast(background); // Will return white
        ```
- ***iterable***: An Extension of iterable class
    - methods
        - *containsLambda*: A method to get all values of a list that match with a method
            - e.g.
                ```dart
                    List<String> names = ["John", "Charles", "Lisa", "Dog"];
                    List<String> namesWithO = names.containsLambda ((name) => name.contains("o"));
                ```
        - *allLambda*: A method to check if all elements in a current list satisfy a method
            - e.g.
                ```dart
                    List<String> names = ["John", "Charles", "Lisa", "Dog"];
                    print (names.allLambda ((name) => name.contains("o"))); // prints false
                ```
        - *containsAll*: A method to check if all elements of a list exists in current List
            - e.g.
                ```dart
                    List<String> names = ["John", "Charles", "Lisa", "Dog"];
                    print (names.containsAll (["John", "Miguel"])); // prints false
                ```
        - *containsAny*: A method to check if at least one elements of a list exists in current list
            - e.g.
                ```dart
                    List<String> names = ["John", "Charles", "Lisa", "Dog"];
                    print (names.containsAny (["John", "Miguel"])); // prints true
                ```

- ***logger***: A package to log with a better structure
    - NOTE: Xcode does not support color Text
    - methods
        - *printWarning (Object)*
        - *printError (Object)*
        - *printSuccess (Object)*
        - *printLog (Object)*

- ***nav_route***: Contains a method to generate a uri route based on a string route and query parameters
    - e.g.
        ```dart
            String route = generateNavRoute ("/home", queryParams: {"foo": "bar"});
            print (route); // prints "/home?foo=bar"
        ```

- ***network_image***: Contains a method to load and get bytes of an image from a URL
    - e.g.
        ```dart
            Uint8List? bytes = getBytesFromNetworkImageUrl ("https://image.com/image.png");
        ```

- ***query_parameters***: An extension of string that will generate a RoutingData object based on a navigation route
    - e.g.
        ```dart
            String route = "/home?foo=bar"; // See nav_route package
            RoutingData data = route.getRoutingData;
            print (data.contains ("foo")); // prints true
        ```
- ***router***: Contains a class to manage routing with a web strategy (Beta)
    - attributes
        - **navigatorKey**: Key binded to material app, allow this class to control the app navigation in any moment of context
    - methods:
        - *navigateTo*: Used to navigate with named routes and query params
            - e.g.
                ```dart
                    //Using get_it package
                    locator<NavigationService>.navigateTo("/home", queryParams: {"foo": "bar"});
                ```
        - *goBack*: Used to return to the last tree position
            - e.g.
                ```dart
                    //Using get_it package
                    locator<NavigationService>.goBack();
                ```
    
    - This package also contains a method to get query params by name
        - e.g.
            ```dart
                String? fooValue = getQueryParam (context, "foo"); // will save bar
            ```

- ***scroll_configuration***: This package contains a scroll behavior that will be very useful in web development, because it removes default scrolling
    - This scroll configuration should be applied in the return of the child in material app
    - e.g.
        ```dart
            return MaterialApp(
            title: 'Test',
            debugShowCheckedModeBanner: runtime == "Test",
            scaffoldMessengerKey: _scaffoldKey,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ui.themeMode,
            initialRoute: SplashScreen.routeName,
            navigatorKey: locator<NavigationService>().navigatorKey, // <-- Here, router package is used
            builder: (ctx, child) {
                return ScrollConfiguration(
                    // ScrollClean is the configuration
                    behavior: ScrollClean().copyWith(
                        scrollbars: false
                    ), 
                    child: child??Container()
                );
            },
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale(ui.locale),
            onGenerateRoute: (settings) => RutaPercepthor.generateRoute(settings, context),
          );
        ```
        
- ***string_utils***: An extension of string that contains some useful string formats
    - attributes:
        - *pertenence*: Will return the pertenence string of a word
            - e.g.
                ```dart
                    String name = "John";
                    print ("${name.pertenence} house"); // will print "John's house
                ```
        - *formattedSearchText*: Will return a string with no spaces, in lowercase and with no diacritics
            - e.g.
                ```dart
                    Sring name = "María Juanita Lisandra";
                    print (name.formattedSearchtext); //. Will print "mariajuanitalisandra";
                ```

- ***unfocus***: Contains a method to unfocus keyboard from screen in any context