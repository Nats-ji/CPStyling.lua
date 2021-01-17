local CPStyle = {}

CPStyle.theme = {
  Text                                        =           { "ff6053" , 1.0 },
  TextDisabled                                =           { "7a6366" , 1.0 },
  WindowBg                                    =           { "0f0a0f" , 0.9 },
  ChildBg                                     =           { "000000" , 0.0 },
  PopupBg                                     =           { "0f0a0f" , 0.9 },
  Border                                      =           { "4d1214" , 1.0 },
  BorderShadow                                =           { "000000" , 0.0 },
  FrameBg                                     =           { "802129" , 0.5 },
  FrameBgHovered                              =           { "521d1e" , 0.5 },
  FrameBgActive                               =           { "802129" , 0.5 },
  -- FrameBgDisabled                          =           { "7a6366" , 1.0 },
  -- FrameBgHoveredDisabled                   =           { "7a6366" , 1.0 },
  -- FrameBgActiveDisabled                    =           { "7a6366" , 1.0 },
  TitleBg                                     =           { "0f0a0f" , 0.9 },
  TitleBgActive                               =           { "0f0a0f" , 0.9 },
  TitleBgCollapsed                            =           { "0f0a0f" , 0.9 },
  MenuBarBg                                   =           { "000000" , 0.0 },
  ScrollbarBg                                 =           { "3a1317" , 1.0 },
  ScrollbarGrab                               =           { "f34c47" , 1.0 },
  ScrollbarGrabHovered                        =           { "f34c47" , 1.0 },
  ScrollbarGrabActive                         =           { "f34c47" , 1.0 },
  CheckMark                                   =           { "ff7066" , 1.0 },
  -- CheckMarkTrueDisabled                    =           { "57383d" , 1.0 },
  -- CheckMarkFalseDisabled                   =           { "7a6366" , 1.0 },
  SliderGrab                                  =           { "a23735" , 1.0 },
  SliderGrabActive                            =           { "a23735" , 1.0 },
  Button                                      =           { "912b29" , 1.0 },
  ButtonHovered                               =           { "732124" , 1.0 },
  ButtonActive                                =           { "912b29" , 1.0 },
  Header                                      =           { "141426" , 1.0 },
  HeaderHovered                               =           { "38a3b0" , 0.3 },
  HeaderActive                                =           { "38a3b0" , 0.5 },
  Separator                                   =           { "431617" , 1.0 },
  SeparatorHovered                            =           { "431617" , 1.0 },
  SeparatorActive                             =           { "431617" , 1.0 },
  ResizeGrip                                  =           { "000000" , 0.0 },
  ResizeGripHovered                           =           { "732124" , 1.0 },
  ResizeGripActive                            =           { "912b29" , 1.0 },
  Tab                                         =           { "912b29" , 1.0 },
  TabHovered                                  =           { "732124" , 1.0 },
  TabActive                                   =           { "912b29" , 1.0 },
  TabUnfocused                                =           { "732322" , 1.0 },
  TabUnfocusedActive                          =           { "932d2a" , 1.0 },
  -- PlotLines                                =           { "000000" , 0.0 },
  -- PlotLinesHovered                         =           { "000000" , 0.0 },
  -- PlotHistogram                            =           { "000000" , 0.0 },
  -- PlotHistogramHovered                     =           { "000000" , 0.0 },
  TextSelectedBg                              =           { "10101e" , 1.0 },
  -- DragDropTarget                           =           { "000000" , 0.0 },
  -- NavHighlight                             =           { "000000" , 0.0 },
  -- NavWindowingHighlight                    =           { "000000" , 0.0 },
  -- NavWindowingDimBg                        =           { "000000" , 0.0 },
  -- ModalWindowDimBg                         =           { "000000" , 0.0 },
  -- ModalWindowDarkening                     =           { "000000" , 0.0 },
  CPButton                                    =           { "10101e" , 1.0 },
  CPButtonHovered                             =           { "6e2220" , 1.0 },
  CPButtonActive                              =           { "912a2a" , 1.0 },
  CPButtonText                                =           { "57f1fa" , 1.0 },
  CPButtonBorder                              =           { "661517" , 1.0 },
  CPButtonBorderHovered                       =           { "57f1fa" , 1.0 },
  CPToggleOn                                  =           { "5ef6ff" , 1.0 },
  CPToggleOnHovered                           =           { "4ac4cc" , 1.0 },
  CPToggleOnText                              =           { "000000" , 1.0 },
  CPToggleOnTextHovered                       =           { "000000" , 1.0 },
  CPToggleOnBorder                            =           { "429c94" , 1.0 },
  CPToggleOnBorderHovered                     =           { "43a8a7" , 1.0 },
  CPToggleOnDisabled                          =           { "081e1f" , 1.0 },
  CPToggleOnDisabledHovered                   =           { "0c282a" , 1.0 },
  CPToggleOnDisabledText                      =           { "153a3f" , 1.0 },
  CPToggleOnDisabledTextHovered               =           { "17494c" , 1.0 },
  CPToggleOnDisabledBorder                    =           { "0f2527" , 1.0 },
  CPToggleOnDisabledBorderHovered             =           { "173e40" , 1.0 },
  CPToggleOff                                 =           { "932d2a" , 1.0 },
  CPToggleOffHovered                          =           { "732322" , 1.0 },
  CPToggleOffText                             =           { "ff7168" , 1.0 },
  CPToggleOffTextHovered                      =           { "ff5c54" , 1.0 },
  CPToggleOffBorder                           =           { "ea4b42" , 1.0 },
  CPToggleOffBorderHovered                    =           { "c23a35" , 1.0 },
  CPToggleOffDisabled                         =           { "180b11" , 1.0 },
  CPToggleOffDisabledHovered                  =           { "291012" , 1.0 },
  CPToggleOffDisabledText                     =           { "51181a" , 1.0 },
  CPToggleOffDisabledTextHovered              =           { "5b1c1c" , 1.0 },
  CPToggleOffDisabledBorder                   =           { "311416" , 1.0 },
  CPToggleOffDisabledBorderHovered            =           { "4d171a" , 1.0 },
  CPFrameBg                                   =           { "10101e" , 1.0 },
  CPFrameBgHovered                            =           { "4f1b1d" , 1.0 },
  CPFrameBgActive                             =           { "913131" , 1.0 },
  CPSliderGrab                                =           { "a43635" , 1.0 },
  CPSliderGrabActive                          =           { "a43635" , 1.0 },
  CPFrameBorder                               =           { "661517" , 1.0 },
  CPTextSelectedBg                            =           { "732322" , 1.0 },
  Hidden                                      =           { "000000" , 0.0 }
}

