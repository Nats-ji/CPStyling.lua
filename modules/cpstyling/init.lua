-- MIT License
--
-- CPStyling.lua https://github.com/Nats-ji/CPStyling.lua
--
-- This file is a part of CPStyling.lua
--
-- Copyright (c) 2021 Mingming Cui
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

local CPStyle = {}
local styles = require("modules/cpstyling/styles")
local ImGuiStyleNames = styles.ImGuiStyleNames
CPStyle.color = styles.color

local png = require("modules/png-lua/png")

local function ToImGuiStyleName(style, which)
	if which == "Col" then
		for i in pairs(ImGuiStyleNames.Col) do
			if style == ImGuiStyleNames.Col[i].ImGuiStyleShort then
				return ImGuiStyleNames.Col[i].ImGuiStyle
			end
		end
	elseif which == "Var" then
		for i in pairs(ImGuiStyleNames.Var) do
			if style == ImGuiStyleNames.Var[i].ImGuiStyleShort then
				return ImGuiStyleNames.Var[i].ImGuiStyle
			end
		end
	end
end

local function hex2rgb(hex)
    local hex = hex:gsub("#","")
    if hex:len() == 3 then
      return (tonumber("0x"..hex:sub(1,1))*17)/255, (tonumber("0x"..hex:sub(2,2))*17)/255, (tonumber("0x"..hex:sub(3,3))*17)/255
    else
      return tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255
    end
end

local function loadTheme(theme)
	local chunk = loadfile("themes/"..theme..".lua") -- Need to convert to json
	return chunk()
end

function CPStyle:New(mod_name)
	local o = {}
	if mod_name then
		o.theme = loadTheme(mod_name)
	else
		o.theme = loadTheme("default")
	end
	setmetatable(o, self)
	self.__index = self
	return o
end

function CPStyle.colorBegin(style, color)
  if type(color) == "number" then
    ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color)
	elseif type(color) == "string" then
		local r, g, b = hex2rgb(color)
		ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), r, g, b, 1)
	elseif type(color) == "table" then
		if type(color[1]) == "string" and type(color[2]) == "number" then
			local r, g, b = hex2rgb(color[1])
			ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), r, g, b, color[2])
		elseif type(color[1]) == "number" and type(color[2]) == "number" and type(color[3]) == "number" then
			if color[4] == nil then
				ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color[1], color[2], color[3], 1)
			else
				ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color[1], color[2], color[3], color[4])
			end
		end
	end
end

function CPStyle.colorEnd(count)
  if count == nil then
    ImGui.PopStyleColor()
  else
    ImGui.PopStyleColor(count)
  end
end
--
function CPStyle.styleBegin(style, var1, var2)
	if var2 == nil then
		ImGui.PushStyleVar(ToImGuiStyleName(style, "Var"), var1)
	else
		ImGui.PushStyleVar(ToImGuiStyleName(style, "Var"), var1, var2)
	end
end

function CPStyle.styleEnd(count)
  if count == nil then
    ImGui.PopStyleVar()
  else
    ImGui.PopStyleVar(count)
  end
end

