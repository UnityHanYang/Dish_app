import 'package:flutter/material.dart';

enum Filter {
  fourstar,
  threestar,
  twostar,
  onestar,
  hundradgood,
  thousand,
  oneSelect,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _fourstar = false;
  var _threestar = false;
  var _twostar = false;
  var _onestar = false;
  var _hundradgood = false;
  var _thousand = false;
  var _oneSelect = false;
  List<WidgetSpan> iconSpans = List.generate(
      4,
      (index) => const WidgetSpan(
            child: Icon(Icons.star, color: Colors.yellow),
          ));
  List<WidgetSpan> iconSpans2 = List.generate(
      3,
      (index) => const WidgetSpan(
            child: Icon(Icons.star, color: Colors.yellow),
          ));
  List<WidgetSpan> iconSpans3 = List.generate(
      2,
      (index) => const WidgetSpan(
            child: Icon(Icons.star, color: Colors.yellow),
          ));
  List<WidgetSpan> iconSpans4 = List.generate(
      1,
      (index) => const WidgetSpan(
            child: Icon(Icons.star, color: Colors.yellow),
          ));
          List<WidgetSpan> iconSpans5 = List.generate(
      2,
      (index) => const WidgetSpan(
            child: Icon(Icons.star),
          ));
          List<WidgetSpan> iconSpans6 = List.generate(
      3,
      (index) => const WidgetSpan(
            child: Icon(Icons.star),
          ));
          List<WidgetSpan> iconSpans7 = List.generate(
      4,
      (index) => const WidgetSpan(
            child: Icon(Icons.star),
          ));

  @override
  void initState() {
    super.initState();

    _fourstar = widget.currentFilters[Filter.fourstar]!;
    _threestar = widget.currentFilters[Filter.threestar]!;
    _twostar = widget.currentFilters[Filter.twostar]!;
    _onestar = widget.currentFilters[Filter.onestar]!;
    _hundradgood = widget.currentFilters[Filter.hundradgood]!;
    _thousand = widget.currentFilters[Filter.thousand]!;
    _oneSelect = widget.currentFilters[Filter.oneSelect]!;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.fourstar: _fourstar,
            Filter.threestar: _threestar,
            Filter.twostar: _twostar,
            Filter.onestar: _onestar,
            Filter.hundradgood: _hundradgood,
            Filter.thousand: _thousand,
            Filter.oneSelect: _oneSelect,
          });
          return false;
        },
        child: Column(children: [
          SwitchListTile(
            value: _fourstar,
            onChanged: (ischeck) {
              setState(() {
                _fourstar = ischeck;
                _threestar = false;
                _twostar = false;
                _onestar = false;
              });
            },
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(children: iconSpans),
                  const WidgetSpan(
                    child: Icon(Icons.star),
                  ),
                  TextSpan(
                    text: " & Up",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ],
              ),
            ),
          ),
          SwitchListTile(
            value: _threestar,
            onChanged: (ischeck) {
              setState(() {
                _threestar = ischeck;
                _fourstar = false;
                _twostar = false;
                _onestar = false;
              });
            },
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(children: iconSpans2),
                  TextSpan(children: iconSpans5),
                  TextSpan(
                    text: " & Up",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ],
              ),
            ),
          ),
          SwitchListTile(
            value: _twostar,
            onChanged: (ischeck) {
              setState(() {
                _twostar = ischeck;
                _threestar = false;
                _fourstar = false;
                _onestar = false;
              });
            },
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(children: iconSpans3),
                  TextSpan(children: iconSpans6),
                  TextSpan(
                    text: " & Up",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ],
              ),
            ),
          ),
          SwitchListTile(
            value: _onestar,
            onChanged: (ischeck) {
              setState(() {
                _onestar = ischeck;
                _threestar = false;
                _twostar = false;
                _fourstar = false;
              });
            },
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(children: iconSpans4),
                  TextSpan(children: iconSpans7),
                  TextSpan(
                    text: " & Up",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ],
              ),
            ),
          ),
          SwitchListTile(
            value: _hundradgood,
            onChanged: (ischeck) {
              setState(() {
                _hundradgood = ischeck;
                _thousand = false;
              });
            },
            title: Text(
              '좋아요 100개 이상',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          SwitchListTile(
            value: _thousand,
            onChanged: (ischeck) {
              setState(() {
                _thousand = ischeck;
                _hundradgood = false;
              });
            },
            title: Text(
              '좋아요 1000개 이상',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          SwitchListTile(
            value: _oneSelect,
            onChanged: (ischeck) {
              setState(() {
                _oneSelect = ischeck;
              });
            },
            title: Text(
              '싱글 앨범  ',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
        ]),
      ),
    );
  }
}
