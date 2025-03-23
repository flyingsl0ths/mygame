import MyLib
import Raylib

let screenWidth: Int32 = 800
let screenHeight: Int32 = 450

Raylib.initWindow(screenWidth, screenHeight, "MyGame")
Raylib.setTargetFPS(60)
while Raylib.windowShouldClose == false {
  Raylib.beginDrawing()
  Raylib.clearBackground(.rayWhite)
  Raylib.drawText("Hello, world!", 425, 25, 25, .darkGray)
  Raylib.endDrawing()
}
Raylib.closeWindow()
