class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x != 0 && x % 10 == 0)) {
      return false;
    }
    var reversedNumber = 0;
    while (x > reversedNumber) {
      reversedNumber = reversedNumber * 10 + x % 10;
      x = (x / 10).floor();
    }
    return (x == reversedNumber || x == (reversedNumber / 10).floor())
        ? true
        : false;
  }
}
