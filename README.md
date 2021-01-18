### What is this
Made for Cyber Engine Tweaks Mod creation.
This is a set of color schemes and widgets I made to match the style of Cyberpunk 2077's UI.
I also included some useful functions for easier and faster ImGui styling.

### How to use
```lua
CPS = require "cpstyling"
theme = CPS.theme
color = CPS.color
```
Still WIP, will add more widgets. You can also download the demo to play with it yourself.

![Imgur](https://i.imgur.com/fe3cd4w.png)

### Utilities
```lua
--Setup the style for a new window and it's content.
-- ImGui.Begin("I'm a window")
-- ImGui.End()
CPS.setThemeEnd()

--Setup the style for frame items (Checkbox, Combobox, Inputbox, etc.),
--Needs to be put bellow ImGui.Begin() or window's title will also be bordered.
CPS.setFrameThemeBegin()
CPS.setFrameThemeEnd()

--Same as ImGui.PushStyleColor(ImGuiCol.style, r, g, b, a), but can take any color format.
CPS.colorBegin(style, color)
-- style (string):                       style = "Text"
-- color can be u32 (number):            color = 0x00000000
-- color can be rgb (table):             color = { 0.40 , 0.17 , 0.12 }
-- color can be rgba (table):            color = { 0.40 , 0.17 , 0.12 , 0.5 }
-- color can be hex (string):            color = "#672b1f"  color = "672b1f"
-- color can be hex with alpha (table):  color = { "672b1f", 0.5 }
CPS.colorEnd(count) --Same as ImGui.PopStyleColor(count)

---Example---
CPS.colorBegin("Button", { 1, 0, 0, 1 })
CPS.colorBegin("Button", "672b1f")
CPS.colorBegin("Button", CPC.Button)  -- get color from cpc.lua
ImGui.Button("I'm a Button")
CPS.colorEnd(1)

--Same as ImGui.PushStyleVar()
CPS.styleBegin(style, var1)
CPS.styleBegin(style, var1, var2)
-- Same as ImGui.PushStyleVar(ImGuiStyleVar.style, var1, var2)
-- style (string):              style = "ChildRounding"
-- var1 (float), var2 (float)
CPS.styleEnd(count)  -- Same as ImGui.PopStyleVar(count)

---Example---
CPS.styleBegin("FrameBorderSize", 5)
ImGui.Button("I'm a bordered button", 200, 30)
CPS.styleEnd(1)
```
### Cyberpunk Style Widgets

CPButton:

![Imgur](https://i.imgur.com/4neA19J.gif)
```lua
press = CPS.CPButton(label)
press = CPS.CPButton(label, sizex, sizey)
-- label (string), sizex (float), sizey (float)
-- Returns press (bool)

---Example---
btn1 = CPS.CPButton("Btn1")
btn2 = CPS.CPButton("Btn2", 50, 30)
```
CPToggle:

![Imgur](https://i.imgur.com/gTwpaLY.gif)
```lua
value, press = CPS.CPToggle(label, label_on, label_off, value, sizex, sizey)
-- label (string), label_on (string), label_off (string), value (bool), sizex (float), sizey (float)
-- Returns value (bool), press (bool)

---Example---
value, press = CPS.CPToggle("Toggle godmode", "OFF", "ON", value, 180, 0)
```
CPToolTip:

![Imgur](https://i.imgur.com/i467ORZ.gif)
```lua
CPS.CPToolTip1Begin(sizex, sizey)
-- ImGui.Text("This is a CPToolTip1")
CPS.CPToolTip1End()

CPS.CPToolTip2Begin(sizex, sizey)
-- ImGui.Text("This is a CPToolTip2")
CPS.CPToolTip2End()
```
CPRect:

![Imgur](https://i.imgur.com/M5FHWtb.png)
```lua
press = CPS.CPRect(label, sizex, sizey, color, border_color [O], border_size [O], border_rounding [O], textalignx [O], textaligny [O])
-- lable (string), sizex (float), sizey (float), color (any format), border_color (any format)
-- border_size (float), border_rounding (float), textalignx (float), textaligny (float)
-- Returns press (bool)

---Example---
-- Draw a red 50x50 Circle
CPS.CPRect("##circle", 50, 50, {0,0,0,0}, color.red, 5, 25)
-- Draw a green rounded rectangle with a brown border and text inside aligned to the right. 
CPS.CPRect("I'm the text", 150, 50, color.green, color.brown, 3, 10, 1, 0.5)
```

### Color Names
```lua
"red"
"cyan"
"blue"
"darkBlue"
"lightBlue"
"purple"
"yellow"
"lime"
"magenta"
"white"
"silver"
"grey"
"black"
"orange"
"brown"
"maroon"
"green"
"olive"
```


### ImGui style names
Color
```lua
"Text"
"TextDisabled"
"WindowBg"
"ChildBg"
"PopupBg"
"Border"
"BorderShadow"
"FrameBg"
"FrameBgHovered"
"FrameBgActive"
"FrameBgDisabled"
"FrameBgHoveredDisabled"
"FrameBgActiveDisabled"
"TitleBg"
"TitleBgActive"
"TitleBgCollapsed"
"MenuBarBg"
"ScrollbarBg"
"ScrollbarGrab"
"ScrollbarGrabHovered"
"ScrollbarGrabActive"
"CheckMark"
"CheckMarkTrueDisabled"
"CheckMarkFalseDisabled"
"SliderGrab"
"SliderGrabActive"
"Button"
"ButtonHovered"
"ButtonActive"
"Header"
"HeaderHovered"
"HeaderActive"
"Separator"
"SeparatorHovered"
"SeparatorActive"
"ResizeGrip"
"ResizeGripHovered"
"ResizeGripActive"
"Tab"
"TabHovered"
"TabActive"
"TabUnfocused"
"TabUnfocusedActive"
"DockingPreview"
"DockingEmptyBg"
"PlotLines"
"PlotLinesHovered"
"PlotHistogram"
"PlotHistogramHovered"
"TextSelectedBg"
"DragDropTarget"
"NavHighlight"
"NavWindowingHighlight"
"NavWindowingDimBg"
"ModalWindowDimBg"
"ModalWindowDarkening"
"COUNT"
```

StyleVar
```lua
"Alpha"
"WindowPadding"
"WindowRounding"
"WindowBorderSize"
"WindowMinSize"
"WindowTitleAlign"
"ChildRounding"
"ChildBorderSize"
"PopupRounding"
"PopupBorderSize"
"FramePadding"
"FrameRounding"
"FrameBorderSize"
"ItemSpacing"
"ItemInnerSpacing"
"IndentSpacing"
"ScrollbarSize"
"ScrollbarRounding"
"GrabMinSize"
"GrabRounding"
"TabRounding"
"SelectableTextAlign"
"ButtonTextAlign"
"COUNT"
```
