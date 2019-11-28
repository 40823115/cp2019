void main() {
  var myAge = 35;
  print(myAge); // 35
  // This is a comment.
  print(myAge); // This is also a comment.

  /*
   And so is this.
   */
  int yourAge = 27;
  print(yourAge); // 27

  var pi = 3.14;
  print(pi); // 3.14
  double c = 299792458;
  print(c); // 299792458

  dynamic numberOfKittens;
  numberOfKittens = 'There are no kittens!';
  print(numberOfKittens); // There are no kittens!
  numberOfKittens = 0;
  print(numberOfKittens); // 0
  numberOfKittens = 0.5;
  print(numberOfKittens); // 0.5

  bool areThereKittens = false;
  print(areThereKittens); // false

  numberOfKittens = 1;
  areThereKittens = true;
  print(areThereKittens); // true

  print(40 + 2); // 42
  print(44 - 2); // 42
  print(21 * 2); // 42
  print(84 / 2); // 42

  var atltuae = 84.0 / 2;
  print(atltuae); // 42

  print(42 == 43); // false
  print(42 != 43); // true

  print(atltuae++); // 42
  print(--atltuae); // 42

  print(42 < 43); // true
  print(42 >= 43); // false

  atltuae += 1;
  print(atltuae); // 43
  atltuae -= 1;
  print(atltuae); // 42
  atltuae *= 2;
  print(atltuae); // 84
  atltuae /= 2;
  print(atltuae); // 42

  print(392 % 50); // 42

  print((41 < atltuae) && (atltuae < 43)); // true
  print((41 < atltuae) || (atltuae > 43)); // true

  print(!(41 < atltuae)); // false

  var firstName = 'Albert';
  String lastName = "Einstein";

  var physicist = "$firstName $lastName";
  print(physicist); // Albert Einstein

  var quote = 'If you can\'t'
      ' explain it simply\n'
      "you don't understand it well enough.";
  print(quote);
  // If you can't explain it simply
  // you don't understand it well enough.

  var energy = "Mass" + " times " + "c squared";
  print(energy); // Mass times c squared

  var model = """
I'm not creating the universe.
I'm creating a model of the universe,
which may or may not be true.""";
  print(model);
  // I'm not creating the universe.
  // I'm creating a model of the universe,
  // which may or may not be true.

  var rawString =
      r"If you can't explain it simply\nyou don't understand it well enough.";
  print(rawString);
  // If you can't explain it simply\nyou don't understand it well enough.

  const speedOfLight = 299792458;
  print(speedOfLight); // 299792458

  final planet = 'Jupiter';
  // final planet = 'Mar'; // error: planet is immutable
  final String moon = 'Europa';
  print('$planet has a moon $moon');
  // Jupiter has a moon Europa

  int age;
  double height;
  String err;
  print(age); // null
  print(height); // null
  print(err); // null

  var error = err ?? "No error";
  print(error); // No error

  err ??= error;
  print(err); // No error

  print(age?.isEven); // null

  var animal = 'fox';

  if (animal == 'cat' || animal == 'dog') {
    print('Animal is a house pet.');
  } else if (animal == 'rhino') {
    print('That\'s a big animal.');
  } else {
    print('Animal is NOT a house pet.');
  }
  // Animal is a house pet.

  var i = 1;
  while (i < 10) {
    print(i);
    i++;
  }
  // 1
  // 2
  // 3
  // 4
  // 5
  // 6
  // 7
  // 8
  // 9

  i = 1;
  do {
    print(i);
    if (i == 5) {
      break;
    }
    ++i;
  } while (i < 10);
  // 1
  // 2
  // 3
  // 4
  // 5

  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum += i;
  }
  print("The sum is $sum"); // The sum is 55

  var numbers = [1, 2, 3, 4];
  for (var number in numbers) {
    print(number);
  }
  // 1
  // 2
  // 3
  // 4

  numbers.forEach((number) => print(num));
  // 1
  // 2
  // 3
  // 4

  for (var number in numbers) {
    if (number == 3) {
      continue;
    }
    print(number);
  }
  // 1
  // 2
  // 4

  bool isBanana(String fruit) {
    return fruit == 'banana';
  }

  var fruit = 'apple';
  print(isBanana(fruit)); // false

  fruit = 'banana';
  print(isBanana(fruit)); // true

  bool withinTolerance({int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(value: 5)); // true

  String fullName(String first, String last, [String title]) {
    return "${title == null ? "" : "$title "}$first $last";
  }

  print(fullName("Joe", "Howard"));
  // Joe Howard

  print(fullName("Albert", "Einstein", "Professor"));
  // Professor Albert Einstein

  int applyTo(int value, int Function(int) op) {
    return op(value);
  }

  int square(int n) {
    return n * n;
  }

  print(applyTo(3, square)); // 9

  var op = square;
  print(op(5)); // 25

  var multiply = (int a, int b) => a * b;

  print(multiply(14, 3)); // 42

  numbers = [1, 2, 3];

  numbers.forEach((number) {
    var tripled = number * 3;
    print(tripled);
    // 3
    // 6
    // 9
  });

  Function applyMultiplier(num multiplier) =>
      (num value) => value * multiplier;

  var triple = applyMultiplier(3);

  print(triple(6)); // 18
  print(triple(14.0)); // 42
}
