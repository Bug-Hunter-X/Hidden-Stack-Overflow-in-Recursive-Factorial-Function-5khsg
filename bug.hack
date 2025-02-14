function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This function calculates the factorial of a number.  However, it doesn't handle negative inputs, leading to an infinite recursive call and a stack overflow error.  The error isn't immediately obvious because the function works fine for positive inputs.  This makes it an uncommon type of bug.