local ImGuiStyleNames = {
  Col = {
    { ImGuiStyle = ImGuiCol.Text                        , ImGuiStyleShort = "Text" },
    { ImGuiStyle = ImGuiCol.TextDisabled                , ImGuiStyleShort = "TextDisabled" },
    { ImGuiStyle = ImGuiCol.WindowBg                    , ImGuiStyleShort = "WindowBg" },
    { ImGuiStyle = ImGuiCol.ChildBg                     , ImGuiStyleShort = "ChildBg" },
    { ImGuiStyle = ImGuiCol.PopupBg                     , ImGuiStyleShort = "PopupBg" },
    { ImGuiStyle = ImGuiCol.Border                      , ImGuiStyleShort = "Border" },
    { ImGuiStyle = ImGuiCol.BorderShadow                , ImGuiStyleShort = "BorderShadow" },
    { ImGuiStyle = ImGuiCol.FrameBg                     , ImGuiStyleShort = "FrameBg" },
    { ImGuiStyle = ImGuiCol.FrameBgHovered              , ImGuiStyleShort = "FrameBgHovered" },
    { ImGuiStyle = ImGuiCol.FrameBgActive               , ImGuiStyleShort = "FrameBgActive" },
    { ImGuiStyle = ImGuiCol.TitleBg                     , ImGuiStyleShort = "TitleBg" },
    { ImGuiStyle = ImGuiCol.TitleBgActive               , ImGuiStyleShort = "TitleBgActive" },
    { ImGuiStyle = ImGuiCol.TitleBgCollapsed            , ImGuiStyleShort = "TitleBgCollapsed" },
    { ImGuiStyle = ImGuiCol.MenuBarBg                   , ImGuiStyleShort = "MenuBarBg" },
    { ImGuiStyle = ImGuiCol.ScrollbarBg                 , ImGuiStyleShort = "ScrollbarBg" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrab               , ImGuiStyleShort = "ScrollbarGrab" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrabHovered        , ImGuiStyleShort = "ScrollbarGrabHovered" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrabActive         , ImGuiStyleShort = "ScrollbarGrabActive" },
    { ImGuiStyle = ImGuiCol.CheckMark                   , ImGuiStyleShort = "CheckMark" },
    { ImGuiStyle = ImGuiCol.SliderGrab                  , ImGuiStyleShort = "SliderGrab" },
    { ImGuiStyle = ImGuiCol.SliderGrabActive            , ImGuiStyleShort = "SliderGrabActive" },
    { ImGuiStyle = ImGuiCol.Button                      , ImGuiStyleShort = "Button" },
    { ImGuiStyle = ImGuiCol.ButtonHovered               , ImGuiStyleShort = "ButtonHovered" },
    { ImGuiStyle = ImGuiCol.ButtonActive                , ImGuiStyleShort = "ButtonActive" },
    { ImGuiStyle = ImGuiCol.Header                      , ImGuiStyleShort = "Header" },
    { ImGuiStyle = ImGuiCol.HeaderHovered               , ImGuiStyleShort = "HeaderHovered" },
    { ImGuiStyle = ImGuiCol.HeaderActive                , ImGuiStyleShort = "HeaderActive" },
    { ImGuiStyle = ImGuiCol.Separator                   , ImGuiStyleShort = "Separator" },
    { ImGuiStyle = ImGuiCol.SeparatorHovered            , ImGuiStyleShort = "SeparatorHovered" },
    { ImGuiStyle = ImGuiCol.SeparatorActive             , ImGuiStyleShort = "SeparatorActive" },
    { ImGuiStyle = ImGuiCol.ResizeGrip                  , ImGuiStyleShort = "ResizeGrip" },
    { ImGuiStyle = ImGuiCol.ResizeGripHovered           , ImGuiStyleShort = "ResizeGripHovered" },
    { ImGuiStyle = ImGuiCol.ResizeGripActive            , ImGuiStyleShort = "ResizeGripActive" },
    { ImGuiStyle = ImGuiCol.Tab                         , ImGuiStyleShort = "Tab" },
    { ImGuiStyle = ImGuiCol.TabHovered                  , ImGuiStyleShort = "TabHovered" },
    { ImGuiStyle = ImGuiCol.TabActive                   , ImGuiStyleShort = "TabActive" },
    { ImGuiStyle = ImGuiCol.TabUnfocused                , ImGuiStyleShort = "TabUnfocused" },
    { ImGuiStyle = ImGuiCol.TabUnfocusedActive          , ImGuiStyleShort = "TabUnfocusedActive" },
    { ImGuiStyle = ImGuiCol.PlotLines                   , ImGuiStyleShort = "PlotLines" },
    { ImGuiStyle = ImGuiCol.PlotLinesHovered            , ImGuiStyleShort = "PlotLinesHovered" },
    { ImGuiStyle = ImGuiCol.PlotHistogram               , ImGuiStyleShort = "PlotHistogram" },
    { ImGuiStyle = ImGuiCol.PlotHistogramHovered        , ImGuiStyleShort = "PlotHistogramHovered" },
    { ImGuiStyle = ImGuiCol.TextSelectedBg              , ImGuiStyleShort = "TextSelectedBg" },
    { ImGuiStyle = ImGuiCol.DragDropTarget              , ImGuiStyleShort = "DragDropTarget" },
    { ImGuiStyle = ImGuiCol.NavHighlight                , ImGuiStyleShort = "NavHighlight" },
    { ImGuiStyle = ImGuiCol.NavWindowingHighlight       , ImGuiStyleShort = "NavWindowingHighlight" },
    { ImGuiStyle = ImGuiCol.NavWindowingDimBg           , ImGuiStyleShort = "NavWindowingDimBg" },
    { ImGuiStyle = ImGuiCol.ModalWindowDimBg            , ImGuiStyleShort = "ModalWindowDimBg" },
    { ImGuiStyle = ImGuiCol.ModalWindowDarkening        , ImGuiStyleShort = "ModalWindowDarkening" },
    { ImGuiStyle = ImGuiCol.COUNT                       , ImGuiStyleShort = "COUNT" }
  },
  Var = {
    { ImGuiStyle = ImGuiStyleVar.Alpha                  , ImGuiStyleShort = "Alpha" },
    { ImGuiStyle = ImGuiStyleVar.WindowPadding          , ImGuiStyleShort = "WindowPadding" },
    { ImGuiStyle = ImGuiStyleVar.WindowRounding         , ImGuiStyleShort = "WindowRounding" },
    { ImGuiStyle = ImGuiStyleVar.WindowBorderSize       , ImGuiStyleShort = "WindowBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.WindowMinSize          , ImGuiStyleShort = "WindowMinSize" },
    { ImGuiStyle = ImGuiStyleVar.WindowTitleAlign       , ImGuiStyleShort = "WindowTitleAlign" },
    { ImGuiStyle = ImGuiStyleVar.ChildRounding          , ImGuiStyleShort = "ChildRounding" },
    { ImGuiStyle = ImGuiStyleVar.ChildBorderSize        , ImGuiStyleShort = "ChildBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.PopupRounding          , ImGuiStyleShort = "PopupRounding" },
    { ImGuiStyle = ImGuiStyleVar.PopupBorderSize        , ImGuiStyleShort = "PopupBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.FramePadding           , ImGuiStyleShort = "FramePadding" },
    { ImGuiStyle = ImGuiStyleVar.FrameRounding          , ImGuiStyleShort = "FrameRounding" },
    { ImGuiStyle = ImGuiStyleVar.FrameBorderSize        , ImGuiStyleShort = "FrameBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.ItemSpacing            , ImGuiStyleShort = "ItemSpacing" },
    { ImGuiStyle = ImGuiStyleVar.ItemInnerSpacing       , ImGuiStyleShort = "ItemInnerSpacing" },
    { ImGuiStyle = ImGuiStyleVar.IndentSpacing          , ImGuiStyleShort = "IndentSpacing" },
    { ImGuiStyle = ImGuiStyleVar.ScrollbarSize          , ImGuiStyleShort = "ScrollbarSize" },
    { ImGuiStyle = ImGuiStyleVar.ScrollbarRounding      , ImGuiStyleShort = "ScrollbarRounding" },
    { ImGuiStyle = ImGuiStyleVar.GrabMinSize            , ImGuiStyleShort = "GrabMinSize" },
    { ImGuiStyle = ImGuiStyleVar.GrabRounding           , ImGuiStyleShort = "GrabRounding" },
    { ImGuiStyle = ImGuiStyleVar.TabRounding            , ImGuiStyleShort = "TabRounding" },
    { ImGuiStyle = ImGuiStyleVar.SelectableTextAlign    , ImGuiStyleShort = "SelectableTextAlign" },
    { ImGuiStyle = ImGuiStyleVar.ButtonTextAlign        , ImGuiStyleShort = "ButtonTextAlign" },
    { ImGuiStyle = ImGuiStyleVar.COUNT                  , ImGuiStyleShort = "COUNT" }
  }
}

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
--
function CPStyle.colorBegin(style, color)
	if type(color) == "string" then
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

function CPStyle.setThemeBegin()
	CPStyle.colorBegin("Text"                           , CPStyle.theme.Text)
	CPStyle.colorBegin("TextDisabled"                   , CPStyle.theme.TextDisabled)
	CPStyle.colorBegin("WindowBg"                       , CPStyle.theme.WindowBg)
	CPStyle.colorBegin("ChildBg"                        , CPStyle.theme.ChildBg)
	CPStyle.colorBegin("PopupBg"                        , CPStyle.theme.PopupBg)
	CPStyle.colorBegin("Border"                         , CPStyle.theme.Border)
	CPStyle.colorBegin("BorderShadow"                   , CPStyle.theme.BorderShadow)
	CPStyle.colorBegin("FrameBg"                        , CPStyle.theme.FrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , CPStyle.theme.FrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , CPStyle.theme.FrameBgActive)
	CPStyle.colorBegin("TitleBg"                        , CPStyle.theme.TitleBg)
	CPStyle.colorBegin("TitleBgActive"                  , CPStyle.theme.TitleBgActive)
	CPStyle.colorBegin("TitleBgCollapsed"               , CPStyle.theme.TitleBgCollapsed)
	CPStyle.colorBegin("MenuBarBg"                      , CPStyle.theme.MenuBarBg)
	CPStyle.colorBegin("ScrollbarBg"                    , CPStyle.theme.ScrollbarBg)
	CPStyle.colorBegin("ScrollbarGrab"                  , CPStyle.theme.ScrollbarGrab)
	CPStyle.colorBegin("ScrollbarGrabHovered"           , CPStyle.theme.ScrollbarGrabHovered)
	CPStyle.colorBegin("ScrollbarGrabActive"            , CPStyle.theme.ScrollbarGrabActive)
	CPStyle.colorBegin("CheckMark"                      , CPStyle.theme.CheckMark)
	CPStyle.colorBegin("SliderGrab"                     , CPStyle.theme.SliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , CPStyle.theme.SliderGrabActive)
	CPStyle.colorBegin("Button"                         , CPStyle.theme.Button)
	CPStyle.colorBegin("ButtonHovered"                  , CPStyle.theme.ButtonHovered)
	CPStyle.colorBegin("ButtonActive"                   , CPStyle.theme.ButtonActive)
	CPStyle.colorBegin("Header"                         , CPStyle.theme.Header)
	CPStyle.colorBegin("HeaderHovered"                  , CPStyle.theme.HeaderHovered)
	CPStyle.colorBegin("HeaderActive"                   , CPStyle.theme.HeaderActive)
	CPStyle.colorBegin("Separator"                      , CPStyle.theme.Separator)
	CPStyle.colorBegin("SeparatorHovered"               , CPStyle.theme.SeparatorHovered)
	CPStyle.colorBegin("SeparatorActive"                , CPStyle.theme.SeparatorActive)
	CPStyle.colorBegin("ResizeGrip"                     , CPStyle.theme.ResizeGrip)
	CPStyle.colorBegin("ResizeGripHovered"              , CPStyle.theme.ResizeGripHovered)
	CPStyle.colorBegin("ResizeGripActive"               , CPStyle.theme.ResizeGripActive)
	CPStyle.colorBegin("Tab"                            , CPStyle.theme.Tab)
	CPStyle.colorBegin("TabHovered"                     , CPStyle.theme.TabHovered)
	CPStyle.colorBegin("TabActive"                      , CPStyle.theme.TabActive)
	CPStyle.colorBegin("TabUnfocused"                   , CPStyle.theme.TabUnfocused)
	CPStyle.colorBegin("TabUnfocusedActive"             , CPStyle.theme.TabUnfocusedActive)
	-- CPStyle.colorBegin("PlotLines"                      , CPStyle.theme.PlotLines)
	-- CPStyle.colorBegin("PlotLinesHovered"               , CPStyle.theme.PlotLinesHovered)
	-- CPStyle.colorBegin("PlotHistogram"                  , CPStyle.theme.PlotHistogram)
	-- CPStyle.colorBegin("PlotHistogramHovered"           , CPStyle.theme.PlotHistogramHovered)
	CPStyle.colorBegin("TextSelectedBg"                 , CPStyle.theme.TextSelectedBg)
	-- CPStyle.colorBegin("DragDropTarget"                 , CPStyle.theme.DragDropTarget)
	-- CPStyle.colorBegin("NavHighlight"                   , CPStyle.theme.NavHighlight)
	-- CPStyle.colorBegin("NavWindowingHighlight"          , CPStyle.theme.NavWindowingHighlight)
	-- CPStyle.colorBegin("NavWindowingDimBg"              , CPStyle.theme.NavWindowingDimBg)
	-- CPStyle.colorBegin("ModalWindowDimBg"               , CPStyle.theme.ModalWindowDimBg)
	-- CPStyle.colorBegin("ModalWindowDarkening"           , CPStyle.theme.ModalWindowDarkening)
	CPStyle.styleBegin("ScrollbarSize"                  , 9)
end
--
function CPStyle.setThemeEnd()
	CPStyle.styleEnd(1)
	CPStyle.colorEnd(39)
end
--
function CPStyle.setFrameThemeBegin()
	CPStyle.colorBegin("FrameBg"                        , CPStyle.theme.CPFrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , CPStyle.theme.CPFrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , CPStyle.theme.CPFrameBgActive)
	CPStyle.colorBegin("SliderGrab"                     , CPStyle.theme.CPSliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , CPStyle.theme.CPSliderGrabActive)
	CPStyle.colorBegin("Border"                         , CPStyle.theme.CPFrameBorder)
	CPStyle.colorBegin("TextSelectedBg"                 , CPStyle.theme.CPTextSelectedBg)
	CPStyle.styleBegin("FrameBorderSize"                , 1)
end

function CPStyle.setFrameThemeEnd()
	CPStyle.styleEnd(1)
	CPStyle.colorEnd(7)
end

-- CPButton

function CPStyle.CPButton(label, sizex, sizey)
	local press, hovered
	ImGui.BeginGroup()
	CPStyle.styleBegin("FrameBorderSize", 1)
	CPStyle.colorBegin("Button", CPStyle.theme.CPButton)
	CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPButtonHovered)
	CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPButtonActive)
	CPStyle.colorBegin("Text", CPStyle.theme.CPButtonText)
	CPStyle.colorBegin("Border", CPStyle.theme.CPButtonBorder)
	if sizex == nil or sizey == nil then
		press = ImGui.Button(label)
	else
		press = ImGui.Button(label, sizex, sizey)
	end
	CPStyle.colorEnd(5)
	hovered = ImGui.IsItemHovered()
	if hovered then
		ImGui.SameLine(0.0001)
		CPStyle.colorBegin("Border", CPStyle.theme.CPButtonBorderHovered)
		CPStyle.colorBegin("Text", CPStyle.theme.Hidden)
		CPStyle.colorBegin("Button", CPStyle.theme.Hidden)
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

-- -- CPToggle
--
function CPStyle.CPToggle(label, label_off, label_on, value, sizex, sizey)
	local press_off, press_on, hovered
	ImGui.BeginGroup()
	CPStyle.styleBegin("FrameBorderSize", 1)
	ImGui.BeginGroup()
	if value then
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffDisabledText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOffDisabledHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffDisabledBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-2,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2 + 2)
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOn)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOnHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOn)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-2, sizey)
		ImGui.PopStyleColor(5)

	else
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOff)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOffHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOff)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-2,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2 + 2)
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnDisabledText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOnDisabledHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnDisabledBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-2, sizey)
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
		ImGui.SameLine(0.0001)
		ImGui.BeginGroup()
		if value then
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffDisabledBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffDisabledHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffDisabledTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-2,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2 + 2)
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-2, sizey)
			ImGui.PopStyleColor(3)

		else
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-2,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2 + 2)
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnDisabledBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnDisabledHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnDisabledTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-2, sizey)
			ImGui.PopStyleColor(3)
		end
		ImGui.EndGroup()
	end
	CPStyle.styleEnd(1)
	CPStyle.colorBegin("Button", CPStyle.theme.Hidden)
	CPStyle.colorBegin("Text", CPStyle.theme.Text)
	CPStyle.colorBegin("ButtonHovered", CPStyle.theme.Hidden)
	CPStyle.colorBegin("ButtonActive", CPStyle.theme.Hidden)
	CPStyle.styleBegin("FrameBorderSize", 0)
	CPStyle.styleBegin("ButtonTextAlign", 0, 0.5)
	ImGui.SameLine(sizex)
	ImGui.Button(label, 0, sizey)
	CPStyle.styleEnd(2)
	CPStyle.colorEnd(4)
	ImGui.EndGroup()
	return value, press
