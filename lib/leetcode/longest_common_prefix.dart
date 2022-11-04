class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty || strs[0] == "") {
      return "";
    }

    // Loop through the letters of the first word
    for (var i = 0; i <= strs[0].length; i++) {
      // Check if this character is present in the same position of every string
      if (!strs.every((string) => string[i] == strs[0][i])) {
        // If not, return the string up to and including the previous character
        return strs[0].substring(0, i);
      }
    }

    return strs[0];
  }
}
