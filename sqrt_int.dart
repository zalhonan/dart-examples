void main() {
  print('${mySqrt(8)}, 2');
  print('${mySqrt(4)}, 2');
  print('${mySqrt(16)}, 4');
  print('${mySqrt(81)}, 9');
  print('${mySqrt(82)}, 9');
}

int mySqrt(int x) {
  if (x == 0) {
    return 0;
  }
  int left = 1;
  int right = x;
  int ans = 1;
  int mid;
  while (left <= right) {
    mid = ((right + left) / 2).truncate();
    if (mid <= (x / mid).truncate()) {
      left = mid + 1;
      ans = mid;
    } else {
      right = mid - 1;
    }
  }
  return ans;
}