end

function CPStyle.CPToolTip1Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", CPStyle.theme.Hidden)
	CPStyle.colorBegin("ChildBg", CPStyle.theme.CPFrameBg)
	ImGui.BeginTooltip()
	CPStyle.CPRect("##SideRect", 8, sizey, CPStyle.theme.CPFrameBg, CPStyle.theme.CPFrameBorder, 1, 0)
	ImGui.SameLine(20)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTipMain", sizex, sizey, true)
end

function CPStyle.CPToolTip1End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(2)
	CPStyle.styleEnd(3)
end

function CPStyle.CPToolTip2Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", CPStyle.theme.Hidden)
	CPStyle.colorBegin("ChildBg", {"1d3941", 0.6})
	CPStyle.colorBegin("Border", "2f6b75")
	CPStyle.colorBegin("Separator", "3e8c94")
	ImGui.BeginTooltip()
	CPStyle.CPRect("##SideRect", 8, sizey, "1e3d45", "2f6b75", 1, 0)
	ImGui.SameLine(16)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTipMain", sizex, sizey, true)
end

function CPStyle.CPToolTip2End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(4)
	CPStyle.styleEnd(3)
end

function CPStyle.CPRect(label, sizex, sizey, color, border_color, border_size, border_rounding, textalignx, textaligny)
	if border_color == nil then border_color = CPStyle.theme.Border end
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


return CPStyle