function CPStyle:setThemeBegin()
	CPStyle.colorBegin("Text"                           , self.theme.Text)
	CPStyle.colorBegin("TextDisabled"                   , self.theme.TextDisabled)
	CPStyle.colorBegin("WindowBg"                       , self.theme.WindowBg)
	CPStyle.colorBegin("ChildBg"                        , self.theme.ChildBg)
	CPStyle.colorBegin("PopupBg"                        , self.theme.PopupBg)
	CPStyle.colorBegin("Border"                         , self.theme.Border)
	CPStyle.colorBegin("BorderShadow"                   , self.theme.BorderShadow)
	CPStyle.colorBegin("FrameBg"                        , self.theme.FrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , self.theme.FrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , self.theme.FrameBgActive)
	CPStyle.colorBegin("TitleBg"                        , self.theme.TitleBg)
	CPStyle.colorBegin("TitleBgActive"                  , self.theme.TitleBgActive)
	CPStyle.colorBegin("TitleBgCollapsed"               , self.theme.TitleBgCollapsed)
	CPStyle.colorBegin("MenuBarBg"                      , self.theme.MenuBarBg)
	CPStyle.colorBegin("ScrollbarBg"                    , self.theme.ScrollbarBg)
	CPStyle.colorBegin("ScrollbarGrab"                  , self.theme.ScrollbarGrab)
	CPStyle.colorBegin("ScrollbarGrabHovered"           , self.theme.ScrollbarGrabHovered)
	CPStyle.colorBegin("ScrollbarGrabActive"            , self.theme.ScrollbarGrabActive)
	CPStyle.colorBegin("CheckMark"                      , self.theme.CheckMark)
	CPStyle.colorBegin("SliderGrab"                     , self.theme.SliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , self.theme.SliderGrabActive)
	CPStyle.colorBegin("Button"                         , self.theme.Button)
	CPStyle.colorBegin("ButtonHovered"                  , self.theme.ButtonHovered)
	CPStyle.colorBegin("ButtonActive"                   , self.theme.ButtonActive)
	CPStyle.colorBegin("Header"                         , self.theme.Header)
	CPStyle.colorBegin("HeaderHovered"                  , self.theme.HeaderHovered)
	CPStyle.colorBegin("HeaderActive"                   , self.theme.HeaderActive)
	CPStyle.colorBegin("Separator"                      , self.theme.Separator)
	CPStyle.colorBegin("SeparatorHovered"               , self.theme.SeparatorHovered)
	CPStyle.colorBegin("SeparatorActive"                , self.theme.SeparatorActive)
	CPStyle.colorBegin("ResizeGrip"                     , self.theme.ResizeGrip)
	CPStyle.colorBegin("ResizeGripHovered"              , self.theme.ResizeGripHovered)
	CPStyle.colorBegin("ResizeGripActive"               , self.theme.ResizeGripActive)
	CPStyle.colorBegin("Tab"                            , self.theme.Tab)
	CPStyle.colorBegin("TabHovered"                     , self.theme.TabHovered)
	CPStyle.colorBegin("TabActive"                      , self.theme.TabActive)
	CPStyle.colorBegin("TabUnfocused"                   , self.theme.TabUnfocused)
	CPStyle.colorBegin("TabUnfocusedActive"             , self.theme.TabUnfocusedActive)
	-- CPStyle.colorBegin("PlotLines"                      , self.theme.PlotLines)
	-- CPStyle.colorBegin("PlotLinesHovered"               , self.theme.PlotLinesHovered)
	-- CPStyle.colorBegin("PlotHistogram"                  , self.theme.PlotHistogram)
	-- CPStyle.colorBegin("PlotHistogramHovered"           , self.theme.PlotHistogramHovered)
	-- CPStyle.colorBegin("TableHeaderBg"                  , self.theme.TableHeaderBg)
	-- CPStyle.colorBegin("TableBorderStrong"              , self.theme.TableBorderStrong)
	-- CPStyle.colorBegin("TableBorderLight"               , self.theme.TableBorderLight)
	-- CPStyle.colorBegin("TableRowBg"                     , self.theme.TableRowBg)
	-- CPStyle.colorBegin("TableRowBgAlt"                  , self.theme.TableRowBgAlt)
	CPStyle.colorBegin("TextSelectedBg"                 , self.theme.TextSelectedBg)
	-- CPStyle.colorBegin("DragDropTarget"                 , self.theme.DragDropTarget)
	CPStyle.colorBegin("NavHighlight"                   , self.theme.NavHighlight)
	CPStyle.colorBegin("NavWindowingHighlight"          , self.theme.NavWindowingHighlight)
	CPStyle.colorBegin("NavWindowingDimBg"              , self.theme.NavWindowingDimBg)
	CPStyle.colorBegin("ModalWindowDimBg"               , self.theme.ModalWindowDimBg)
  CPStyle.styleBegin("WindowRounding"                 , 0)
	CPStyle.styleBegin("ScrollbarSize"                  , 9)
end

function CPStyle:setThemeEnd()
	CPStyle.styleEnd(2)
	CPStyle.colorEnd(43)
end

