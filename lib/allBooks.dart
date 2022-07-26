import 'package:book_exchange/main.dart';
import 'package:book_exchange/model/bookDetails.dart';
import 'package:book_exchange/model/seeAllBooks.dart';
import 'package:flutter/material.dart';
import 'package:book_exchange/model/seaAllBookInitializer.dart';
import 'package:http/http.dart' as http;

class allBookScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _allBookScreen();
  }
}

class _allBookScreen extends State<allBookScreen> {
  List<Book>? allBooks;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getBooksData();
  }

  getBooksData() async {
    //allBooks = await
    allBooks = await allBooksDatas().getBooksData();
    print("Exactly Length is: ");
    print(allBooks?.length);
    if (allBooks != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Books"),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: allBooks?.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => bookDetailsScreen(
                              allBooks![index],
                            )));
              },
              child: Card(
                child: ListTile(
                  visualDensity: VisualDensity(vertical: 4),
                  title: Text(allBooks?[index].name ?? ""),
                  subtitle: Text(allBooks?[index].writer ?? ""),
                  leading: Image.network(
                    allBooks?[index].photo ?? "",
                    width: 200,
                  ),
                ),
              ),
            );
          },
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
