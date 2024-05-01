import 'package:flutter/cupertino.dart';

class CupertinoActionSheetActionWidgets extends StatefulWidget {
  const CupertinoActionSheetActionWidgets({super.key});

  @override
  State<CupertinoActionSheetActionWidgets> createState() =>
      _CupertinoActionSheetActionWidgetsState();
}

class _CupertinoActionSheetActionWidgetsState
    extends State<CupertinoActionSheetActionWidgets> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoButton'),
          onPressed: () {
            setState(
              () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (b) {
                    return const CupertinoActionSheet(
                      title: Text('Title'),
                      message: Text('Title Message'),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
