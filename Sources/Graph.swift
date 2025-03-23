import Raylib

internal struct Graph {
  var graphDimensions: Rectangle = Rectangle(x: 10, y: 25, width: 200, height: 200)
  var itemWidth: Int32 = 25
  var itemSpacing: Float
  var itemCount: Int32
  var cellSize: Vector2
  var labels: [String]

  init(
    itemCount: Int32,
    cellSize: Vector2 = Vector2(x: 200 / 20, y: 200 / 20),
    labels: [String]
  ) {
    self.itemSpacing = Float(itemWidth) * 0.76
    self.itemCount = itemCount
    self.cellSize = cellSize
    self.labels = labels
  }

  @inline(__always)
  @inlinable
  var canDraw: Bool {
    Float(self.labels.count) * self.cellSize.x == self.graphDimensions.width
  }
}
