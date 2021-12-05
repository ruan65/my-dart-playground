void main() {
  var b = B();

  print(b.ma(3));

  var c = C();

  print(c.ma('duraki'));
}

abstract class A<T> {
  T ma(T input);
}

class B implements A<int> {
  @override
  int ma(int input) {
    return input * 7;
  }
}

class C extends A<String> {
  @override
  String ma(String input) {
    return input.toUpperCase();
  }
}

class AwithAmixin = A<String> with Amixin;

mixin Amixin on A<String> {
  @override
  String ma(String input) {
    return 'input: $input';
  }
}
