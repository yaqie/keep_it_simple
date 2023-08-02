# Keep It Simple

This package is made with all my heart. made based on personal experience that I use to make my projects much simpler. I hope this package can make my work easier and that of all my friends.

## Features

- add space for width and height (AddWidth / AddHeight)
- radius for corner (Corner)

## Usage/Examples

```javascript
import 'package:keep_it_simple/keep_it_simple.dart';

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const AddWidth(20),
          Corner(
            corner: 30,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Text(rupiah(1000).toString())
        ],
      ),
    ),
  );
}
```
