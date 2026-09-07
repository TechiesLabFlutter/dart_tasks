# Bill Splitter

Level: challenge
Suggested time: 20 minutes

## Goal

Practise named parameters with default values, loops, and the arithmetic operators used for money.

## Requirements

1. Write the function:

   ```
   splitBill({required double total, required int people, double tipPercent = 10})
   ```

   It returns the amount each person pays, rounded up to a whole dinar.
2. Print one line per person showing what that person owes.
3. Use the remainder operator `%` to show the leftover coins created by the rounding.
4. If `people` is greater than 20, stop the loop with `break` and print a message explaining why.
5. Call the function at least twice, once relying on the default tip and once passing a different tip.

## Extra credit

1. Reject a `people` value of zero or less before any calculation runs.
2. Write the function body as an arrow function if it fits on one expression.

## Starting point

None. Start from an empty `main.dart`.

## Submission

Upload to:

```
submissions/<your_name_folder>/bill_splitter.dart
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

named parameters, default values, for loop, `%`, `~/`, break, arrow function

## Hint

Rounding up is not the same as rounding. Look at what `ceil` does on a `double`, and think about what type your function should return once every person pays a whole number.
