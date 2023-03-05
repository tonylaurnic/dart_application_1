abstract class Widget {}

class Text extends Widget {
  final String text;
  Text(this.text);
}

class Button extends Widget {
  Button({required this.child, required this.onPressed});
  final Widget child;
  final void Function()? onPressed;
}

void main() {
  final button =
      Button(child: Text('Hallo'), onPressed: () => print('button pressed'));
  print(button);
}
