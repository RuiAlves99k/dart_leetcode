import 'dart:math';

/// https://leetcode.com/problems/check-if-the-rectangle-corner-is-reachable/
/// You are given two positive integers xCorner and yCorner, and a 2D array circles, where circles[i] = [xi, yi, ri] denotes a circle with center at (xi, yi) and radius ri.
///
/// There is a rectangle in the coordinate plane with its bottom left corner at the origin and top right corner at the coordinate (xCorner, yCorner). You need to check whether there is a path from the bottom left corner to the top right corner /// such that the entire path lies inside the rectangle, does not touch or lie inside any circle, and touches the rectangle only at the two corners.
///
/// Return true if such a path exists, and false otherwise.
///
///
///
/// Example 1:
///
/// Input: xCorner = 3, yCorner = 4, circles = [[2,1,1]]
/// Output: true
/// [assets/check_if_rectangle_corner_is_reachable/example2circle1.png]
/// The black curve shows a possible path between (0, 0) and (3, 4).
///
/// Example 2:
///
/// Input: xCorner = 3, yCorner = 3, circles = [[1,1,2]]
/// Ouput: false
/// [assets/check_if_rectangle_corner_is_reachable/example1circle.png]
/// No path exists from (0, 0) to (3, 3).
///
/// Example 3:
/// Input: xCorner = 3, yCorner = 3, circles = [[2,1,1],[1,2,1]]
/// Output: false
/// ![Example 3](/assets/check_if_rectangle_corner_is_reachable/example0circle.png)
/// No path exists from (0, 0) to (3, 3).
class CheckIfRectangleCornerIsReachable {
  List<bool> visited = [];
  List<List<int>> circles = [];
  int xCorner = 0, yCorner = 0;

  bool canReachCorner(int xCorner, int yCorner, List<List<int>> circles) {
    // Initialize variables
    int n = circles.length;
    this.circles = circles;
    this.xCorner = xCorner;
    this.yCorner = yCorner;
    visited = List.generate(n, (i) => false);

    // for every circle
    for (int i = 0; i < n; i++) {
      final circle = circles[i];
      int x = circle[0], y = circle[1], r = circle[2];
      // Check whether the circle is inside the origin (0,0) and the corner (xCorner, yCorner)
      if (_inCircle(0, 0, x, y, r) || _inCircle(xCorner, yCorner, x, y, r)) {
        return false;
      }
      if (!visited[i] && _crossLeftTop(x, y, r) && _dfs(i)) {
        return false;
      }
    }
    return true;
  }

  /// This function checks whether the vertex (x,y)
  /// is inside the circle with origin (circleX, circleY) with radius r
  bool _inCircle(int x, int y, int circleX, int circleY, int r) {
    return pow((x - circleX), 2) + pow((y - circleY), 2) <= pow(r, 2);
  }

  /// This function checks whether the circle with origin (circleX, circleY)
  /// with radius r is crossing the left or top side of the square
  bool _crossLeftTop(int circleX, int circleY, int r) {
    final bool a = circleX.abs() <= r && (circleY >= 0 && circleY <= yCorner);
    final bool b =
        (circleY - yCorner).abs() <= r && (circleX >= 0 && circleX <= xCorner);
    return a || b;
  }

  /// This function checks whether the circle with origin (ci
  bool _crossRightBottom(int circleX, int circleY, int r) {
    final bool a =
        (circleX - xCorner).abs() <= r && (circleY >= 0 && circleY <= yCorner);
    final bool b = circleY.abs() <= r && (circleX >= 0 && circleX <= xCorner);
    return a || b;
  }

  bool _dfs(int i) {
    final circle = circles[i];
    int x1 = circle[0], y1 = circle[1], r1 = circle[2];
    if (_crossRightBottom(x1, y1, r1)) {
      return true;
    }
    visited[i] = true;
    for (int j = 0; j < circles.length; j++) {
      final circle2 = circles[j];
      int x2 = circle2[0], y2 = circle2[1], r2 = circle2[2];
      if (visited[j]) {
        continue;
      }
      if (pow((x1 - x2), 2) + pow((y1 - y2), 2) > pow(r1 + r2, 2)) {
        continue;
      }
      if (x1 * r2 + x2 * r1 < (r1 + r2) * xCorner &&
          y1 * r2 + y2 * r1 < (r1 + r2) * yCorner &&
          _dfs(j)) {
        return true;
      }
    }
    return false;
  }
}
