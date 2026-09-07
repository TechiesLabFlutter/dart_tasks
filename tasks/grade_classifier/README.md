# Grade Classifier

Level: moderate
Suggested time: 15 minutes

## Goal

Practise conditional logic, and see the same rule expressed two different ways so you can judge which one reads better.

## Requirements

1. Read a score between 0 and 100 from the console.
2. Print the letter grade using an `if` and `else if` chain. A is 90 and above, B is 80 and above, C is 70 and above, D is 60 and above, anything below 60 is F.
3. Write the same logic a second time using a `switch` on `score ~/ 10`, in a separate function.
4. Reject any score outside the range 0 to 100 with a clear message, and do not print a grade in that case.
5. Call both versions on the same input and confirm they agree.

## Extra credit

Write the `switch` version as a switch expression that returns the letter instead of printing it.

## Starting point

None. Start from an empty `main.dart`.

## Submission

Upload to:

```
submissions/<your_name_folder>/grade_classifier.dart
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

if and else if, switch, integer division with `~/`, relational operators, bool

## Question to think about

Which of your two versions would you rather maintain, and why. Be ready to answer this in the session.
