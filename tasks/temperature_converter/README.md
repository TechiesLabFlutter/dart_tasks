# Temperature Converter

Level: easy
Suggested time: 10 minutes

## Goal

Practise writing a function, working with `double` and `int`, reading input from the console, and printing with string interpolation.

## Requirements

1. Write a function `celsiusToFahrenheit(double c)` that returns the Fahrenheit value.
2. Read a temperature from the console using `stdin`.
3. Convert the value you read into a number.
4. Print one sentence containing both temperatures, built with string interpolation, not with the `+` operator.
5. The conversion itself must happen inside the function. `main` only reads, calls, and prints.

## Extra credit

1. Handle input that is not a number instead of letting the program crash.
2. Add the reverse function `fahrenheitToCelsius`.

## Starting point

None. Start from an empty `main.dart`.

Reading from the console needs `import 'dart:io';` at the top of the file. DartPad does not support console input, so use your editor for this task.

## Submission

Upload to:

```
submissions/<your_name_folder>/temperature_converter.dart
```

One file. Named exactly like that.

## Deadline

Announced in the session.

## Evaluation

| Criterion | Weight |
|-----------|--------|
| Correctness | 40 |
| Structure | 20 |
| Readability | 20 |
| Understanding | 20 |

## Concepts used

function, double, int.parse, stdin, string interpolation