function CPStyle:setFrameThemeBegin()
	CPStyle.colorBegin("FrameBg"                        , self.theme.CPFrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , self.theme.CPFrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , self.theme.CPFrameBgActive)
	CPStyle.colorBegin("SliderGrab"                     , self.theme.CPSliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , self.theme.CPSliderGrabActive)
	CPStyle.colorBegin("Border"                         , self.theme.CPFrameBorder)
	CPStyle.colorBegin("TextSelectedBg"                 , self.theme.CPTextSelectedBg)
	CPStyle.styleBegin("FrameBorderSize"                , 1)
end

function CPStyle:setFrameThemeEnd()
	CPStyle.styleEnd(1)
	CPStyle.colorEnd(7)
end

-- CPButton

function CPStyle:CPButton(label, sizex, sizey)
	local press, hovered
	ImGui.BeginGroup()
	CPStyle.styleBegin("FrameBorderSize", 1)
	CPStyle.colorBegin("Button", self.theme.CPButton)
	CPStyle.colorBegin("ButtonHovered", self.theme.CPButtonHovered)
	CPStyle.colorBegin("ButtonActive", self.theme.CPButtonActive)
	CPStyle.colorBegin("Text", self.theme.CPButtonText)
	CPStyle.colorBegin("Border", self.theme.CPButtonBorder)
	if sizex == nil or sizey == nil then
		press = ImGui.Button(label)
	else
		press = ImGui.Button(label, sizex, sizey)
	end
	CPStyle.colorEnd(5)
	hovered = ImGui.IsItemHovered()
	if hovered then
		ImGui.SameLine(0.0001)
		CPStyle.colorBegin("Border", self.theme.CPButtonBorderHovered)
		CPStyle.colorBegin("Text", self.theme.Hidden)
		CPStyle.colorBegin("Button", self.theme.Hidden)
		if sizex == nil or sizey == nil then
			ImGui.Button(label.."##hovered")
		else
			ImGui.Button(label.."##hovered", sizex, sizey)
		end
		CPStyle.colorEnd(3)
	end
	CPStyle.styleEnd(1)
	ImGui.EndGroup()
	return press
end

-- CPToggle

