function foo(x: int): int {
  if (x < 0) {
    return -1; // Or throw an exception
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5);
}

This corrected version explicitly handles the case of negative input by returning -1 (or an exception could be thrown) instead of allowing the recursion to continue indefinitely.