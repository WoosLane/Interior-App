import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/search/components/default_search_field.dart';
import '../../models/search_keywords.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("검색"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const DefaultSearchField(),
          const SizedBox(height: 20),
          const Text("인기 검색어", style: TextStyle(color: kTextColor)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            height: 400,
            child: ListView.separated(
                itemBuilder: (context, index) => SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      searchKeyword[index],
                      style: const TextStyle(color: kPrimaryColor, fontSize: 16),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 0.5,
                  height: 0,
                ),
                itemCount: searchKeyword.length,
            ),
          ),
        ],
      ),
    );
  }
}