function CPStyle:CPToggle(label, label_off, label_on, value, sizex, sizey)
	local press_off, press_on, hovered, press
	ImGui.BeginGroup()
	local posx, posy = ImGui.GetCursorPos()
	CPStyle.styleBegin("FrameBorderSize", 1)
	ImGui.BeginGroup()
	if value then
		CPStyle.colorBegin("Button", self.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Text", self.theme.CPToggleOffDisabledText)
		CPStyle.colorBegin("ButtonHovered", self.theme.CPToggleOffDisabledHovered)
		CPStyle.colorBegin("ButtonActive", self.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Border", self.theme.CPToggleOffDisabledBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-1,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2+1)
		CPStyle.colorBegin("Button", self.theme.CPToggleOn)
		CPStyle.colorBegin("Text", self.theme.CPToggleOnText)
		CPStyle.colorBegin("ButtonHovered", self.theme.CPToggleOnHovered)
		CPStyle.colorBegin("ButtonActive", self.theme.CPToggleOn)
		CPStyle.colorBegin("Border", self.theme.CPToggleOnBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-1, sizey)
		ImGui.PopStyleColor(5)

	else
		CPStyle.colorBegin("Button", self.theme.CPToggleOff)
		CPStyle.colorBegin("Text", self.theme.CPToggleOffText)
		CPStyle.colorBegin("ButtonHovered", self.theme.CPToggleOffHovered)
		CPStyle.colorBegin("ButtonActive", self.theme.CPToggleOff)
		CPStyle.colorBegin("Border", self.theme.CPToggleOffBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-1,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2+1)
		CPStyle.colorBegin("Button", self.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Text", self.theme.CPToggleOnDisabledText)
		CPStyle.colorBegin("ButtonHovered", self.theme.CPToggleOnDisabledHovered)
		CPStyle.colorBegin("ButtonActive", self.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Border", self.theme.CPToggleOnDisabledBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-1, sizey)
		ImGui.PopStyleColor(5)
	end

	if press_off and value == false then
		value = true
	elseif press_off and value == true then
		value = false
	elseif press_on and value == true then
		value = false
	elseif press_on and value == false then
		value = true
	end
	if press_off or press_on then press = true else press = false end
	ImGui.EndGroup()
	hovered = ImGui.IsItemHovered()

	if hovered then --show hovered border color and text color
		ImGui.SetCursorPos(posx, posy)
		ImGui.BeginGroup()
		if value then
			CPStyle.colorBegin("Border", self.theme.CPToggleOffDisabledBorderHovered)
			CPStyle.colorBegin("Button", self.theme.CPToggleOffDisabledHovered)
			CPStyle.colorBegin("Text", self.theme.CPToggleOffDisabledTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-1,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2+1)
			CPStyle.colorBegin("Border", self.theme.CPToggleOnBorderHovered)
			CPStyle.colorBegin("Button", self.theme.CPToggleOnHovered)
			CPStyle.colorBegin("Text", self.theme.CPToggleOnTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-1, sizey)
			ImGui.PopStyleColor(3)

		else
			CPStyle.colorBegin("Border", self.theme.CPToggleOffBorderHovered)
			CPStyle.colorBegin("Button", self.theme.CPToggleOffHovered)
			CPStyle.colorBegin("Text", self.theme.CPToggleOffTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-1,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2+1)
			CPStyle.colorBegin("Border", self.theme.CPToggleOnDisabledBorderHovered)
			CPStyle.colorBegin("Button", self.theme.CPToggleOnDisabledHovered)
			CPStyle.colorBegin("Text", self.theme.CPToggleOnDisabledTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-1, sizey)
			ImGui.PopStyleColor(3)
		end
		ImGui.EndGroup()
	end
	CPStyle.styleEnd(1)
  if label ~= nil and label ~= "" and label:match("^##") == nil then
  	CPStyle.colorBegin("Button", self.theme.Hidden)
  	CPStyle.colorBegin("ButtonHovered", self.theme.Hidden)
  	CPStyle.colorBegin("ButtonActive", self.theme.Hidden)
  	CPStyle.styleBegin("FrameBorderSize", 0)
  	CPStyle.styleBegin("ButtonTextAlign", 0, 0.5)
  	ImGui.SameLine(sizex)
  	ImGui.Button(label, 0, sizey)
  	CPStyle.styleEnd(2)
  	CPStyle.colorEnd(3)
  end
	ImGui.EndGroup()
	return value, press
end

function CPStyle:CPToolTip1Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", self.theme.Hidden)
	CPStyle.colorBegin("ChildBg", self.theme.CPFrameBg)
	ImGui.BeginTooltip()
	CPStyle:CPRect("##SideRect", 8, sizey, self.theme.CPFrameBg, self.theme.CPFrameBorder, 1, 0)
	ImGui.SameLine(20)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTipMain", sizex, sizey, true)
end

function CPStyle:CPToolTip1End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(2)
	CPStyle.styleEnd(3)
end

function CPStyle:CPToolTip2Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", self.theme.Hidden)
	CPStyle.colorBegin("ChildBg", self.theme.CPToolTip2Bg)
	CPStyle.colorBegin("Border", self.theme.CPToolTip2Border)
	CPStyle.colorBegin("Separator", self.theme.CPToolTip2Separator)
	ImGui.BeginTooltip()
	CPStyle:CPRect("##SideRect", 8, sizey, self.theme.CPToolTip2SideBg, self.theme.CPToolTip2Border, 1, 0)
	ImGui.SameLine(16)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTip2Main", sizex, sizey, true)
end

function CPStyle:CPToolTip2End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(4)
	CPStyle.styleEnd(3)
end

function CPStyle:CPRect(label, sizex, sizey, color, border_color, border_size, border_rounding, textalignx, textaligny)
	if border_color == nil then border_color = self.theme.Border end
	if border_size == nil then border_size = 0 end
	if border_rounding == nil then border_rounding = 0 end
	if textalignx == nil then textalignx = 0.5 end
	if textaligny == nil then textaligny = 0.5 end
	CPStyle.colorBegin("Border", border_color)
	CPStyle.colorBegin("Button", color)
	CPStyle.colorBegin("ButtonActive", color)
	CPStyle.colorBegin("ButtonHovered", color)
	CPStyle.styleBegin("FrameBorderSize", border_size)
	CPStyle.styleBegin("FrameRounding", border_rounding)
	CPStyle.styleBegin("ButtonTextAlign", textalignx, textaligny)
	local press = ImGui.Button(label, sizex, sizey)
	CPStyle.styleEnd(3)
	CPStyle.colorEnd(4)
	return press
end

function CPStyle:CPRect2(label, sizex, sizey, color)
	CPStyle.colorBegin("ChildBg", color)
	ImGui.BeginChild(label, sizex, sizey)
  ImGui.EndChild()
	CPStyle.colorEnd(1)
end

function CPStyle:CPDraw(name, image, scale)
  ImGui.BeginGroup()
  local basex, basey = ImGui.GetCursorPos()
  local pixelx = 1
  local pixely = 1
  local cursorx = basex
  local cursory = basey
  local totalPixel = image.width*image.height
  for i = 1, totalPixel do
    ImGui.SetCursorPos(cursorx, cursory)
    if image.pixels[pixely][pixelx][4] ~= 0 then
      CPStyle:CPRect2("##"..name..i, scale*1.2, scale*1.2, image.pixels[pixely][pixelx])
    end
    pixelx = pixelx + 1
    if pixelx > image.width then pixelx = 1 pixely = pixely + 1 end
    cursorx = basex+(pixelx-1)*scale
    cursory = basey+(pixely-1)*scale
  end
  ImGui.EndGroup()
end

function CPStyle:CPDraw2(drawlist, posX, posY, image, scale)
  ImGui.BeginGroup()
  local pixelx = 1
  local pixely = 1
  local cursorx = posX
  local cursory = posY
  local totalPixel = image.width*image.height
  for i = 1, totalPixel do
    if image.pixels[pixely][pixelx][4] ~= 0 then
			ImGui.ImDrawListAddRectFilled(drawlist, cursorx, cursory, cursorx+scale, cursory+scale, ImGui.GetColorU32(table.unpack(image.pixels[pixely][pixelx])))
    end
    pixelx = pixelx + 1
    if pixelx > image.width then pixelx = 1 pixely = pixely + 1 end
    cursorx = posX+(pixelx-1)*scale
    cursory = posY+(pixely-1)*scale
  end
  ImGui.EndGroup()
end

function CPStyle.loadPNG(image)
  local imgraw = png(image)
  local img = {}
  local x = {}
  local y = {}
  img.width = imgraw.width
  img.height = imgraw.height
  for i in pairs(imgraw.pixels) do
    for t in pairs(imgraw.pixels[i]) do
      y[t] = { imgraw.pixels[i][t].R/255, imgraw.pixels[i][t].G/255, imgraw.pixels[i][t].B/255, imgraw.pixels[i][t].A/255 }
    end
    x[i] = y
    y = {}
  end
  img.pixels = x
  return img
end

CPStyle.Input = { enable = false }

function CPStyle.Input:Enable(state)
	if state == nil then
		self.enable = not self.enbale
	else
		self.enable = state
	end
end

function CPStyle.Input:Register()
	if self.enable then
		CPS.colorBegin("WindowBg", CPStyle.color.hidden)
		CPS.colorBegin("FrameBg", CPStyle.color.hidden)
		CPS.colorBegin("Text", CPStyle.color.hidden)
		CPS.colorBegin("NavHighlight", CPStyle.color.hidden)
		CPS.colorBegin("Border", CPStyle.color.hidden)
		ImGui.Begin("##CPStyle.Input", ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoResize)
		ImGui.SetKeyboardFocusHere()
		self.keypress, self.pressed = ImGui.InputText("##keyboardinput", "", 100)
		if self.pressed then ImGui.SetKeyboardFocusHere() end
		ImGui.InputText("##dummy", "", 100)
		ImGui.End()
		CPS.colorEnd(5)
	end
end

function CPStyle.Input:GetKeyPress()
	if self.keypress == "" then
		return nil
	else
		return self.keypress
	end
end

return CPStyle
