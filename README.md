<a href="https://www.buymeacoffee.com/mingm"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=mingm&button_colour=FF5F5F&font_colour=ffffff&font_family=Comic&outline_colour=000000&coffee_colour=FFDD00" width="180px"></a>

# CPStyling.lua

This project can be found at https://github.com/Nats-ji/CPStyling.lua

### What is this
Made for Cyber Engine Tweaks Mod creation.
This is a set of color schemes and widgets I made to match the style of Cyberpunk 2077's UI.
I also included some useful functions for easier and faster ImGui styling.


Please make PR if you want to fix bugs or make improvements
### How to use

1. Add this library to your mod's requirements list [[Github]](https://github.com/Nats-ji/CPStyling.lua/releases/latest) | [[Nexus]](https://www.nexusmods.com/users/106335388?tab=user+files)
(You do not need to include this lib in your mod) 
2. Require CPStyling
   ```lua
   CPS = GetMod("CPStyling"):New() -- Read below to learn how to use custom theme
   theme = CPS.theme
   color = CPS.color
   ```

 \*This project is still WIP, will add more widgets. You can also download the demo to play with it yourself.

![Imgur](https://i.imgur.com/fe3cd4w.png)

### Projects using this library
| CP77-TetrisArcade [[Nexus]](https://www.nexusmods.com/cyberpunk2077/mods/1118) \| [[Github]](https://github.com/justarandomguyintheinternet/cp77_arcade_tetris) | CP77-Braindance Protocol [[Nexus]](https://www.nexusmods.com/cyberpunk2077/mods/616) \| [[Github]](https://github.com/WolvenKit/BraindanceProtocol) |
| ------------------ | ------------------ |
| ![Imgur](https://i.imgur.com/zrhar0j.png) | ![Imgur](https://i.imgur.com/bVqLG7c.png) |

### Custom theme
1. To use custom theme, you need to put your mod's name in `GetMod("CPStyling"):New("your_mod_name")`
   ```lua
   CPS = GetMod("CPStyling"):New("your_mod_name")
   ```
2. Duplicate `./themes/default.lua` and rename it to `your_mod_name.lua`
3. Change the color scheme in `your_mod_name.lua` as you like
4. Package your mod like this:
   ```
   .\bin\x64\plugins\cyber_engine_tweaks\mods\
   ├─ CPStyling
   │   └─ themes
   │       └─ your_mod_name.lua
   └─ your_mod_name
       ├─ init.lua
       └─ ...
   ```

### Utilities
```lua
--Setup the style for a new window and it's content.
CPS:setThemeBegin()
-- ImGui.Begin("I'm a window")
-- ImGui.End()
CPS:setThemeEnd()

--Setup the style for frame items (Checkbox, Combobox, Inputbox, etc.),
--Needs to be put inside ImGui.Begin() and ImGui.End() or window's title will also be bordered.
CPS:setFrameThemeBegin()
CPS:setFrameThemeEnd()

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
CPS.colorBegin("Button", theme.Button)  -- get color from theme.lua
CPS.colorBegin("Button", color.blue)  -- get color from styles.lua
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
press = CPS:CPButton(label)
press = CPS:CPButton(label, sizex, sizey)
-- label (string), sizex (float), sizey (float)
-- Returns press (bool)

---Example---
btn1 = CPS:CPButton("Btn1")
btn2 = CPS:CPButton("Btn2", 50, 30)
```
CPToggle:

![Imgur](https://i.imgur.com/gTwpaLY.gif)
```lua
value, press = CPS:CPToggle(label, label_on, label_off, value, sizex, sizey)
-- label (string), label_on (string), label_off (string), value (bool), sizex (float), sizey (float)
-- Returns value (bool), press (bool)

---Example---
value, press = CPS:CPToggle("Toggle godmode", "OFF", "ON", value, 180, 0)
```
CPToolTip:

![Imgur](https://i.imgur.com/i467ORZ.gif)
```lua
CPS:CPToolTip1Begin(sizex, sizey)
-- ImGui.Text("This is a CPToolTip1")
CPS:CPToolTip1End()

CPS:CPToolTip2Begin(sizex, sizey)
-- ImGui.Text("This is a CPToolTip2")
CPS:CPToolTip2End()
```
CPRect:

![Imgur](https://i.imgur.com/M5FHWtb.png)
```lua
press = CPS:CPRect1(label, sizex, sizey, color, border_color [O], border_size [O], border_rounding [O], textalignx [O], textaligny [O])
-- lable (string), sizex (float), sizey (float), color (any format), border_color (any format)
-- border_size (float), border_rounding (float), textalignx (float), textaligny (float)
-- Returns press (bool)

CPS:CPRect2(text_id, sizex, sizey, color)
-- text_id (string), sizex (float), sizey(float), color (any format)
-- Faster than CPRect1 but without return value.
-- Also used in CPS.CPDraw()

---Example---
-- Draw a red 50x50 Circle
CPS:CPRect1("##circle", 50, 50, {0,0,0,0}, color.red, 5, 25)
-- Draw a green rounded rectangle with a brown border and text inside aligned to the right.
CPS:CPRect1("I'm the text", 150, 50, color.green, color.brown, 3, 10, 1, 0.5)
```
loadPNG and CPDraw:

![img](https://github.com/Nats-ji/CPStyling.lua/raw/master/.image/cpdraw.gif)

```lua
-- Load a png image from file
file = io.open(path_to_png, "rb")
image = CPS.loadPNG(file)
file:close()
-- Return image = { wdith = int, height = int, pixels = {
                                                         [1]:{
                                                              [1]:{ R, G, B, A },
                                                              [2]:{ R, G, B, A },
                                                              ......
                                                              },
                                                         [2]:{
                                                              ......
                                                              },
                                                         .....
                                                          }
-- Draw the png image
CPS:CPDraw(text_id, image, scale)
-- text_id (string), image (table), scale (number)

---Example---
file = io.open("./images/logo.png", "rb")
image = CPS.loadPNG(file)
file:close()
CPS:CPDraw("logo", image, 5)
```

### Color Names
```lua
"red"
"cyan"
"blue"
"darkblue"
"lightblue"
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
"hidden"
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
