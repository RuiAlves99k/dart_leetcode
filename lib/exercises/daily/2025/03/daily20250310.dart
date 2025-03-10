/// https://leetcode.com/problems/count-of-substrings-containing-every-vowel-and-k-consonants-ii
/// You are given a string word and a non-negative integer k.
///
/// Return the total number of substrings of word that contain every vowel ('a', 'e', 'i', /'o', and 'u') at least once and exactly k consonants.
///
///
///
/// Example 1:
///
/// Input: word = "aeioqq", k = 1
///
/// Output: 0
///
/// Explanation:
///
/// There is no substring with every vowel.
///
/// Example 2:
///
/// Input: word = "aeiou", k = 0
///
/// Output: 1
///
/// Explanation:
///
/// The only substring with every vowel and zero consonants is word[0..4], which is "aeiou".
///
/// Example 3:
///
/// Input: word = "ieaouqqieaouqq", k = 1
///
/// Output: 3
///
/// Explanation:
///
/// The substrings with every vowel and one consonant are:
///
/// word[0..5], which is "ieaouq".
/// word[6..11], which is "qieaou".
/// word[7..12], which is "ieaouq".
class Daily20250310 {
  int countOfSubstrings(String word, int k) {
    return substrings(word, k) - substrings(word, k - 1);
  }

  int substrings(String word, int k) {
    if (k == -1) return 0;
    int res = 0, uniqueVowels = 0, vowels = 0;
    Map<String, int> vowelLastSeen = {};

    for (int l = 0, r = 0; r < word.length; r++) {
      if (isVowel(word[r])) {
        vowels++;
        if (!vowelLastSeen.containsKey(word[r]) ||
            vowelLastSeen[word[r]]! < l) {
          uniqueVowels++;
        }
        vowelLastSeen[word[r]] = r;
      }

      while (r - l + 1 - vowels > k) {
        if (isVowel(word[l])) {
          vowels--;
          if (vowelLastSeen[word[l]] == l) {
            uniqueVowels--;
          }
        }
        l++;
      }

      if (uniqueVowels == 5) {
        final minVowelLastSeen =
            vowelLastSeen.values.toList().reduce((value, element) {
          if (value < element) return value;
          return element;
        });
        res += minVowelLastSeen - l + 1;
      }
    }
    return res;
  }

  bool isVowel(String letter) {
    return "aeiou".contains(letter);
  }
}
