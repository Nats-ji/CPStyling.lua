### Functions
```lua
--set all style colors from the cpc.lua
setThemeBegin()
-- ImGui.Begin("I'm a window")
-- ImGui.End()
setThemeEnd()

colorBegin(style, color)
-- Same as ImGui.PushStyleColor(ImGuiCol.style, r, g, b, a)
-- style (string):                       style = "Text"
-- color can be rgb (table):             color = { 0.40 , 0.17 , 0.12 }
-- color can be rgba (table):            color = { 0.40 , 0.17 , 0.12 , 0.5 }
-- color can be hex (string):            color = "672b1f"
-- color can be hex with alpha (table):  color = { "672b1f", 0.5 }
colorEnd(count) --Same as ImGui.PopStyleColor(count)

---Example---
colorBegin("Button", { 1, 0, 0, 1 })
colorBegin("Button", "672b1f")
colorBegin("Button", CPC.Button)  -- get color from cpc.lua
ImGui.Button("I'm a Button")
colorEnd(1)

styleBegin(style, var1)
styleBegin(style, var1, var2)
-- Same as ImGui.PushStyleVar(ImGuiStyleVar.style, var1, var2)
-- style (string):              style = "ChildRounding"
-- var1 (float), var2 (float)
styleEnd(count)  -- Same as ImGui.PopStyleVar(count)

---Example---
styleBegin("FrameBorderSize", 5)
ImGui.Button("I'm a bordered button", 200, 30)
styleEnd(1)



press = CPButton(label)
press = CPButton(label, sizex, sizey)
-- label (string), sizex (float), sizey (float)
-- Retures press (bool)

---Example---
btn1 = CPButton("Btn1")
btn2 = CPButton("Btn2", 50, 30)
```

### Styles
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
