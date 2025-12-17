# Widgets — what they are and how we use them in this repo

Widgets are the basic building blocks of every Flutter app. A widget describes part of a user interface — layout, styling, or behavior. In Flutter everything is a widget: buttons, padding, rows, columns and even the app itself.

## Widget types (short)
- StatelessWidget — immutable; UI does not change after build. Use for static pieces (brand header, simple info screens).
- StatefulWidget — has mutable state; use when UI changes (calculator input, toggles, forms).

## When to use which (in this app)
- Use StatefulWidget for the main calculator screen (numbers, operations change the display).
- Use StatelessWidget for simple help/about screens and static notes pages.
- Use small reusable widgets for keypad buttons, display area, and history list items.

## Common Material widgets used in this project (examples)

AppBar + Drawer (top-left hamburger opens BMI, Unit Converter, GPA, Settings):
```dart
// Example: AppBar with Drawer and history icon
AppBar(
  leading: Builder(
    builder: (context) => IconButton(
      icon: Icon(Icons.menu),
      onPressed: () => Scaffold.of(context).openDrawer(),
    ),
  ),
  centerTitle: true,
  title: Text('bit2026 Calculator'),
  actions: [
    IconButton(icon: Icon(Icons.history), onPressed: () {/* show history */}),
    PopupMenuButton(itemBuilder: (_) => [PopupMenuItem(child: Text('Help'))]),
  ],
)
```

Drawer (navigation to BMI, Unit Converter, GPA, Settings):
```dart
Drawer(
  child: ListView(
    children: [
      DrawerHeader(child: Text('Tools')),
      ListTile(title: Text('BMI Calculator'), onTap: () => /* navigate */ null),
      ListTile(title: Text('Unit Converter'), onTap: () => /* navigate */ null),
      ListTile(title: Text('GPA Calculator'), onTap: () => /* navigate */ null),
      ListTile(title: Text('Settings'), onTap: () => /* navigate */ null),
    ],
  ),
)
```

Calculator layout: display + keypad
```dart
class CalculatorScreen extends StatefulWidget { /* ... */ }

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = '0';

  void onKeyPress(String key) {
    setState(() {
      // update display and perform basic math operations
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(alignment: Alignment.centerRight, child: Text(display))),
          Container(
            height: 400,
            child: GridView.count(
              crossAxisCount: 4,
              children: ['7','8','9','/','4','5','6','*','1','2','3','-','0','.','=','+']
                .map((k) => ElevatedButton(onPressed: () => onKeyPress(k), child: Text(k)))
                .toList(),
            ),
          )
        ],
      ),
    );
  }
}
```

History list (ListView) example:
```dart
ListView.builder(
  itemCount: history.length,
  itemBuilder: (ctx, i) => ListTile(
    title: Text(history[i].expression),
    subtitle: Text(history[i].result),
  ),
)
```

Settings screen: theme, decimal places, theme color
- Use SwitchListTile for dark/light, DropdownButton or RadioListTile for theme color, and a Slider or Dropdown for decimal places.
- Changing settings can be implemented with a top-level inherited state, Provider, or a simple setState during learning.

## Layout widgets & spacing (what to practice)
- Column / Row — vertical/horizontal arrangement.
- Expanded / Flexible — share available space (useful for display area).
- Padding / SizedBox — spacing between widgets.
- Align / Center — control widget alignment.

Example (padding + row):
```dart
Padding(
  padding: EdgeInsets.all(12),
  child: Row(
    children: [
      Icon(Icons.favorite),
      SizedBox(width: 8),
      Text('Example'),
    ],
  ),
)
```

## Reusable widget idea (keypad button)
```dart
class KeyButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  KeyButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: ElevatedButton(onPressed: onTap, child: Text(label)),
    );
  }
}
```

## Notes for learners
- Break UI into small widgets (one widget = one responsibility).
- Practice converting StatelessWidget to StatefulWidget when you need to manage changing data.
- Read/keep notes in the repo `notes/` folder: explain each concept (Stateless vs Stateful, layout, material widgets).
- Implement simple persistence for history later (shared_preferences) after core widgets are understood.

**Next step suggestion:** implement AppBar + Drawer + empty CalculatorScreen and a simple keypad button widget. This gives hands-on practice with Scaffold, AppBar, Drawer, GridView, Stateless/Stateful widgets, and padding.