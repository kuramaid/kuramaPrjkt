local RullzsyHub = {};

-- RullzsyHub
RullzsyHub["1"] = Instance.new("ScreenGui");
RullzsyHub["1"]["Name"] = [[RullzsyHub]];
RullzsyHub["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
RullzsyHub["1"]["ResetOnSpawn"] = false;

local cloneref = cloneref or function(...) return ... end

if protect_gui then
	protect_gui(RullzsyHub["1"])
elseif gethui then
	RullzsyHub["1"].Parent = gethui()
elseif pcall(function() game.CoreGui:GetChildren() end) then
	RullzsyHub["1"].Parent = cloneref(game:GetService("CoreGui"))
else
	RullzsyHub["1"].Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- RullzsyHub.Window
RullzsyHub["2"] = Instance.new("Frame", RullzsyHub["1"]);
RullzsyHub["2"]["ZIndex"] = 0;
RullzsyHub["2"]["BorderSizePixel"] = 2;
RullzsyHub["2"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["2"]["Size"] = UDim2.new(0, 528, 0, 334);
RullzsyHub["2"]["Position"] = UDim2.new(0.5278, 0, 0.5, 0);
RullzsyHub["2"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["2"]["Name"] = [[Window]];


-- RullzsyHub.Window.UICorner
RullzsyHub["3"] = Instance.new("UICorner", RullzsyHub["2"]);
RullzsyHub["3"]["CornerRadius"] = UDim.new(0, 10);


-- RullzsyHub.Window.DropdownSelection
RullzsyHub["4"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["4"]["Visible"] = false;
RullzsyHub["4"]["ZIndex"] = 4;
RullzsyHub["4"]["BorderSizePixel"] = 0;
RullzsyHub["4"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
RullzsyHub["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["4"]["ClipsDescendants"] = true;
RullzsyHub["4"]["Size"] = UDim2.new(0.7281, 0, 0.68367, 0);
RullzsyHub["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
RullzsyHub["4"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["4"]["Name"] = [[DropdownSelection]];


-- RullzsyHub.Window.DropdownSelection.UICorner
RullzsyHub["5"] = Instance.new("UICorner", RullzsyHub["4"]);
RullzsyHub["5"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Window.DropdownSelection.UIStroke
RullzsyHub["6"] = Instance.new("UIStroke", RullzsyHub["4"]);
RullzsyHub["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["6"]["Thickness"] = 1.5;
RullzsyHub["6"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Window.DropdownSelection.TopBar
RullzsyHub["7"] = Instance.new("Frame", RullzsyHub["4"]);
RullzsyHub["7"]["BorderSizePixel"] = 0;
RullzsyHub["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["7"]["Size"] = UDim2.new(1, 0, 0, 50);
RullzsyHub["7"]["Position"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["7"]["Name"] = [[TopBar]];
RullzsyHub["7"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame
RullzsyHub["8"] = Instance.new("Frame", RullzsyHub["7"]);
RullzsyHub["8"]["BorderSizePixel"] = 0;
RullzsyHub["8"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["8"]["Size"] = UDim2.new(0, 120, 0, 25);
RullzsyHub["8"]["Position"] = UDim2.new(1, -50, 0.5, 0);
RullzsyHub["8"]["Name"] = [[BoxFrame]];
RullzsyHub["8"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.DropShadow
RullzsyHub["9"] = Instance.new("ImageLabel", RullzsyHub["8"]);
RullzsyHub["9"]["ZIndex"] = 0;
RullzsyHub["9"]["BorderSizePixel"] = 0;
RullzsyHub["9"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
RullzsyHub["9"]["ScaleType"] = Enum.ScaleType.Slice;
RullzsyHub["9"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["9"]["Image"] = [[rbxassetid://6014261993]];
RullzsyHub["9"]["Size"] = UDim2.new(1, 30, 1, 30);
RullzsyHub["9"]["BackgroundTransparency"] = 1;
RullzsyHub["9"]["Name"] = [[DropShadow]];
RullzsyHub["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame
RullzsyHub["a"] = Instance.new("Frame", RullzsyHub["8"]);
RullzsyHub["a"]["BorderSizePixel"] = 0;
RullzsyHub["a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.UICorner
RullzsyHub["b"] = Instance.new("UICorner", RullzsyHub["a"]);
RullzsyHub["b"]["CornerRadius"] = UDim.new(0, 5);


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.UIStroke
RullzsyHub["c"] = Instance.new("UIStroke", RullzsyHub["a"]);
RullzsyHub["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["c"]["Thickness"] = 1.5;
RullzsyHub["c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox
RullzsyHub["d"] = Instance.new("TextBox", RullzsyHub["a"]);
RullzsyHub["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["d"]["BorderSizePixel"] = 0;
RullzsyHub["d"]["TextWrapped"] = true;
RullzsyHub["d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
RullzsyHub["d"]["TextSize"] = 14;
RullzsyHub["d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["d"]["ClipsDescendants"] = true;
RullzsyHub["d"]["PlaceholderText"] = [[Input here...]];
RullzsyHub["d"]["Size"] = UDim2.new(1, -25, 1, 0);
RullzsyHub["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d"]["Text"] = [[]];
RullzsyHub["d"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox.UIPadding
RullzsyHub["e"] = Instance.new("UIPadding", RullzsyHub["d"]);
RullzsyHub["e"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Window.DropdownSelection.TopBar.BoxFrame.Frame.ImageButton
RullzsyHub["f"] = Instance.new("ImageButton", RullzsyHub["a"]);
RullzsyHub["f"]["BorderSizePixel"] = 0;
RullzsyHub["f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["f"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["f"]["Image"] = [[rbxassetid://86928976705683]];
RullzsyHub["f"]["Size"] = UDim2.new(0, 15, 0, 15);
RullzsyHub["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f"]["Position"] = UDim2.new(1, -5, 0.5, 0);


-- RullzsyHub.Window.DropdownSelection.TopBar.Close
RullzsyHub["10"] = Instance.new("ImageButton", RullzsyHub["7"]);
RullzsyHub["10"]["BorderSizePixel"] = 0;
RullzsyHub["10"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["10"]["ZIndex"] = 0;
RullzsyHub["10"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["10"]["Image"] = [[rbxassetid://132453323679056]];
RullzsyHub["10"]["Size"] = UDim2.new(0, 25, 0, 25);
RullzsyHub["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10"]["Name"] = [[Close]];
RullzsyHub["10"]["Position"] = UDim2.new(1, -12, 0.5, 0);


-- RullzsyHub.Window.DropdownSelection.TopBar.Title
RullzsyHub["11"] = Instance.new("TextLabel", RullzsyHub["7"]);
RullzsyHub["11"]["TextWrapped"] = true;
RullzsyHub["11"]["Interactable"] = false;
RullzsyHub["11"]["ZIndex"] = 0;
RullzsyHub["11"]["BorderSizePixel"] = 0;
RullzsyHub["11"]["TextSize"] = 18;
RullzsyHub["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["11"]["TextScaled"] = true;
RullzsyHub["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["11"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["11"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["11"]["BackgroundTransparency"] = 1;
RullzsyHub["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["11"]["Size"] = UDim2.new(0.5, 0, 0, 18);
RullzsyHub["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["11"]["Text"] = [[Dropdown]];
RullzsyHub["11"]["Name"] = [[Title]];
RullzsyHub["11"]["Position"] = UDim2.new(0, 12, 0.5, 0);


-- RullzsyHub.Window.DropdownSelection.Dropdowns
RullzsyHub["12"] = Instance.new("Folder", RullzsyHub["4"]);
RullzsyHub["12"]["Name"] = [[Dropdowns]];


-- RullzsyHub.Window.TabButtons
RullzsyHub["13"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["13"]["BorderSizePixel"] = 0;
RullzsyHub["13"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["13"]["ClipsDescendants"] = true;
RullzsyHub["13"]["Size"] = UDim2.new(0, 165, 1, -35);
RullzsyHub["13"]["Position"] = UDim2.new(0, 0, 0, 35);
RullzsyHub["13"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["13"]["Name"] = [[TabButtons]];
RullzsyHub["13"]["SelectionGroup"] = true;


-- RullzsyHub.Window.TabButtons.Lists
RullzsyHub["14"] = Instance.new("ScrollingFrame", RullzsyHub["13"]);
RullzsyHub["14"]["Active"] = true;
RullzsyHub["14"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
RullzsyHub["14"]["BorderSizePixel"] = 0;
RullzsyHub["14"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["14"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
RullzsyHub["14"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["14"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["14"]["Name"] = [[Lists]];
RullzsyHub["14"]["Selectable"] = false;
RullzsyHub["14"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RullzsyHub["14"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["14"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["14"]["ScrollBarThickness"] = 4;
RullzsyHub["14"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.TabButtons.Lists.UIListLayout
RullzsyHub["15"] = Instance.new("UIListLayout", RullzsyHub["14"]);
RullzsyHub["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Window.TabButtons.Lists.TabButton
RullzsyHub["16"] = Instance.new("Frame", RullzsyHub["14"]);
RullzsyHub["16"]["Visible"] = false;
RullzsyHub["16"]["BorderSizePixel"] = 0;
RullzsyHub["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["16"]["Size"] = UDim2.new(1, 0, 0, 36);
RullzsyHub["16"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["16"]["Name"] = [[TabButton]];
RullzsyHub["16"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.TabButtons.Lists.TabButton.Bar
RullzsyHub["17"] = Instance.new("Frame", RullzsyHub["16"]);
RullzsyHub["17"]["BorderSizePixel"] = 0;
RullzsyHub["17"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["17"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["17"]["Size"] = UDim2.new(0, 5, 0, 25);
RullzsyHub["17"]["Position"] = UDim2.new(0, 8, 0, 18);
RullzsyHub["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["17"]["Name"] = [[Bar]];


-- RullzsyHub.Window.TabButtons.Lists.TabButton.Bar.UIGradient
RullzsyHub["18"] = Instance.new("UIGradient", RullzsyHub["17"]);
RullzsyHub["18"]["Enabled"] = false;
RullzsyHub["18"]["Rotation"] = 90;
RullzsyHub["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 255, 140)),ColorSequenceKeypoint.new(0.978, Color3.fromRGB(0, 220, 120)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 120, 70))};


-- RullzsyHub.Window.TabButtons.Lists.TabButton.Bar.UICorner
RullzsyHub["19"] = Instance.new("UICorner", RullzsyHub["17"]);
RullzsyHub["19"]["CornerRadius"] = UDim.new(0, 100);


-- RullzsyHub.Window.TabButtons.Lists.TabButton.ImageButton
RullzsyHub["1a"] = Instance.new("ImageButton", RullzsyHub["16"]);
RullzsyHub["1a"]["BorderSizePixel"] = 0;
RullzsyHub["1a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["1a"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["1a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["1a"]["Image"] = [[rbxassetid://113216930555884]];
RullzsyHub["1a"]["Size"] = UDim2.new(0, 31, 0, 30);
RullzsyHub["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["1a"]["Position"] = UDim2.new(0, 21, 0, 18);


-- RullzsyHub.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
RullzsyHub["1b"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["1a"]);



-- RullzsyHub.Window.TabButtons.Lists.TabButton.TextLabel
RullzsyHub["1c"] = Instance.new("TextLabel", RullzsyHub["16"]);
RullzsyHub["1c"]["TextWrapped"] = true;
RullzsyHub["1c"]["BorderSizePixel"] = 0;
RullzsyHub["1c"]["TextSize"] = 14;
RullzsyHub["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["1c"]["TextScaled"] = true;
RullzsyHub["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["1c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["1c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["1c"]["BackgroundTransparency"] = 1;
RullzsyHub["1c"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["1c"]["Size"] = UDim2.new(0, 88, 0, 16);
RullzsyHub["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["1c"]["Text"] = [[RullzsyHub]];
RullzsyHub["1c"]["Position"] = UDim2.new(0, 57, 0.5, 0);


-- RullzsyHub.Window.TabButtons.Lists.UIPadding
RullzsyHub["1d"] = Instance.new("UIPadding", RullzsyHub["14"]);
RullzsyHub["1d"]["PaddingTop"] = UDim.new(0, 8);


-- RullzsyHub.Window.TabButtons.Lists.Divider
RullzsyHub["1e"] = Instance.new("Frame", RullzsyHub["14"]);
RullzsyHub["1e"]["Visible"] = false;
RullzsyHub["1e"]["BorderSizePixel"] = 0;
RullzsyHub["1e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["1e"]["Size"] = UDim2.new(1, 0, 0, 1);
RullzsyHub["1e"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["1e"]["Name"] = [[Divider]];


-- RullzsyHub.Window.TabButtons.Lists.TabButton
RullzsyHub["1f"] = Instance.new("ImageButton", RullzsyHub["14"]);
RullzsyHub["1f"]["Active"] = false;
RullzsyHub["1f"]["BorderSizePixel"] = 0;
RullzsyHub["1f"]["AutoButtonColor"] = false;
RullzsyHub["1f"]["Visible"] = false;
RullzsyHub["1f"]["BackgroundTransparency"] = 1;
RullzsyHub["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["1f"]["Selectable"] = false;
RullzsyHub["1f"]["Size"] = UDim2.new(1, 0, 0, 36);
RullzsyHub["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["1f"]["Name"] = [[TabButton]];


-- RullzsyHub.Window.TabButtons.Lists.TabButton.ImageButton
RullzsyHub["20"] = Instance.new("ImageButton", RullzsyHub["1f"]);
RullzsyHub["20"]["BorderSizePixel"] = 0;
RullzsyHub["20"]["ImageTransparency"] = 0.5;
RullzsyHub["20"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["20"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["20"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["20"]["Image"] = [[rbxassetid://113216930555884]];
RullzsyHub["20"]["Size"] = UDim2.new(0, 31, 0, 30);
RullzsyHub["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["20"]["Position"] = UDim2.new(0, 6, 0, 18);


-- RullzsyHub.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
RullzsyHub["21"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["20"]);



-- RullzsyHub.Window.TabButtons.Lists.TabButton.TextLabel
RullzsyHub["22"] = Instance.new("TextLabel", RullzsyHub["1f"]);
RullzsyHub["22"]["TextWrapped"] = true;
RullzsyHub["22"]["BorderSizePixel"] = 0;
RullzsyHub["22"]["TextSize"] = 14;
RullzsyHub["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["22"]["TextTransparency"] = 0.5;
RullzsyHub["22"]["TextScaled"] = true;
RullzsyHub["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["22"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["22"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["22"]["BackgroundTransparency"] = 1;
RullzsyHub["22"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["22"]["Size"] = UDim2.new(0, 103, 0, 16);
RullzsyHub["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["22"]["Text"] = [[RullzsyHub]];
RullzsyHub["22"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- RullzsyHub.Window.TabButtons.Lists.TabButton.Bar
RullzsyHub["23"] = Instance.new("Frame", RullzsyHub["1f"]);
RullzsyHub["23"]["BorderSizePixel"] = 0;
RullzsyHub["23"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["23"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["23"]["Size"] = UDim2.new(0, 5, 0, 0);
RullzsyHub["23"]["Position"] = UDim2.new(0, 8, 0, 18);
RullzsyHub["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["23"]["Name"] = [[Bar]];
RullzsyHub["23"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.TabButtons.Lists.TabButton.Bar.UICorner
RullzsyHub["24"] = Instance.new("UICorner", RullzsyHub["23"]);
RullzsyHub["24"]["CornerRadius"] = UDim.new(0, 100);


-- RullzsyHub.Window.TabButtons.UICorner
RullzsyHub["25"] = Instance.new("UICorner", RullzsyHub["13"]);
RullzsyHub["25"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Window.TabButtons.AntiCornerTop
RullzsyHub["26"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["26"]["BorderSizePixel"] = 0;
RullzsyHub["26"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["26"]["Size"] = UDim2.new(1, 0, 0, 5);
RullzsyHub["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["26"]["Name"] = [[AntiCornerTop]];


-- RullzsyHub.Window.TabButtons.AntiCornerRight
RullzsyHub["27"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["27"]["BorderSizePixel"] = 0;
RullzsyHub["27"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["27"]["AnchorPoint"] = Vector2.new(0.5, 0);
RullzsyHub["27"]["Size"] = UDim2.new(0, 2, 1, 0);
RullzsyHub["27"]["Position"] = UDim2.new(1, 1, 0, 0);
RullzsyHub["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["27"]["Name"] = [[AntiCornerRight]];


-- RullzsyHub.Window.TabButtons.Border
RullzsyHub["28"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["28"]["ZIndex"] = 2;
RullzsyHub["28"]["BorderSizePixel"] = 0;
RullzsyHub["28"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["28"]["AnchorPoint"] = Vector2.new(1, 0);
RullzsyHub["28"]["Size"] = UDim2.new(0, 2, 1, 0);
RullzsyHub["28"]["Position"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["28"]["Name"] = [[Border]];


-- RullzsyHub.Window.TopFrame
RullzsyHub["29"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["29"]["BorderSizePixel"] = 0;
RullzsyHub["29"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["29"]["ClipsDescendants"] = true;
RullzsyHub["29"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["29"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["29"]["Name"] = [[TopFrame]];


-- RullzsyHub.Window.TopFrame.Icon
RullzsyHub["2a"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2a"]["Active"] = false;
RullzsyHub["2a"]["Interactable"] = false;
RullzsyHub["2a"]["BorderSizePixel"] = 0;
RullzsyHub["2a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["2a"]["Image"] = [[rbxassetid://113216930555884]];
RullzsyHub["2a"]["Size"] = UDim2.new(0, 25, 0, 25);
RullzsyHub["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2a"]["Name"] = [[Icon]];
RullzsyHub["2a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- RullzsyHub.Window.TopFrame.Icon.UIAspectRatioConstraint
RullzsyHub["2b"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["2a"]);



-- RullzsyHub.Window.TopFrame.TextLabel
RullzsyHub["2c"] = Instance.new("TextLabel", RullzsyHub["29"]);
RullzsyHub["2c"]["TextWrapped"] = true;
RullzsyHub["2c"]["Interactable"] = false;
RullzsyHub["2c"]["BorderSizePixel"] = 0;
RullzsyHub["2c"]["TextSize"] = 14;
RullzsyHub["2c"]["TextScaled"] = true;
RullzsyHub["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["2c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["2c"]["BackgroundTransparency"] = 1;
RullzsyHub["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["2c"]["Size"] = UDim2.new(1, 0, 0, 16);
RullzsyHub["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2c"]["Text"] = [[RullzsyHub - v1.2.3]];
RullzsyHub["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);


-- RullzsyHub.Window.TopFrame.Close
RullzsyHub["2d"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2d"]["BorderSizePixel"] = 0;
RullzsyHub["2d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["2d"]["Image"] = [[rbxassetid://132453323679056]];
RullzsyHub["2d"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2d"]["Name"] = [[Close]];
RullzsyHub["2d"]["Position"] = UDim2.new(1, -15, 0.5, 0);


-- RullzsyHub.Window.TopFrame.Maximize
RullzsyHub["2e"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2e"]["BorderSizePixel"] = 0;
RullzsyHub["2e"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2e"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["2e"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["2e"]["Image"] = [[rbxassetid://108285848026510]];
RullzsyHub["2e"]["Size"] = UDim2.new(0, 15, 0, 15);
RullzsyHub["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2e"]["Name"] = [[Maximize]];
RullzsyHub["2e"]["Position"] = UDim2.new(1, -55, 0.5, 0);


-- RullzsyHub.Window.TopFrame.Hide
RullzsyHub["2f"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2f"]["BorderSizePixel"] = 0;
RullzsyHub["2f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["2f"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["2f"]["Image"] = [[rbxassetid://128209591224511]];
RullzsyHub["2f"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2f"]["Name"] = [[Hide]];
RullzsyHub["2f"]["Position"] = UDim2.new(1, -90, 0.5, 0);


-- RullzsyHub.Window.TopFrame.UICorner
RullzsyHub["30"] = Instance.new("UICorner", RullzsyHub["29"]);
RullzsyHub["30"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Window.TopFrame.Border
RullzsyHub["31"] = Instance.new("Frame", RullzsyHub["29"]);
RullzsyHub["31"]["ZIndex"] = 2;
RullzsyHub["31"]["BorderSizePixel"] = 0;
RullzsyHub["31"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["31"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["31"]["Size"] = UDim2.new(1, 0, 0, 2);
RullzsyHub["31"]["Position"] = UDim2.new(0, 0, 1, 0);
RullzsyHub["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["31"]["Name"] = [[Border]];


-- RullzsyHub.Window.UIStroke
RullzsyHub["32"] = Instance.new("UIStroke", RullzsyHub["2"]);
RullzsyHub["32"]["Transparency"] = 0.5;
RullzsyHub["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["32"]["Color"] = Color3.fromRGB(95, 95, 117);


-- RullzsyHub.Window.Tabs
RullzsyHub["33"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["33"]["BorderSizePixel"] = 0;
RullzsyHub["33"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
RullzsyHub["33"]["Size"] = UDim2.new(1, -165, 1, -35);
RullzsyHub["33"]["Position"] = UDim2.new(0, 165, 0, 35);
RullzsyHub["33"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["33"]["Name"] = [[Tabs]];


-- RullzsyHub.Window.Tabs.UICorner
RullzsyHub["34"] = Instance.new("UICorner", RullzsyHub["33"]);
RullzsyHub["34"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Window.Tabs.AntiCornerLeft
RullzsyHub["35"] = Instance.new("Frame", RullzsyHub["33"]);
RullzsyHub["35"]["Visible"] = false;
RullzsyHub["35"]["BorderSizePixel"] = 0;
RullzsyHub["35"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
RullzsyHub["35"]["Size"] = UDim2.new(0, 5, 1, 0);
RullzsyHub["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["35"]["Name"] = [[AntiCornerLeft]];


-- RullzsyHub.Window.Tabs.AntiCornerTop
RullzsyHub["36"] = Instance.new("Frame", RullzsyHub["33"]);
RullzsyHub["36"]["BorderSizePixel"] = 0;
RullzsyHub["36"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
RullzsyHub["36"]["Size"] = UDim2.new(1, 0, 0, 5);
RullzsyHub["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["36"]["Name"] = [[AntiCornerTop]];


-- RullzsyHub.Window.Tabs.NoObjectFoundText
RullzsyHub["37"] = Instance.new("TextLabel", RullzsyHub["33"]);
RullzsyHub["37"]["TextWrapped"] = true;
RullzsyHub["37"]["Interactable"] = false;
RullzsyHub["37"]["BorderSizePixel"] = 0;
RullzsyHub["37"]["TextSize"] = 14;
RullzsyHub["37"]["TextScaled"] = true;
RullzsyHub["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["37"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["37"]["TextColor3"] = Color3.fromRGB(135, 140, 150);
RullzsyHub["37"]["BackgroundTransparency"] = 1;
RullzsyHub["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["37"]["Size"] = UDim2.new(1, 0, 0, 16);
RullzsyHub["37"]["Visible"] = false;
RullzsyHub["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["37"]["Text"] = [[This tab is empty :(]];
RullzsyHub["37"]["Name"] = [[NoObjectFoundText]];
RullzsyHub["37"]["Position"] = UDim2.new(0.5, 0, 0.45, 0);


-- RullzsyHub.Window.NotificationFrame
RullzsyHub["38"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["38"]["BorderSizePixel"] = 0;
RullzsyHub["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["38"]["ClipsDescendants"] = true;
RullzsyHub["38"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["38"]["Name"] = [[NotificationFrame]];
RullzsyHub["38"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.NotificationFrame.NotificationList
RullzsyHub["39"] = Instance.new("Frame", RullzsyHub["38"]);
RullzsyHub["39"]["ZIndex"] = 5;
RullzsyHub["39"]["BorderSizePixel"] = 0;
RullzsyHub["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["39"]["AnchorPoint"] = Vector2.new(0.5, 0);
RullzsyHub["39"]["ClipsDescendants"] = true;
RullzsyHub["39"]["Size"] = UDim2.new(0, 630, 1, -35);
RullzsyHub["39"]["Position"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["39"]["Name"] = [[NotificationList]];
RullzsyHub["39"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Window.NotificationFrame.NotificationList.UIListLayout
RullzsyHub["3a"] = Instance.new("UIListLayout", RullzsyHub["39"]);
RullzsyHub["3a"]["Padding"] = UDim.new(0, 12);
RullzsyHub["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Window.NotificationFrame.NotificationList.UIPadding
RullzsyHub["3b"] = Instance.new("UIPadding", RullzsyHub["39"]);
RullzsyHub["3b"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["3b"]["PaddingRight"] = UDim.new(0, 40);
RullzsyHub["3b"]["PaddingLeft"] = UDim.new(0, 40);


-- RullzsyHub.Window.DarkOverlay
RullzsyHub["3c"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["3c"]["Visible"] = false;
RullzsyHub["3c"]["BorderSizePixel"] = 0;
RullzsyHub["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["3c"]["Name"] = [[DarkOverlay]];
RullzsyHub["3c"]["BackgroundTransparency"] = 0.6;


-- RullzsyHub.Window.DarkOverlay.UICorner
RullzsyHub["3d"] = Instance.new("UICorner", RullzsyHub["3c"]);
RullzsyHub["3d"]["CornerRadius"] = UDim.new(0, 10);


-- RullzsyHub.Library
RullzsyHub["3e"] = Instance.new("ModuleScript", RullzsyHub["1"]);
RullzsyHub["3e"]["Name"] = [[Library]];


-- RullzsyHub.Library.IconModule
RullzsyHub["3f"] = Instance.new("ModuleScript", RullzsyHub["3e"]);
RullzsyHub["3f"]["Name"] = [[IconModule]];


-- RullzsyHub.Library.IconModule.Lucide
RullzsyHub["40"] = Instance.new("ModuleScript", RullzsyHub["3f"]);
RullzsyHub["40"]["Name"] = [[Lucide]];


-- RullzsyHub.Templates
RullzsyHub["41"] = Instance.new("Folder", RullzsyHub["1"]);
RullzsyHub["41"]["Name"] = [[Templates]];


-- RullzsyHub.Templates.Divider
RullzsyHub["42"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["42"]["Visible"] = false;
RullzsyHub["42"]["BorderSizePixel"] = 0;
RullzsyHub["42"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["42"]["Size"] = UDim2.new(1, 0, 0, 1);
RullzsyHub["42"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["42"]["Name"] = [[Divider]];


-- RullzsyHub.Templates.Tab
RullzsyHub["43"] = Instance.new("ScrollingFrame", RullzsyHub["41"]);
RullzsyHub["43"]["Visible"] = false;
RullzsyHub["43"]["Active"] = true;
RullzsyHub["43"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
RullzsyHub["43"]["BorderSizePixel"] = 0;
RullzsyHub["43"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["43"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
RullzsyHub["43"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["43"]["Name"] = [[Tab]];
RullzsyHub["43"]["Selectable"] = false;
RullzsyHub["43"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["43"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RullzsyHub["43"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["43"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
RullzsyHub["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["43"]["ScrollBarThickness"] = 5;
RullzsyHub["43"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Tab.UIListLayout
RullzsyHub["44"] = Instance.new("UIListLayout", RullzsyHub["43"]);
RullzsyHub["44"]["Padding"] = UDim.new(0, 15);
RullzsyHub["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Tab.UIPadding
RullzsyHub["45"] = Instance.new("UIPadding", RullzsyHub["43"]);
RullzsyHub["45"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["45"]["PaddingRight"] = UDim.new(0, 14);
RullzsyHub["45"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["45"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.TabButton
RullzsyHub["46"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["46"]["BorderSizePixel"] = 0;
RullzsyHub["46"]["AutoButtonColor"] = false;
RullzsyHub["46"]["Visible"] = false;
RullzsyHub["46"]["BackgroundTransparency"] = 1;
RullzsyHub["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["46"]["Selectable"] = false;
RullzsyHub["46"]["Size"] = UDim2.new(1, 0, 0, 36);
RullzsyHub["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["46"]["Name"] = [[TabButton]];


-- RullzsyHub.Templates.TabButton.ImageButton
RullzsyHub["47"] = Instance.new("ImageButton", RullzsyHub["46"]);
RullzsyHub["47"]["BorderSizePixel"] = 0;
RullzsyHub["47"]["ImageTransparency"] = 0.5;
RullzsyHub["47"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["47"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["47"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["47"]["Image"] = [[rbxassetid://113216930555884]];
RullzsyHub["47"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["47"]["Position"] = UDim2.new(0, 12, 0, 18);


-- RullzsyHub.Templates.TabButton.ImageButton.UIAspectRatioConstraint
RullzsyHub["48"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["47"]);



-- RullzsyHub.Templates.TabButton.TextLabel
RullzsyHub["49"] = Instance.new("TextLabel", RullzsyHub["46"]);
RullzsyHub["49"]["TextWrapped"] = true;
RullzsyHub["49"]["BorderSizePixel"] = 0;
RullzsyHub["49"]["TextSize"] = 14;
RullzsyHub["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["49"]["TextTransparency"] = 0.5;
RullzsyHub["49"]["TextScaled"] = true;
RullzsyHub["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["49"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["49"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["49"]["BackgroundTransparency"] = 1;
RullzsyHub["49"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["49"]["Size"] = UDim2.new(0, 103, 0, 16);
RullzsyHub["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["49"]["Text"] = [[]];
RullzsyHub["49"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- RullzsyHub.Templates.TabButton.Bar
RullzsyHub["4a"] = Instance.new("Frame", RullzsyHub["46"]);
RullzsyHub["4a"]["BorderSizePixel"] = 0;
RullzsyHub["4a"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["4a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["4a"]["Size"] = UDim2.new(0, 5, 0, 0);
RullzsyHub["4a"]["Position"] = UDim2.new(0, 8, 0, 18);
RullzsyHub["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4a"]["Name"] = [[Bar]];
RullzsyHub["4a"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.TabButton.Bar.UICorner
RullzsyHub["4b"] = Instance.new("UICorner", RullzsyHub["4a"]);
RullzsyHub["4b"]["CornerRadius"] = UDim.new(0, 100);


-- RullzsyHub.Templates.Button
RullzsyHub["4c"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["4c"]["BorderSizePixel"] = 0;
RullzsyHub["4c"]["AutoButtonColor"] = false;
RullzsyHub["4c"]["Visible"] = false;
RullzsyHub["4c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["4c"]["Selectable"] = false;
RullzsyHub["4c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["4c"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4c"]["Name"] = [[Button]];
RullzsyHub["4c"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- RullzsyHub.Templates.Button.UICorner
RullzsyHub["4d"] = Instance.new("UICorner", RullzsyHub["4c"]);
RullzsyHub["4d"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Button.Frame
RullzsyHub["4e"] = Instance.new("Frame", RullzsyHub["4c"]);
RullzsyHub["4e"]["BorderSizePixel"] = 0;
RullzsyHub["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["4e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["4e"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4e"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Button.Frame.UIListLayout
RullzsyHub["4f"] = Instance.new("UIListLayout", RullzsyHub["4e"]);
RullzsyHub["4f"]["Padding"] = UDim.new(0, 5);
RullzsyHub["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Button.Frame.UIPadding
RullzsyHub["50"] = Instance.new("UIPadding", RullzsyHub["4e"]);
RullzsyHub["50"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Button.Frame.Title
RullzsyHub["51"] = Instance.new("TextLabel", RullzsyHub["4e"]);
RullzsyHub["51"]["TextWrapped"] = true;
RullzsyHub["51"]["Interactable"] = false;
RullzsyHub["51"]["BorderSizePixel"] = 0;
RullzsyHub["51"]["TextSize"] = 16;
RullzsyHub["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["51"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["51"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["51"]["BackgroundTransparency"] = 1;
RullzsyHub["51"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["51"]["Text"] = [[Button]];
RullzsyHub["51"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Button.Frame.Title.ClickIcon
RullzsyHub["52"] = Instance.new("ImageButton", RullzsyHub["51"]);
RullzsyHub["52"]["BorderSizePixel"] = 0;
RullzsyHub["52"]["AutoButtonColor"] = false;
RullzsyHub["52"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["52"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["52"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["52"]["Image"] = [[rbxassetid://91877599529856]];
RullzsyHub["52"]["Size"] = UDim2.new(0, 23, 0, 23);
RullzsyHub["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["52"]["Name"] = [[ClickIcon]];
RullzsyHub["52"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- RullzsyHub.Templates.Button.Frame.Description
RullzsyHub["53"] = Instance.new("TextLabel", RullzsyHub["4e"]);
RullzsyHub["53"]["TextWrapped"] = true;
RullzsyHub["53"]["Interactable"] = false;
RullzsyHub["53"]["BorderSizePixel"] = 0;
RullzsyHub["53"]["TextSize"] = 16;
RullzsyHub["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["53"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["53"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["53"]["BackgroundTransparency"] = 1;
RullzsyHub["53"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["53"]["Visible"] = false;
RullzsyHub["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["53"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["53"]["LayoutOrder"] = 1;
RullzsyHub["53"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["53"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Button.Frame.UIGradient
RullzsyHub["54"] = Instance.new("UIGradient", RullzsyHub["4e"]);
RullzsyHub["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Button.Frame.UIGradient
RullzsyHub["55"] = Instance.new("UIGradient", RullzsyHub["4e"]);
RullzsyHub["55"]["Enabled"] = false;
RullzsyHub["55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Button.Frame.UIGradient
RullzsyHub["56"] = Instance.new("UIGradient", RullzsyHub["4e"]);
RullzsyHub["56"]["Enabled"] = false;
RullzsyHub["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Button.Frame.UICorner
RullzsyHub["57"] = Instance.new("UICorner", RullzsyHub["4e"]);
RullzsyHub["57"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Button.UIStroke
RullzsyHub["58"] = Instance.new("UIStroke", RullzsyHub["4c"]);
RullzsyHub["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["58"]["Thickness"] = 1.5;
RullzsyHub["58"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Paragraph
RullzsyHub["59"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["59"]["Visible"] = false;
RullzsyHub["59"]["BorderSizePixel"] = 0;
RullzsyHub["59"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["59"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["59"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["59"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["59"]["Name"] = [[Paragraph]];


-- RullzsyHub.Templates.Paragraph.UICorner
RullzsyHub["5a"] = Instance.new("UICorner", RullzsyHub["59"]);
RullzsyHub["5a"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Paragraph.UIStroke
RullzsyHub["5b"] = Instance.new("UIStroke", RullzsyHub["59"]);
RullzsyHub["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["5b"]["Thickness"] = 1.5;
RullzsyHub["5b"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Paragraph.Title
RullzsyHub["5c"] = Instance.new("TextLabel", RullzsyHub["59"]);
RullzsyHub["5c"]["TextWrapped"] = true;
RullzsyHub["5c"]["Interactable"] = false;
RullzsyHub["5c"]["BorderSizePixel"] = 0;
RullzsyHub["5c"]["TextSize"] = 16;
RullzsyHub["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["5c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["5c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["5c"]["BackgroundTransparency"] = 1;
RullzsyHub["5c"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["5c"]["Text"] = [[Title]];
RullzsyHub["5c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["5c"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Paragraph.UIPadding
RullzsyHub["5d"] = Instance.new("UIPadding", RullzsyHub["59"]);
RullzsyHub["5d"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Paragraph.UIListLayout
RullzsyHub["5e"] = Instance.new("UIListLayout", RullzsyHub["59"]);
RullzsyHub["5e"]["Padding"] = UDim.new(0, 5);
RullzsyHub["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Paragraph.Description
RullzsyHub["5f"] = Instance.new("TextLabel", RullzsyHub["59"]);
RullzsyHub["5f"]["TextWrapped"] = true;
RullzsyHub["5f"]["Interactable"] = false;
RullzsyHub["5f"]["BorderSizePixel"] = 0;
RullzsyHub["5f"]["TextSize"] = 16;
RullzsyHub["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["5f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["5f"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["5f"]["BackgroundTransparency"] = 1;
RullzsyHub["5f"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["5f"]["Visible"] = false;
RullzsyHub["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["5f"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["5f"]["LayoutOrder"] = 1;
RullzsyHub["5f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["5f"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Toggle
RullzsyHub["60"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["60"]["BorderSizePixel"] = 0;
RullzsyHub["60"]["AutoButtonColor"] = false;
RullzsyHub["60"]["Visible"] = false;
RullzsyHub["60"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["60"]["Selectable"] = false;
RullzsyHub["60"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["60"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["60"]["Name"] = [[Toggle]];
RullzsyHub["60"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- RullzsyHub.Templates.Toggle.UICorner
RullzsyHub["61"] = Instance.new("UICorner", RullzsyHub["60"]);
RullzsyHub["61"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Toggle.UIStroke
RullzsyHub["62"] = Instance.new("UIStroke", RullzsyHub["60"]);
RullzsyHub["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["62"]["Thickness"] = 1.5;
RullzsyHub["62"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Toggle.UIPadding
RullzsyHub["63"] = Instance.new("UIPadding", RullzsyHub["60"]);
RullzsyHub["63"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Toggle.UIListLayout
RullzsyHub["64"] = Instance.new("UIListLayout", RullzsyHub["60"]);
RullzsyHub["64"]["Padding"] = UDim.new(0, 5);
RullzsyHub["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Toggle.Description
RullzsyHub["65"] = Instance.new("TextLabel", RullzsyHub["60"]);
RullzsyHub["65"]["TextWrapped"] = true;
RullzsyHub["65"]["Interactable"] = false;
RullzsyHub["65"]["BorderSizePixel"] = 0;
RullzsyHub["65"]["TextSize"] = 16;
RullzsyHub["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["65"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["65"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["65"]["BackgroundTransparency"] = 1;
RullzsyHub["65"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["65"]["Visible"] = false;
RullzsyHub["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["65"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["65"]["LayoutOrder"] = 1;
RullzsyHub["65"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["65"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Toggle.Title
RullzsyHub["66"] = Instance.new("TextLabel", RullzsyHub["60"]);
RullzsyHub["66"]["TextWrapped"] = true;
RullzsyHub["66"]["BorderSizePixel"] = 0;
RullzsyHub["66"]["TextSize"] = 16;
RullzsyHub["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["66"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["66"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["66"]["BackgroundTransparency"] = 1;
RullzsyHub["66"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["66"]["Text"] = [[Toggle]];
RullzsyHub["66"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Toggle.Title.Fill
RullzsyHub["67"] = Instance.new("ImageButton", RullzsyHub["66"]);
RullzsyHub["67"]["BorderSizePixel"] = 0;
RullzsyHub["67"]["AutoButtonColor"] = false;
RullzsyHub["67"]["BackgroundColor3"] = Color3.fromRGB(54, 57, 63);
RullzsyHub["67"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["67"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["67"]["Size"] = UDim2.new(0, 45, 0, 25);
RullzsyHub["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["67"]["Name"] = [[Fill]];
RullzsyHub["67"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- RullzsyHub.Templates.Toggle.Title.Fill.UICorner
RullzsyHub["68"] = Instance.new("UICorner", RullzsyHub["67"]);
RullzsyHub["68"]["CornerRadius"] = UDim.new(100, 0);


-- RullzsyHub.Templates.Toggle.Title.Fill.Ball
RullzsyHub["69"] = Instance.new("ImageButton", RullzsyHub["67"]);
RullzsyHub["69"]["Active"] = false;
RullzsyHub["69"]["Interactable"] = false;
RullzsyHub["69"]["BorderSizePixel"] = 0;
RullzsyHub["69"]["AutoButtonColor"] = false;
RullzsyHub["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["69"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["69"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["69"]["Name"] = [[Ball]];
RullzsyHub["69"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- RullzsyHub.Templates.Toggle.Title.Fill.Ball.UICorner
RullzsyHub["6a"] = Instance.new("UICorner", RullzsyHub["69"]);
RullzsyHub["6a"]["CornerRadius"] = UDim.new(100, 0);


-- RullzsyHub.Templates.Toggle.Title.Fill.Ball.Icon
RullzsyHub["6b"] = Instance.new("ImageLabel", RullzsyHub["69"]);
RullzsyHub["6b"]["BorderSizePixel"] = 0;
RullzsyHub["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["6b"]["ImageColor3"] = Color3.fromRGB(54, 57, 63);
RullzsyHub["6b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["6b"]["Size"] = UDim2.new(1, -5, 1, -5);
RullzsyHub["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["6b"]["BackgroundTransparency"] = 1;
RullzsyHub["6b"]["Name"] = [[Icon]];
RullzsyHub["6b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.Toggle.Title.Fill.UIPadding
RullzsyHub["6c"] = Instance.new("UIPadding", RullzsyHub["67"]);
RullzsyHub["6c"]["PaddingTop"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingRight"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingLeft"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingBottom"] = UDim.new(0, 2);


-- RullzsyHub.Templates.Notification
RullzsyHub["6d"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["6d"]["Visible"] = false;
RullzsyHub["6d"]["BorderSizePixel"] = 0;
RullzsyHub["6d"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["6d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["6d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["6d"]["Size"] = UDim2.new(1, 0, 0, 65);
RullzsyHub["6d"]["Position"] = UDim2.new(0.8244, 0, 0.88221, 0);
RullzsyHub["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["6d"]["Name"] = [[Notification]];
RullzsyHub["6d"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Notification.Items
RullzsyHub["6e"] = Instance.new("CanvasGroup", RullzsyHub["6d"]);
RullzsyHub["6e"]["ZIndex"] = 2;
RullzsyHub["6e"]["BorderSizePixel"] = 0;
RullzsyHub["6e"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["6e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["6e"]["Size"] = UDim2.new(0, 265, 0, 70);
RullzsyHub["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["6e"]["Name"] = [[Items]];


-- RullzsyHub.Templates.Notification.Items.Frame
RullzsyHub["6f"] = Instance.new("Frame", RullzsyHub["6e"]);
RullzsyHub["6f"]["BorderSizePixel"] = 0;
RullzsyHub["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["6f"]["Size"] = UDim2.new(0, 265, 0, 70);
RullzsyHub["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["6f"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Notification.Items.Frame.UIListLayout
RullzsyHub["70"] = Instance.new("UIListLayout", RullzsyHub["6f"]);
RullzsyHub["70"]["Padding"] = UDim.new(0, 5);
RullzsyHub["70"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Notification.Items.Frame.UIPadding
RullzsyHub["71"] = Instance.new("UIPadding", RullzsyHub["6f"]);
RullzsyHub["71"]["PaddingTop"] = UDim.new(0, 15);
RullzsyHub["71"]["PaddingLeft"] = UDim.new(0, 15);
RullzsyHub["71"]["PaddingBottom"] = UDim.new(0, 15);


-- RullzsyHub.Templates.Notification.Items.Frame.SubContent
RullzsyHub["72"] = Instance.new("TextLabel", RullzsyHub["6f"]);
RullzsyHub["72"]["TextWrapped"] = true;
RullzsyHub["72"]["BorderSizePixel"] = 0;
RullzsyHub["72"]["TextSize"] = 12;
RullzsyHub["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RullzsyHub["72"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
RullzsyHub["72"]["BackgroundTransparency"] = 1;
RullzsyHub["72"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["72"]["Size"] = UDim2.new(0, 218, 0, 10);
RullzsyHub["72"]["Visible"] = false;
RullzsyHub["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["72"]["Text"] = [[This is a notification]];
RullzsyHub["72"]["LayoutOrder"] = 1;
RullzsyHub["72"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["72"]["Name"] = [[SubContent]];
RullzsyHub["72"]["Position"] = UDim2.new(0, 0, 0, 19);


-- RullzsyHub.Templates.Notification.Items.Frame.SubContent.UIGradient
RullzsyHub["73"] = Instance.new("UIGradient", RullzsyHub["72"]);
RullzsyHub["73"]["Enabled"] = false;
RullzsyHub["73"]["Rotation"] = -90;
RullzsyHub["73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(180, 30, 30)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Notification.Items.Frame.Title
RullzsyHub["74"] = Instance.new("TextLabel", RullzsyHub["6f"]);
RullzsyHub["74"]["TextWrapped"] = true;
RullzsyHub["74"]["BorderSizePixel"] = 0;
RullzsyHub["74"]["TextSize"] = 16;
RullzsyHub["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["74"]["TextScaled"] = true;
RullzsyHub["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["74"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["74"]["BackgroundTransparency"] = 1;
RullzsyHub["74"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["74"]["Size"] = UDim2.new(0, 235, 0, 18);
RullzsyHub["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["74"]["Text"] = [[Title]];
RullzsyHub["74"]["Name"] = [[Title]];
RullzsyHub["74"]["Position"] = UDim2.new(0, 0, 0, 9);


-- RullzsyHub.Templates.Notification.Items.Frame.Title.Close
RullzsyHub["75"] = Instance.new("ImageButton", RullzsyHub["74"]);
RullzsyHub["75"]["BorderSizePixel"] = 0;
RullzsyHub["75"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["75"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["75"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["75"]["Image"] = [[rbxassetid://132453323679056]];
RullzsyHub["75"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
RullzsyHub["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["75"]["Name"] = [[Close]];
RullzsyHub["75"]["Position"] = UDim2.new(0.92, 0, 0.5, 0);


-- RullzsyHub.Templates.Notification.Items.Frame.Title.Close.UIAspectRatioConstraint
RullzsyHub["76"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["75"]);



-- RullzsyHub.Templates.Notification.Items.Frame.Title.UIPadding
RullzsyHub["77"] = Instance.new("UIPadding", RullzsyHub["74"]);
RullzsyHub["77"]["PaddingLeft"] = UDim.new(0, 30);


-- RullzsyHub.Templates.Notification.Items.Frame.Title.Icon
RullzsyHub["78"] = Instance.new("ImageButton", RullzsyHub["74"]);
RullzsyHub["78"]["BorderSizePixel"] = 0;
RullzsyHub["78"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["78"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["78"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["78"]["Image"] = [[rbxassetid://92049322344253]];
RullzsyHub["78"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
RullzsyHub["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["78"]["Name"] = [[Icon]];
RullzsyHub["78"]["Position"] = UDim2.new(0, -30, 0.5, 0);


-- RullzsyHub.Templates.Notification.Items.Frame.Title.Icon.UIAspectRatioConstraint
RullzsyHub["79"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["78"]);



-- RullzsyHub.Templates.Notification.Items.Frame.Content
RullzsyHub["7a"] = Instance.new("TextLabel", RullzsyHub["6f"]);
RullzsyHub["7a"]["TextWrapped"] = true;
RullzsyHub["7a"]["BorderSizePixel"] = 0;
RullzsyHub["7a"]["TextSize"] = 16;
RullzsyHub["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["7a"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["7a"]["BackgroundTransparency"] = 1;
RullzsyHub["7a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["7a"]["Size"] = UDim2.new(0, 218, 0, 10);
RullzsyHub["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["7a"]["Text"] = [[Content]];
RullzsyHub["7a"]["LayoutOrder"] = 2;
RullzsyHub["7a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["7a"]["Name"] = [[Content]];
RullzsyHub["7a"]["Position"] = UDim2.new(0, 0, 0, 19);


-- RullzsyHub.Templates.Notification.Items.Frame.Content.UIGradient
RullzsyHub["7b"] = Instance.new("UIGradient", RullzsyHub["7a"]);
RullzsyHub["7b"]["Enabled"] = false;
RullzsyHub["7b"]["Rotation"] = -90;
RullzsyHub["7b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(180, 30, 30)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Notification.Items.TimerBarFill
RullzsyHub["7c"] = Instance.new("Frame", RullzsyHub["6e"]);
RullzsyHub["7c"]["BorderSizePixel"] = 0;
RullzsyHub["7c"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["7c"]["AnchorPoint"] = Vector2.new(0, 1);
RullzsyHub["7c"]["Size"] = UDim2.new(1, 0, 0, 5);
RullzsyHub["7c"]["Position"] = UDim2.new(0, 0, 1, 0);
RullzsyHub["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["7c"]["Name"] = [[TimerBarFill]];
RullzsyHub["7c"]["BackgroundTransparency"] = 0.7;


-- RullzsyHub.Templates.Notification.Items.TimerBarFill.UICorner
RullzsyHub["7d"] = Instance.new("UICorner", RullzsyHub["7c"]);



-- RullzsyHub.Templates.Notification.Items.TimerBarFill.Bar
RullzsyHub["7e"] = Instance.new("Frame", RullzsyHub["7c"]);
RullzsyHub["7e"]["BorderSizePixel"] = 0;
RullzsyHub["7e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["7e"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["7e"]["Name"] = [[Bar]];


-- RullzsyHub.Templates.Notification.Items.TimerBarFill.Bar.UICorner
RullzsyHub["7f"] = Instance.new("UICorner", RullzsyHub["7e"]);



-- RullzsyHub.Templates.Notification.Items.UIStroke
RullzsyHub["80"] = Instance.new("UIStroke", RullzsyHub["6e"]);
RullzsyHub["80"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["80"]["Thickness"] = 1.5;
RullzsyHub["80"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Notification.Items.UICorner
RullzsyHub["81"] = Instance.new("UICorner", RullzsyHub["6e"]);



-- RullzsyHub.Templates.Slider
RullzsyHub["82"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["82"]["Visible"] = false;
RullzsyHub["82"]["BorderSizePixel"] = 0;
RullzsyHub["82"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["82"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["82"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["82"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["82"]["Name"] = [[Slider]];


-- RullzsyHub.Templates.Slider.UICorner
RullzsyHub["83"] = Instance.new("UICorner", RullzsyHub["82"]);
RullzsyHub["83"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Slider.UIStroke
RullzsyHub["84"] = Instance.new("UIStroke", RullzsyHub["82"]);
RullzsyHub["84"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["84"]["Thickness"] = 1.5;
RullzsyHub["84"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Slider.Title
RullzsyHub["85"] = Instance.new("TextLabel", RullzsyHub["82"]);
RullzsyHub["85"]["TextWrapped"] = true;
RullzsyHub["85"]["Interactable"] = false;
RullzsyHub["85"]["BorderSizePixel"] = 0;
RullzsyHub["85"]["TextSize"] = 16;
RullzsyHub["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["85"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["85"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["85"]["BackgroundTransparency"] = 1;
RullzsyHub["85"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["85"]["Text"] = [[Slider]];
RullzsyHub["85"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["85"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Slider.UIPadding
RullzsyHub["86"] = Instance.new("UIPadding", RullzsyHub["82"]);
RullzsyHub["86"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["86"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["86"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["86"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Slider.UIListLayout
RullzsyHub["87"] = Instance.new("UIListLayout", RullzsyHub["82"]);
RullzsyHub["87"]["Padding"] = UDim.new(0, 5);
RullzsyHub["87"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Slider.Description
RullzsyHub["88"] = Instance.new("TextLabel", RullzsyHub["82"]);
RullzsyHub["88"]["TextWrapped"] = true;
RullzsyHub["88"]["Interactable"] = false;
RullzsyHub["88"]["BorderSizePixel"] = 0;
RullzsyHub["88"]["TextSize"] = 16;
RullzsyHub["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["88"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["88"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["88"]["BackgroundTransparency"] = 1;
RullzsyHub["88"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["88"]["Visible"] = false;
RullzsyHub["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["88"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["88"]["LayoutOrder"] = 1;
RullzsyHub["88"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["88"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Slider.SliderFrame
RullzsyHub["89"] = Instance.new("Frame", RullzsyHub["82"]);
RullzsyHub["89"]["ZIndex"] = 0;
RullzsyHub["89"]["BorderSizePixel"] = 0;
RullzsyHub["89"]["Size"] = UDim2.new(1, 0, 0, 25);
RullzsyHub["89"]["Name"] = [[SliderFrame]];
RullzsyHub["89"]["LayoutOrder"] = 2;
RullzsyHub["89"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Slider.SliderFrame.Frame
RullzsyHub["8a"] = Instance.new("Frame", RullzsyHub["89"]);
RullzsyHub["8a"]["ZIndex"] = 0;
RullzsyHub["8a"]["BorderSizePixel"] = 0;
RullzsyHub["8a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["8a"]["Size"] = UDim2.new(1, 0, 0, 20);
RullzsyHub["8a"]["Position"] = UDim2.new(0, 0, 0.5, 0);
RullzsyHub["8a"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.DropShadow
RullzsyHub["8b"] = Instance.new("ImageLabel", RullzsyHub["8a"]);
RullzsyHub["8b"]["ZIndex"] = 0;
RullzsyHub["8b"]["BorderSizePixel"] = 0;
RullzsyHub["8b"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
RullzsyHub["8b"]["ScaleType"] = Enum.ScaleType.Slice;
RullzsyHub["8b"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["8b"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["8b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["8b"]["Image"] = [[rbxassetid://6014261993]];
RullzsyHub["8b"]["Size"] = UDim2.new(1, 25, 1, 25);
RullzsyHub["8b"]["BackgroundTransparency"] = 1;
RullzsyHub["8b"]["Name"] = [[DropShadow]];
RullzsyHub["8b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider
RullzsyHub["8c"] = Instance.new("CanvasGroup", RullzsyHub["8a"]);
RullzsyHub["8c"]["BorderSizePixel"] = 0;
RullzsyHub["8c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["8c"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["8c"]["Name"] = [[Slider]];


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.UICorner
RullzsyHub["8d"] = Instance.new("UICorner", RullzsyHub["8c"]);
RullzsyHub["8d"]["CornerRadius"] = UDim.new(0, 5);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.UIStroke
RullzsyHub["8e"] = Instance.new("UIStroke", RullzsyHub["8c"]);
RullzsyHub["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["8e"]["Thickness"] = 1.5;
RullzsyHub["8e"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.UIPadding
RullzsyHub["8f"] = Instance.new("UIPadding", RullzsyHub["8c"]);
RullzsyHub["8f"]["PaddingTop"] = UDim.new(0, 2);
RullzsyHub["8f"]["PaddingRight"] = UDim.new(0, 2);
RullzsyHub["8f"]["PaddingLeft"] = UDim.new(0, 2);
RullzsyHub["8f"]["PaddingBottom"] = UDim.new(0, 2);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Trigger
RullzsyHub["90"] = Instance.new("TextButton", RullzsyHub["8c"]);
RullzsyHub["90"]["BorderSizePixel"] = 0;
RullzsyHub["90"]["TextSize"] = 14;
RullzsyHub["90"]["AutoButtonColor"] = false;
RullzsyHub["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RullzsyHub["90"]["BackgroundTransparency"] = 1;
RullzsyHub["90"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["90"]["Text"] = [[]];
RullzsyHub["90"]["Name"] = [[Trigger]];


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill
RullzsyHub["91"] = Instance.new("ImageButton", RullzsyHub["8c"]);
RullzsyHub["91"]["Active"] = false;
RullzsyHub["91"]["Interactable"] = false;
RullzsyHub["91"]["BorderSizePixel"] = 0;
RullzsyHub["91"]["AutoButtonColor"] = false;
RullzsyHub["91"]["BackgroundTransparency"] = 1;
RullzsyHub["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["91"]["Selectable"] = false;
RullzsyHub["91"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["91"]["Size"] = UDim2.new(0, 0, 1, 0);
RullzsyHub["91"]["ClipsDescendants"] = true;
RullzsyHub["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["91"]["Name"] = [[Fill]];
RullzsyHub["91"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.UICorner
RullzsyHub["92"] = Instance.new("UICorner", RullzsyHub["91"]);
RullzsyHub["92"]["CornerRadius"] = UDim.new(0, 4);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.UIStroke
RullzsyHub["93"] = Instance.new("UIStroke", RullzsyHub["91"]);
RullzsyHub["93"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["93"]["Thickness"] = 1.5;
RullzsyHub["93"]["Color"] = Color3.fromRGB(220, 40, 40);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient
RullzsyHub["94"] = Instance.new("ImageButton", RullzsyHub["91"]);
RullzsyHub["94"]["Active"] = false;
RullzsyHub["94"]["Interactable"] = false;
RullzsyHub["94"]["BorderSizePixel"] = 0;
RullzsyHub["94"]["AutoButtonColor"] = false;
RullzsyHub["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["94"]["Selectable"] = false;
RullzsyHub["94"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["94"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["94"]["Name"] = [[BackgroundGradient]];
RullzsyHub["94"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UICorner
RullzsyHub["95"] = Instance.new("UICorner", RullzsyHub["94"]);
RullzsyHub["95"]["CornerRadius"] = UDim.new(0, 4);


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
RullzsyHub["96"] = Instance.new("UIGradient", RullzsyHub["94"]);
RullzsyHub["96"]["Enabled"] = false;
RullzsyHub["96"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
RullzsyHub["97"] = Instance.new("UIGradient", RullzsyHub["94"]);
RullzsyHub["97"]["Enabled"] = false;
RullzsyHub["97"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
RullzsyHub["98"] = Instance.new("UIGradient", RullzsyHub["94"]);
RullzsyHub["98"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Slider.SliderFrame.Frame.ValueText
RullzsyHub["99"] = Instance.new("TextLabel", RullzsyHub["8a"]);
RullzsyHub["99"]["TextWrapped"] = true;
RullzsyHub["99"]["Interactable"] = false;
RullzsyHub["99"]["ZIndex"] = 2;
RullzsyHub["99"]["BorderSizePixel"] = 0;
RullzsyHub["99"]["TextSize"] = 14;
RullzsyHub["99"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["99"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["99"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["99"]["BackgroundTransparency"] = 1;
RullzsyHub["99"]["RichText"] = true;
RullzsyHub["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["99"]["Size"] = UDim2.new(1, -15, 1, 0);
RullzsyHub["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["99"]["Text"] = [[0]];
RullzsyHub["99"]["Name"] = [[ValueText]];
RullzsyHub["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.TextBox
RullzsyHub["9a"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["9a"]["Visible"] = false;
RullzsyHub["9a"]["BorderSizePixel"] = 0;
RullzsyHub["9a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["9a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["9a"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["9a"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["9a"]["Name"] = [[TextBox]];


-- RullzsyHub.Templates.TextBox.UICorner
RullzsyHub["9b"] = Instance.new("UICorner", RullzsyHub["9a"]);
RullzsyHub["9b"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.TextBox.UIStroke
RullzsyHub["9c"] = Instance.new("UIStroke", RullzsyHub["9a"]);
RullzsyHub["9c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["9c"]["Thickness"] = 1.5;
RullzsyHub["9c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.TextBox.Title
RullzsyHub["9d"] = Instance.new("TextLabel", RullzsyHub["9a"]);
RullzsyHub["9d"]["TextWrapped"] = true;
RullzsyHub["9d"]["Interactable"] = false;
RullzsyHub["9d"]["BorderSizePixel"] = 0;
RullzsyHub["9d"]["TextSize"] = 16;
RullzsyHub["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["9d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["9d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["9d"]["BackgroundTransparency"] = 1;
RullzsyHub["9d"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["9d"]["Text"] = [[Input Textbox]];
RullzsyHub["9d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["9d"]["Name"] = [[Title]];


-- RullzsyHub.Templates.TextBox.UIPadding
RullzsyHub["9e"] = Instance.new("UIPadding", RullzsyHub["9a"]);
RullzsyHub["9e"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["9e"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["9e"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["9e"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.TextBox.UIListLayout
RullzsyHub["9f"] = Instance.new("UIListLayout", RullzsyHub["9a"]);
RullzsyHub["9f"]["Padding"] = UDim.new(0, 10);
RullzsyHub["9f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.TextBox.Description
RullzsyHub["a0"] = Instance.new("TextLabel", RullzsyHub["9a"]);
RullzsyHub["a0"]["TextWrapped"] = true;
RullzsyHub["a0"]["Interactable"] = false;
RullzsyHub["a0"]["BorderSizePixel"] = 0;
RullzsyHub["a0"]["TextSize"] = 16;
RullzsyHub["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["a0"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["a0"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["a0"]["BackgroundTransparency"] = 1;
RullzsyHub["a0"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["a0"]["Visible"] = false;
RullzsyHub["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["a0"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["a0"]["LayoutOrder"] = 1;
RullzsyHub["a0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a0"]["Name"] = [[Description]];


-- RullzsyHub.Templates.TextBox.BoxFrame
RullzsyHub["a1"] = Instance.new("Frame", RullzsyHub["9a"]);
RullzsyHub["a1"]["ZIndex"] = 0;
RullzsyHub["a1"]["BorderSizePixel"] = 0;
RullzsyHub["a1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a1"]["Size"] = UDim2.new(1, 0, 0, 25);
RullzsyHub["a1"]["Name"] = [[BoxFrame]];
RullzsyHub["a1"]["LayoutOrder"] = 2;
RullzsyHub["a1"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.TextBox.BoxFrame.DropShadow
RullzsyHub["a2"] = Instance.new("ImageLabel", RullzsyHub["a1"]);
RullzsyHub["a2"]["ZIndex"] = 0;
RullzsyHub["a2"]["BorderSizePixel"] = 0;
RullzsyHub["a2"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
RullzsyHub["a2"]["ScaleType"] = Enum.ScaleType.Slice;
RullzsyHub["a2"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["a2"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["a2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["a2"]["Image"] = [[rbxassetid://6014261993]];
RullzsyHub["a2"]["Size"] = UDim2.new(1, 35, 1, 30);
RullzsyHub["a2"]["BackgroundTransparency"] = 1;
RullzsyHub["a2"]["Name"] = [[DropShadow]];
RullzsyHub["a2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame
RullzsyHub["a3"] = Instance.new("Frame", RullzsyHub["a1"]);
RullzsyHub["a3"]["BorderSizePixel"] = 0;
RullzsyHub["a3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["a3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a3"]["Size"] = UDim2.new(1, 0, 0, 25);
RullzsyHub["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame.UICorner
RullzsyHub["a4"] = Instance.new("UICorner", RullzsyHub["a3"]);
RullzsyHub["a4"]["CornerRadius"] = UDim.new(0, 5);


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame.UIStroke
RullzsyHub["a5"] = Instance.new("UIStroke", RullzsyHub["a3"]);
RullzsyHub["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["a5"]["Thickness"] = 1.5;
RullzsyHub["a5"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame.UIListLayout
RullzsyHub["a6"] = Instance.new("UIListLayout", RullzsyHub["a3"]);
RullzsyHub["a6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
RullzsyHub["a6"]["Padding"] = UDim.new(0, 5);
RullzsyHub["a6"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["a6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame.TextBox
RullzsyHub["a7"] = Instance.new("TextBox", RullzsyHub["a3"]);
RullzsyHub["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["a7"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
RullzsyHub["a7"]["BorderSizePixel"] = 0;
RullzsyHub["a7"]["TextWrapped"] = true;
RullzsyHub["a7"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
RullzsyHub["a7"]["TextSize"] = 14;
RullzsyHub["a7"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["a7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["a7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a7"]["ClipsDescendants"] = true;
RullzsyHub["a7"]["PlaceholderText"] = [[Input here...]];
RullzsyHub["a7"]["Size"] = UDim2.new(1, 0, 0, 25);
RullzsyHub["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["a7"]["Text"] = [[]];
RullzsyHub["a7"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.TextBox.BoxFrame.Frame.TextBox.UIPadding
RullzsyHub["a8"] = Instance.new("UIPadding", RullzsyHub["a7"]);
RullzsyHub["a8"]["PaddingTop"] = UDim.new(0, 5);
RullzsyHub["a8"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["a8"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["a8"]["PaddingBottom"] = UDim.new(0, 5);


-- RullzsyHub.Templates.Dropdown
RullzsyHub["a9"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["a9"]["BorderSizePixel"] = 0;
RullzsyHub["a9"]["AutoButtonColor"] = false;
RullzsyHub["a9"]["Visible"] = false;
RullzsyHub["a9"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["a9"]["Selectable"] = false;
RullzsyHub["a9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a9"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["a9"]["Name"] = [[Dropdown]];
RullzsyHub["a9"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- RullzsyHub.Templates.Dropdown.UICorner
RullzsyHub["aa"] = Instance.new("UICorner", RullzsyHub["a9"]);
RullzsyHub["aa"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Dropdown.UIStroke
RullzsyHub["ab"] = Instance.new("UIStroke", RullzsyHub["a9"]);
RullzsyHub["ab"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["ab"]["Thickness"] = 1.5;
RullzsyHub["ab"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Dropdown.Title
RullzsyHub["ac"] = Instance.new("TextLabel", RullzsyHub["a9"]);
RullzsyHub["ac"]["TextWrapped"] = true;
RullzsyHub["ac"]["BorderSizePixel"] = 0;
RullzsyHub["ac"]["TextSize"] = 16;
RullzsyHub["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["ac"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["ac"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["ac"]["BackgroundTransparency"] = 1;
RullzsyHub["ac"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["ac"]["Text"] = [[Dropdown]];
RullzsyHub["ac"]["Name"] = [[Title]];
RullzsyHub["ac"]["Position"] = UDim2.new(0.03135, 0, 0, 0);


-- RullzsyHub.Templates.Dropdown.Title.ClickIcon
RullzsyHub["ad"] = Instance.new("ImageButton", RullzsyHub["ac"]);
RullzsyHub["ad"]["BorderSizePixel"] = 0;
RullzsyHub["ad"]["AutoButtonColor"] = false;
RullzsyHub["ad"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["ad"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["ad"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["ad"]["Image"] = [[rbxassetid://77563793724007]];
RullzsyHub["ad"]["Size"] = UDim2.new(0, 23, 0, 23);
RullzsyHub["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["ad"]["Name"] = [[ClickIcon]];
RullzsyHub["ad"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame
RullzsyHub["ae"] = Instance.new("ImageButton", RullzsyHub["ac"]);
RullzsyHub["ae"]["Active"] = false;
RullzsyHub["ae"]["BorderSizePixel"] = 0;
RullzsyHub["ae"]["BackgroundTransparency"] = 1;
RullzsyHub["ae"]["Selectable"] = false;
RullzsyHub["ae"]["ZIndex"] = 0;
RullzsyHub["ae"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["ae"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["ae"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["ae"]["Name"] = [[BoxFrame]];
RullzsyHub["ae"]["Position"] = UDim2.new(1, -33, 0.5, 0);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.DropShadow
RullzsyHub["af"] = Instance.new("ImageLabel", RullzsyHub["ae"]);
RullzsyHub["af"]["Interactable"] = false;
RullzsyHub["af"]["ZIndex"] = 0;
RullzsyHub["af"]["BorderSizePixel"] = 0;
RullzsyHub["af"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
RullzsyHub["af"]["ScaleType"] = Enum.ScaleType.Slice;
RullzsyHub["af"]["ImageTransparency"] = 0.75;
RullzsyHub["af"]["AutomaticSize"] = Enum.AutomaticSize.X;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["af"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["af"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["af"]["Image"] = [[rbxassetid://6014261993]];
RullzsyHub["af"]["Size"] = UDim2.new(1, 28, 1, 28);
RullzsyHub["af"]["Visible"] = false;
RullzsyHub["af"]["BackgroundTransparency"] = 1;
RullzsyHub["af"]["Name"] = [[DropShadow]];
RullzsyHub["af"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger
RullzsyHub["b0"] = Instance.new("ImageButton", RullzsyHub["ae"]);
RullzsyHub["b0"]["BorderSizePixel"] = 0;
RullzsyHub["b0"]["AutoButtonColor"] = false;
RullzsyHub["b0"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["b0"]["Selectable"] = false;
RullzsyHub["b0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["b0"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["b0"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["b0"]["Name"] = [[Trigger]];
RullzsyHub["b0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger.UICorner
RullzsyHub["b1"] = Instance.new("UICorner", RullzsyHub["b0"]);
RullzsyHub["b1"]["CornerRadius"] = UDim.new(0, 5);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIStroke
RullzsyHub["b2"] = Instance.new("UIStroke", RullzsyHub["b0"]);
RullzsyHub["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["b2"]["Thickness"] = 1.5;
RullzsyHub["b2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIListLayout
RullzsyHub["b3"] = Instance.new("UIListLayout", RullzsyHub["b0"]);
RullzsyHub["b3"]["Padding"] = UDim.new(0, 5);
RullzsyHub["b3"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["b3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger.Title
RullzsyHub["b4"] = Instance.new("TextLabel", RullzsyHub["b0"]);
RullzsyHub["b4"]["TextWrapped"] = true;
RullzsyHub["b4"]["Interactable"] = false;
RullzsyHub["b4"]["BorderSizePixel"] = 0;
RullzsyHub["b4"]["TextSize"] = 16;
RullzsyHub["b4"]["TextScaled"] = true;
RullzsyHub["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["b4"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["b4"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["b4"]["BackgroundTransparency"] = 1;
RullzsyHub["b4"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["b4"]["Size"] = UDim2.new(0, 15, 0, 14);
RullzsyHub["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["b4"]["Text"] = [[]];
RullzsyHub["b4"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["b4"]["Name"] = [[Title]];
RullzsyHub["b4"]["Position"] = UDim2.new(-0.00345, 0, 0.5, 0);


-- RullzsyHub.Templates.Dropdown.Title.BoxFrame.Trigger.UIPadding
RullzsyHub["b5"] = Instance.new("UIPadding", RullzsyHub["b0"]);
RullzsyHub["b5"]["PaddingRight"] = UDim.new(0, 5);
RullzsyHub["b5"]["PaddingLeft"] = UDim.new(0, 5);


-- RullzsyHub.Templates.Dropdown.UIPadding
RullzsyHub["b6"] = Instance.new("UIPadding", RullzsyHub["a9"]);
RullzsyHub["b6"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["b6"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["b6"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["b6"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Dropdown.UIListLayout
RullzsyHub["b7"] = Instance.new("UIListLayout", RullzsyHub["a9"]);
RullzsyHub["b7"]["Padding"] = UDim.new(0, 5);
RullzsyHub["b7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Dropdown.Description
RullzsyHub["b8"] = Instance.new("TextLabel", RullzsyHub["a9"]);
RullzsyHub["b8"]["TextWrapped"] = true;
RullzsyHub["b8"]["Interactable"] = false;
RullzsyHub["b8"]["BorderSizePixel"] = 0;
RullzsyHub["b8"]["TextSize"] = 16;
RullzsyHub["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["b8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["b8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["b8"]["BackgroundTransparency"] = 1;
RullzsyHub["b8"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["b8"]["Visible"] = false;
RullzsyHub["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["b8"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["b8"]["LayoutOrder"] = 1;
RullzsyHub["b8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["b8"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Dropdown.UIGradient
RullzsyHub["b9"] = Instance.new("UIGradient", RullzsyHub["a9"]);
RullzsyHub["b9"]["Enabled"] = false;
RullzsyHub["b9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Dropdown.UIGradient
RullzsyHub["ba"] = Instance.new("UIGradient", RullzsyHub["a9"]);
RullzsyHub["ba"]["Enabled"] = false;
RullzsyHub["ba"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Dropdown.UIGradient
RullzsyHub["bb"] = Instance.new("UIGradient", RullzsyHub["a9"]);
RullzsyHub["bb"]["Enabled"] = false;
RullzsyHub["bb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.DropdownList
RullzsyHub["bc"] = Instance.new("Folder", RullzsyHub["41"]);
RullzsyHub["bc"]["Name"] = [[DropdownList]];


-- RullzsyHub.Templates.DropdownList.DropdownItems
RullzsyHub["bd"] = Instance.new("ScrollingFrame", RullzsyHub["bc"]);
RullzsyHub["bd"]["Visible"] = false;
RullzsyHub["bd"]["Active"] = true;
RullzsyHub["bd"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
RullzsyHub["bd"]["BorderSizePixel"] = 0;
RullzsyHub["bd"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["bd"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
RullzsyHub["bd"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["bd"]["Name"] = [[DropdownItems]];
RullzsyHub["bd"]["Selectable"] = false;
RullzsyHub["bd"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["bd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RullzsyHub["bd"]["Size"] = UDim2.new(1, 0, 1, -50);
RullzsyHub["bd"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
RullzsyHub["bd"]["Position"] = UDim2.new(0, 0, 0, 50);
RullzsyHub["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["bd"]["ScrollBarThickness"] = 5;
RullzsyHub["bd"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DropdownList.DropdownItems.UIListLayout
RullzsyHub["be"] = Instance.new("UIListLayout", RullzsyHub["bd"]);
RullzsyHub["be"]["Padding"] = UDim.new(0, 15);
RullzsyHub["be"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DropdownList.DropdownItems.UIPadding
RullzsyHub["bf"] = Instance.new("UIPadding", RullzsyHub["bd"]);
RullzsyHub["bf"]["PaddingTop"] = UDim.new(0, 2);
RullzsyHub["bf"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["bf"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["bf"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DropdownList.DropdownItemsSearch
RullzsyHub["c0"] = Instance.new("ScrollingFrame", RullzsyHub["bc"]);
RullzsyHub["c0"]["Visible"] = false;
RullzsyHub["c0"]["Active"] = true;
RullzsyHub["c0"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
RullzsyHub["c0"]["BorderSizePixel"] = 0;
RullzsyHub["c0"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["c0"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
RullzsyHub["c0"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["c0"]["Name"] = [[DropdownItemsSearch]];
RullzsyHub["c0"]["Selectable"] = false;
RullzsyHub["c0"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["c0"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RullzsyHub["c0"]["Size"] = UDim2.new(1, 0, 1, -50);
RullzsyHub["c0"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
RullzsyHub["c0"]["Position"] = UDim2.new(0, 0, 0, 50);
RullzsyHub["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["c0"]["ScrollBarThickness"] = 5;
RullzsyHub["c0"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DropdownList.DropdownItemsSearch.UIListLayout
RullzsyHub["c1"] = Instance.new("UIListLayout", RullzsyHub["c0"]);
RullzsyHub["c1"]["Padding"] = UDim.new(0, 15);
RullzsyHub["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DropdownList.DropdownItemsSearch.UIPadding
RullzsyHub["c2"] = Instance.new("UIPadding", RullzsyHub["c0"]);
RullzsyHub["c2"]["PaddingTop"] = UDim.new(0, 2);
RullzsyHub["c2"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["c2"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["c2"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DropdownButton
RullzsyHub["c3"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["c3"]["BorderSizePixel"] = 0;
RullzsyHub["c3"]["AutoButtonColor"] = false;
RullzsyHub["c3"]["Visible"] = false;
RullzsyHub["c3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["c3"]["Selectable"] = false;
RullzsyHub["c3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["c3"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["c3"]["Name"] = [[DropdownButton]];
RullzsyHub["c3"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- RullzsyHub.Templates.DropdownButton.UICorner
RullzsyHub["c4"] = Instance.new("UICorner", RullzsyHub["c3"]);
RullzsyHub["c4"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.DropdownButton.Frame
RullzsyHub["c5"] = Instance.new("Frame", RullzsyHub["c3"]);
RullzsyHub["c5"]["BorderSizePixel"] = 0;
RullzsyHub["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["c5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["c5"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["c5"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DropdownButton.Frame.UIListLayout
RullzsyHub["c6"] = Instance.new("UIListLayout", RullzsyHub["c5"]);
RullzsyHub["c6"]["Padding"] = UDim.new(0, 5);
RullzsyHub["c6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DropdownButton.Frame.UIPadding
RullzsyHub["c7"] = Instance.new("UIPadding", RullzsyHub["c5"]);
RullzsyHub["c7"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["c7"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["c7"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["c7"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DropdownButton.Frame.Title
RullzsyHub["c8"] = Instance.new("TextLabel", RullzsyHub["c5"]);
RullzsyHub["c8"]["TextWrapped"] = true;
RullzsyHub["c8"]["Interactable"] = false;
RullzsyHub["c8"]["BorderSizePixel"] = 0;
RullzsyHub["c8"]["TextSize"] = 16;
RullzsyHub["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["c8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["c8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["c8"]["BackgroundTransparency"] = 1;
RullzsyHub["c8"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["c8"]["Text"] = [[Button]];
RullzsyHub["c8"]["Name"] = [[Title]];


-- RullzsyHub.Templates.DropdownButton.Frame.Description
RullzsyHub["c9"] = Instance.new("TextLabel", RullzsyHub["c5"]);
RullzsyHub["c9"]["TextWrapped"] = true;
RullzsyHub["c9"]["Interactable"] = false;
RullzsyHub["c9"]["BorderSizePixel"] = 0;
RullzsyHub["c9"]["TextSize"] = 16;
RullzsyHub["c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["c9"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["c9"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["c9"]["BackgroundTransparency"] = 1;
RullzsyHub["c9"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["c9"]["Visible"] = false;
RullzsyHub["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["c9"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["c9"]["LayoutOrder"] = 1;
RullzsyHub["c9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["c9"]["Name"] = [[Description]];


-- RullzsyHub.Templates.DropdownButton.Frame.UIGradient
RullzsyHub["ca"] = Instance.new("UIGradient", RullzsyHub["c5"]);
RullzsyHub["ca"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.DropdownButton.Frame.UIGradient
RullzsyHub["cb"] = Instance.new("UIGradient", RullzsyHub["c5"]);
RullzsyHub["cb"]["Enabled"] = false;
RullzsyHub["cb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.DropdownButton.Frame.UIGradient
RullzsyHub["cc"] = Instance.new("UIGradient", RullzsyHub["c5"]);
RullzsyHub["cc"]["Enabled"] = false;
RullzsyHub["cc"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.DropdownButton.Frame.UICorner
RullzsyHub["cd"] = Instance.new("UICorner", RullzsyHub["c5"]);
RullzsyHub["cd"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.DropdownButton.UIStroke
RullzsyHub["ce"] = Instance.new("UIStroke", RullzsyHub["c3"]);
RullzsyHub["ce"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["ce"]["Thickness"] = 1.5;
RullzsyHub["ce"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Code
RullzsyHub["cf"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["cf"]["Visible"] = false;
RullzsyHub["cf"]["BorderSizePixel"] = 0;
RullzsyHub["cf"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["cf"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["cf"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["cf"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["cf"]["Name"] = [[Code]];


-- RullzsyHub.Templates.Code.UICorner
RullzsyHub["d0"] = Instance.new("UICorner", RullzsyHub["cf"]);
RullzsyHub["d0"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Code.UIStroke
RullzsyHub["d1"] = Instance.new("UIStroke", RullzsyHub["cf"]);
RullzsyHub["d1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["d1"]["Thickness"] = 1.5;
RullzsyHub["d1"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Code.Title
RullzsyHub["d2"] = Instance.new("TextLabel", RullzsyHub["cf"]);
RullzsyHub["d2"]["TextWrapped"] = true;
RullzsyHub["d2"]["Interactable"] = false;
RullzsyHub["d2"]["BorderSizePixel"] = 0;
RullzsyHub["d2"]["TextSize"] = 16;
RullzsyHub["d2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["d2"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["d2"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["d2"]["BackgroundTransparency"] = 1;
RullzsyHub["d2"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d2"]["Text"] = [[Title]];
RullzsyHub["d2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["d2"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Code.UIPadding
RullzsyHub["d3"] = Instance.new("UIPadding", RullzsyHub["cf"]);
RullzsyHub["d3"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["d3"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["d3"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["d3"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Code.UIListLayout
RullzsyHub["d4"] = Instance.new("UIListLayout", RullzsyHub["cf"]);
RullzsyHub["d4"]["Padding"] = UDim.new(0, 5);
RullzsyHub["d4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Code.Code
RullzsyHub["d5"] = Instance.new("TextBox", RullzsyHub["cf"]);
RullzsyHub["d5"]["Name"] = [[Code]];
RullzsyHub["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["d5"]["BorderSizePixel"] = 0;
RullzsyHub["d5"]["TextEditable"] = false;
RullzsyHub["d5"]["TextWrapped"] = true;
RullzsyHub["d5"]["TextSize"] = 16;
RullzsyHub["d5"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["d5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["d5"]["Selectable"] = false;
RullzsyHub["d5"]["MultiLine"] = true;
RullzsyHub["d5"]["ClearTextOnFocus"] = false;
RullzsyHub["d5"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d5"]["Text"] = [[print("Hello World!")]];
RullzsyHub["d5"]["LayoutOrder"] = 1;
RullzsyHub["d5"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Section
RullzsyHub["d6"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["d6"]["Visible"] = false;
RullzsyHub["d6"]["BorderSizePixel"] = 0;
RullzsyHub["d6"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["d6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["d6"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["d6"]["Position"] = UDim2.new(0, 0, 0.43728, 0);
RullzsyHub["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d6"]["Name"] = [[Section]];
RullzsyHub["d6"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert SelectionImageObject, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- RullzsyHub.Templates.Section.Button
RullzsyHub["d7"] = Instance.new("ImageButton", RullzsyHub["d6"]);
RullzsyHub["d7"]["BorderSizePixel"] = 0;
RullzsyHub["d7"]["AutoButtonColor"] = false;
RullzsyHub["d7"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["d7"]["Selectable"] = false;
RullzsyHub["d7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["d7"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d7"]["Name"] = [[Button]];


-- RullzsyHub.Templates.Section.Button.UICorner
RullzsyHub["d8"] = Instance.new("UICorner", RullzsyHub["d7"]);
RullzsyHub["d8"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.Section.Button.UIStroke
RullzsyHub["d9"] = Instance.new("UIStroke", RullzsyHub["d7"]);
RullzsyHub["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["d9"]["Thickness"] = 1.5;
RullzsyHub["d9"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Section.Button.Title
RullzsyHub["da"] = Instance.new("TextLabel", RullzsyHub["d7"]);
RullzsyHub["da"]["TextWrapped"] = true;
RullzsyHub["da"]["Interactable"] = false;
RullzsyHub["da"]["BorderSizePixel"] = 0;
RullzsyHub["da"]["TextSize"] = 16;
RullzsyHub["da"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["da"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["da"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["da"]["BackgroundTransparency"] = 1;
RullzsyHub["da"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["da"]["Text"] = [[Section]];
RullzsyHub["da"]["Name"] = [[Title]];


-- RullzsyHub.Templates.Section.Button.Title.Arrow
RullzsyHub["db"] = Instance.new("ImageButton", RullzsyHub["da"]);
RullzsyHub["db"]["BorderSizePixel"] = 0;
RullzsyHub["db"]["AutoButtonColor"] = false;
RullzsyHub["db"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["db"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["db"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["db"]["Image"] = [[rbxassetid://120292618616139]];
RullzsyHub["db"]["Size"] = UDim2.new(0, 23, 0, 23);
RullzsyHub["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["db"]["Name"] = [[Arrow]];
RullzsyHub["db"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- RullzsyHub.Templates.Section.Button.UIPadding
RullzsyHub["dc"] = Instance.new("UIPadding", RullzsyHub["d7"]);
RullzsyHub["dc"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["dc"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["dc"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["dc"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.Section.Button.UIListLayout
RullzsyHub["dd"] = Instance.new("UIListLayout", RullzsyHub["d7"]);
RullzsyHub["dd"]["Padding"] = UDim.new(0, 5);
RullzsyHub["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Section.Button.Description
RullzsyHub["de"] = Instance.new("TextLabel", RullzsyHub["d7"]);
RullzsyHub["de"]["TextWrapped"] = true;
RullzsyHub["de"]["Interactable"] = false;
RullzsyHub["de"]["BorderSizePixel"] = 0;
RullzsyHub["de"]["TextSize"] = 16;
RullzsyHub["de"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["de"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["de"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["de"]["BackgroundTransparency"] = 1;
RullzsyHub["de"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["de"]["Visible"] = false;
RullzsyHub["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["de"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
RullzsyHub["de"]["LayoutOrder"] = 1;
RullzsyHub["de"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["de"]["Name"] = [[Description]];


-- RullzsyHub.Templates.Section.Button.UIGradient
RullzsyHub["df"] = Instance.new("UIGradient", RullzsyHub["d7"]);
RullzsyHub["df"]["Enabled"] = false;
RullzsyHub["df"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Section.Button.UIGradient
RullzsyHub["e0"] = Instance.new("UIGradient", RullzsyHub["d7"]);
RullzsyHub["e0"]["Enabled"] = false;
RullzsyHub["e0"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 1)};
RullzsyHub["e0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Section.Button.UIGradient
RullzsyHub["e1"] = Instance.new("UIGradient", RullzsyHub["d7"]);
RullzsyHub["e1"]["Enabled"] = false;
RullzsyHub["e1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 60, 60)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(170, 25, 25)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 80, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 60, 60))};


-- RullzsyHub.Templates.Section.Button.UIStroke
RullzsyHub["e2"] = Instance.new("UIStroke", RullzsyHub["d7"]);
RullzsyHub["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["e2"]["Thickness"] = 1.5;
RullzsyHub["e2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.Section.Frame
RullzsyHub["e3"] = Instance.new("Frame", RullzsyHub["d6"]);
RullzsyHub["e3"]["Visible"] = false;
RullzsyHub["e3"]["BorderSizePixel"] = 0;
RullzsyHub["e3"]["BackgroundColor3"] = Color3.fromRGB(180, 255, 200);
RullzsyHub["e3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["e3"]["Size"] = UDim2.new(1, 0, 0, 30);
RullzsyHub["e3"]["Position"] = UDim2.new(0, 0, 0, 35);
RullzsyHub["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["e3"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.Section.Frame.UIListLayout
RullzsyHub["e4"] = Instance.new("UIListLayout", RullzsyHub["e3"]);
RullzsyHub["e4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
RullzsyHub["e4"]["Padding"] = UDim.new(0, 10);
RullzsyHub["e4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.Section.Frame.UIPadding
RullzsyHub["e5"] = Instance.new("UIPadding", RullzsyHub["e3"]);
RullzsyHub["e5"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["e5"]["PaddingRight"] = UDim.new(0, 8);
RullzsyHub["e5"]["PaddingLeft"] = UDim.new(0, 8);


-- RullzsyHub.Templates.Section.Frame.Divider
RullzsyHub["e6"] = Instance.new("Frame", RullzsyHub["e3"]);
RullzsyHub["e6"]["BorderSizePixel"] = 0;
RullzsyHub["e6"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["e6"]["Size"] = UDim2.new(1, 0, 0, 3);
RullzsyHub["e6"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["e6"]["Name"] = [[Divider]];


-- RullzsyHub.Templates.DialogElements
RullzsyHub["e7"] = Instance.new("Folder", RullzsyHub["41"]);
RullzsyHub["e7"]["Name"] = [[DialogElements]];


-- RullzsyHub.Templates.DialogElements.DarkOverlayDialog
RullzsyHub["e8"] = Instance.new("Frame", RullzsyHub["e7"]);
RullzsyHub["e8"]["Visible"] = false;
RullzsyHub["e8"]["BorderSizePixel"] = 0;
RullzsyHub["e8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["e8"]["Name"] = [[DarkOverlayDialog]];
RullzsyHub["e8"]["BackgroundTransparency"] = 0.6;


-- RullzsyHub.Templates.DialogElements.DarkOverlayDialog.UICorner
RullzsyHub["e9"] = Instance.new("UICorner", RullzsyHub["e8"]);
RullzsyHub["e9"]["CornerRadius"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DialogElements.Dialog
RullzsyHub["ea"] = Instance.new("Frame", RullzsyHub["e7"]);
RullzsyHub["ea"]["Visible"] = false;
RullzsyHub["ea"]["ZIndex"] = 4;
RullzsyHub["ea"]["BorderSizePixel"] = 0;
RullzsyHub["ea"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
RullzsyHub["ea"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["ea"]["ClipsDescendants"] = true;
RullzsyHub["ea"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["ea"]["Size"] = UDim2.new(0, 250, 0, 0);
RullzsyHub["ea"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
RullzsyHub["ea"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["ea"]["Name"] = [[Dialog]];


-- RullzsyHub.Templates.DialogElements.Dialog.UICorner
RullzsyHub["eb"] = Instance.new("UICorner", RullzsyHub["ea"]);
RullzsyHub["eb"]["CornerRadius"] = UDim.new(0, 6);


-- RullzsyHub.Templates.DialogElements.Dialog.UIStroke
RullzsyHub["ec"] = Instance.new("UIStroke", RullzsyHub["ea"]);
RullzsyHub["ec"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["ec"]["Thickness"] = 1.5;
RullzsyHub["ec"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.DialogElements.Dialog.Title
RullzsyHub["ed"] = Instance.new("Frame", RullzsyHub["ea"]);
RullzsyHub["ed"]["BorderSizePixel"] = 0;
RullzsyHub["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["ed"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["ed"]["Size"] = UDim2.new(1, 0, 0, 25);
RullzsyHub["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["ed"]["Name"] = [[Title]];
RullzsyHub["ed"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DialogElements.Dialog.Title.TextLabel
RullzsyHub["ee"] = Instance.new("TextLabel", RullzsyHub["ed"]);
RullzsyHub["ee"]["Interactable"] = false;
RullzsyHub["ee"]["ZIndex"] = 0;
RullzsyHub["ee"]["BorderSizePixel"] = 0;
RullzsyHub["ee"]["TextSize"] = 20;
RullzsyHub["ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["ee"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["ee"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["ee"]["BackgroundTransparency"] = 1;
RullzsyHub["ee"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["ee"]["Size"] = UDim2.new(0, 0, 0, 20);
RullzsyHub["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["ee"]["Text"] = [[]];
RullzsyHub["ee"]["LayoutOrder"] = 1;
RullzsyHub["ee"]["AutomaticSize"] = Enum.AutomaticSize.XY;
RullzsyHub["ee"]["Position"] = UDim2.new(-0.05455, 12, 0.5, 0);


-- RullzsyHub.Templates.DialogElements.Dialog.Title.UIListLayout
RullzsyHub["ef"] = Instance.new("UIListLayout", RullzsyHub["ed"]);
RullzsyHub["ef"]["Padding"] = UDim.new(0, 10);
RullzsyHub["ef"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["ef"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
RullzsyHub["ef"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- RullzsyHub.Templates.DialogElements.Dialog.Title.UIPadding
RullzsyHub["f0"] = Instance.new("UIPadding", RullzsyHub["ed"]);
RullzsyHub["f0"]["PaddingTop"] = UDim.new(0, 5);
RullzsyHub["f0"]["PaddingRight"] = UDim.new(0, 15);
RullzsyHub["f0"]["PaddingLeft"] = UDim.new(0, 15);
RullzsyHub["f0"]["PaddingBottom"] = UDim.new(0, 5);


-- RullzsyHub.Templates.DialogElements.Dialog.Title.Icon
RullzsyHub["f1"] = Instance.new("ImageButton", RullzsyHub["ed"]);
RullzsyHub["f1"]["BorderSizePixel"] = 0;
RullzsyHub["f1"]["Visible"] = false;
RullzsyHub["f1"]["BackgroundTransparency"] = 1;
RullzsyHub["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f1"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["f1"]["Size"] = UDim2.new(0, 33, 0, 25);
RullzsyHub["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f1"]["Name"] = [[Icon]];
RullzsyHub["f1"]["Position"] = UDim2.new(0, 0, 0.2125, 0);


-- RullzsyHub.Templates.DialogElements.Dialog.Title.Icon.UIAspectRatioConstraint
RullzsyHub["f2"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["f1"]);



-- RullzsyHub.Templates.DialogElements.Dialog.UIListLayout
RullzsyHub["f3"] = Instance.new("UIListLayout", RullzsyHub["ea"]);
RullzsyHub["f3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
RullzsyHub["f3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DialogElements.Dialog.Content
RullzsyHub["f4"] = Instance.new("Frame", RullzsyHub["ea"]);
RullzsyHub["f4"]["Visible"] = false;
RullzsyHub["f4"]["ZIndex"] = 2;
RullzsyHub["f4"]["BorderSizePixel"] = 0;
RullzsyHub["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["f4"]["Position"] = UDim2.new(0, 0, 0.21886, 0);
RullzsyHub["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f4"]["Name"] = [[Content]];
RullzsyHub["f4"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DialogElements.Dialog.Content.UIListLayout
RullzsyHub["f5"] = Instance.new("UIListLayout", RullzsyHub["f4"]);
RullzsyHub["f5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["f5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DialogElements.Dialog.Content.UIPadding
RullzsyHub["f6"] = Instance.new("UIPadding", RullzsyHub["f4"]);
RullzsyHub["f6"]["PaddingTop"] = UDim.new(0, 5);
RullzsyHub["f6"]["PaddingRight"] = UDim.new(0, 15);
RullzsyHub["f6"]["PaddingLeft"] = UDim.new(0, 15);
RullzsyHub["f6"]["PaddingBottom"] = UDim.new(0, 5);


-- RullzsyHub.Templates.DialogElements.Dialog.Content.TextLabel
RullzsyHub["f7"] = Instance.new("TextLabel", RullzsyHub["f4"]);
RullzsyHub["f7"]["TextWrapped"] = true;
RullzsyHub["f7"]["Interactable"] = false;
RullzsyHub["f7"]["BorderSizePixel"] = 0;
RullzsyHub["f7"]["TextSize"] = 15;
RullzsyHub["f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["f7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
RullzsyHub["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["f7"]["TextColor3"] = Color3.fromRGB(145, 154, 173);
RullzsyHub["f7"]["BackgroundTransparency"] = 1;
RullzsyHub["f7"]["Size"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f7"]["Text"] = [[]];
RullzsyHub["f7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["f7"]["Position"] = UDim2.new(0, 0, 0.125, 0);


-- RullzsyHub.Templates.DialogElements.Dialog.UIPadding
RullzsyHub["f8"] = Instance.new("UIPadding", RullzsyHub["ea"]);
RullzsyHub["f8"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["f8"]["PaddingBottom"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DialogElements.Dialog.Buttons
RullzsyHub["f9"] = Instance.new("Frame", RullzsyHub["ea"]);
RullzsyHub["f9"]["ZIndex"] = 3;
RullzsyHub["f9"]["BorderSizePixel"] = 0;
RullzsyHub["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["f9"]["Size"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["f9"]["Position"] = UDim2.new(0, 0, 0.53017, 0);
RullzsyHub["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f9"]["Name"] = [[Buttons]];
RullzsyHub["f9"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DialogElements.Dialog.Buttons.UIListLayout
RullzsyHub["fa"] = Instance.new("UIListLayout", RullzsyHub["f9"]);
RullzsyHub["fa"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
RullzsyHub["fa"]["Padding"] = UDim.new(0, 10);
RullzsyHub["fa"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DialogElements.Dialog.Buttons.UIPadding
RullzsyHub["fb"] = Instance.new("UIPadding", RullzsyHub["f9"]);
RullzsyHub["fb"]["PaddingTop"] = UDim.new(0, 5);
RullzsyHub["fb"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["fb"]["PaddingLeft"] = UDim.new(0, 10);


-- RullzsyHub.Templates.DialogElements.DialogButton
RullzsyHub["fc"] = Instance.new("Frame", RullzsyHub["e7"]);
RullzsyHub["fc"]["Visible"] = false;
RullzsyHub["fc"]["BorderSizePixel"] = 0;
RullzsyHub["fc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["fc"]["AnchorPoint"] = Vector2.new(0.5, 1);
RullzsyHub["fc"]["Size"] = UDim2.new(1, 0, 0, 30);
RullzsyHub["fc"]["Position"] = UDim2.new(0.5, 0, 0.327, 0);
RullzsyHub["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["fc"]["Name"] = [[DialogButton]];
RullzsyHub["fc"]["BackgroundTransparency"] = 1;


-- RullzsyHub.Templates.DialogElements.DialogButton.Button
RullzsyHub["fd"] = Instance.new("TextButton", RullzsyHub["fc"]);
RullzsyHub["fd"]["BorderSizePixel"] = 0;
RullzsyHub["fd"]["AutoButtonColor"] = false;
RullzsyHub["fd"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
RullzsyHub["fd"]["Selectable"] = false;
RullzsyHub["fd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["fd"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["fd"]["Name"] = [[Button]];
RullzsyHub["fd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- RullzsyHub.Templates.DialogElements.DialogButton.Button.UICorner
RullzsyHub["fe"] = Instance.new("UICorner", RullzsyHub["fd"]);
RullzsyHub["fe"]["CornerRadius"] = UDim.new(0, 5);


-- RullzsyHub.Templates.DialogElements.DialogButton.Button.UIStroke
RullzsyHub["ff"] = Instance.new("UIStroke", RullzsyHub["fd"]);
RullzsyHub["ff"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["ff"]["Thickness"] = 1.5;
RullzsyHub["ff"]["Color"] = Color3.fromRGB(61, 61, 75);


-- RullzsyHub.Templates.DialogElements.DialogButton.Button.UIListLayout
RullzsyHub["100"] = Instance.new("UIListLayout", RullzsyHub["fd"]);
RullzsyHub["100"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
RullzsyHub["100"]["Padding"] = UDim.new(0, 5);
RullzsyHub["100"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["100"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.Templates.DialogElements.DialogButton.Button.Label
RullzsyHub["101"] = Instance.new("TextLabel", RullzsyHub["fd"]);
RullzsyHub["101"]["TextWrapped"] = true;
RullzsyHub["101"]["Interactable"] = false;
RullzsyHub["101"]["BorderSizePixel"] = 0;
RullzsyHub["101"]["TextSize"] = 14;
RullzsyHub["101"]["TextScaled"] = true;
RullzsyHub["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["101"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["101"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["101"]["BackgroundTransparency"] = 1;
RullzsyHub["101"]["Size"] = UDim2.new(1, 0, 0.45, 0);
RullzsyHub["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["101"]["Text"] = [[]];
RullzsyHub["101"]["Name"] = [[Label]];
RullzsyHub["101"]["Position"] = UDim2.new(0, 45, 0.083, 0);


-- RullzsyHub.NotificationList
RullzsyHub["102"] = Instance.new("Frame", RullzsyHub["1"]);
RullzsyHub["102"]["ZIndex"] = 10;
RullzsyHub["102"]["BorderSizePixel"] = 0;
RullzsyHub["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["102"]["AnchorPoint"] = Vector2.new(0.5, 0);
RullzsyHub["102"]["Size"] = UDim2.new(0, 630, 1, 0);
RullzsyHub["102"]["Position"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["102"]["Name"] = [[NotificationList]];
RullzsyHub["102"]["BackgroundTransparency"] = 1;


-- RullzsyHub.NotificationList.UIListLayout
RullzsyHub["103"] = Instance.new("UIListLayout", RullzsyHub["102"]);
RullzsyHub["103"]["Padding"] = UDim.new(0, 12);
RullzsyHub["103"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- RullzsyHub.NotificationList.UIPadding
RullzsyHub["104"] = Instance.new("UIPadding", RullzsyHub["102"]);
RullzsyHub["104"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["104"]["PaddingRight"] = UDim.new(0, 40);
RullzsyHub["104"]["PaddingLeft"] = UDim.new(0, 40);


-- RullzsyHub.FloatIcon
RullzsyHub["105"] = Instance.new("Frame", RullzsyHub["1"]);
RullzsyHub["105"]["Visible"] = false;
RullzsyHub["105"]["ZIndex"] = 0;
RullzsyHub["105"]["BorderSizePixel"] = 2;
RullzsyHub["105"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
RullzsyHub["105"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["105"]["ClipsDescendants"] = true;
RullzsyHub["105"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["105"]["Size"] = UDim2.new(0, 85, 0, 45);
RullzsyHub["105"]["Position"] = UDim2.new(0.5, 0, 0, 45);
RullzsyHub["105"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
RullzsyHub["105"]["Name"] = [[FloatIcon]];


-- RullzsyHub.FloatIcon.UICorner
RullzsyHub["106"] = Instance.new("UICorner", RullzsyHub["105"]);
RullzsyHub["106"]["CornerRadius"] = UDim.new(0, 10);


-- RullzsyHub.FloatIcon.UIStroke
RullzsyHub["107"] = Instance.new("UIStroke", RullzsyHub["105"]);
RullzsyHub["107"]["Transparency"] = 0.5;
RullzsyHub["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["107"]["Thickness"] = 1.5;
RullzsyHub["107"]["Color"] = Color3.fromRGB(95, 95, 117);


-- RullzsyHub.FloatIcon.UIPadding
RullzsyHub["108"] = Instance.new("UIPadding", RullzsyHub["105"]);
RullzsyHub["108"]["PaddingTop"] = UDim.new(0, 8);
RullzsyHub["108"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["108"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["108"]["PaddingBottom"] = UDim.new(0, 8);


-- RullzsyHub.FloatIcon.UIListLayout
RullzsyHub["109"] = Instance.new("UIListLayout", RullzsyHub["105"]);
RullzsyHub["109"]["Padding"] = UDim.new(0, 8);
RullzsyHub["109"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["109"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
RullzsyHub["109"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- RullzsyHub.FloatIcon.Icon
RullzsyHub["10a"] = Instance.new("ImageButton", RullzsyHub["105"]);
RullzsyHub["10a"]["Active"] = false;
RullzsyHub["10a"]["Interactable"] = false;
RullzsyHub["10a"]["BorderSizePixel"] = 0;
RullzsyHub["10a"]["AutoButtonColor"] = false;
RullzsyHub["10a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["10a"]["Image"] = [[rbxassetid://113216930555884]];
RullzsyHub["10a"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10a"]["Name"] = [[Icon]];
RullzsyHub["10a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- RullzsyHub.FloatIcon.Icon.UIAspectRatioConstraint
RullzsyHub["10b"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["10a"]);



-- RullzsyHub.FloatIcon.TextLabel
RullzsyHub["10c"] = Instance.new("TextLabel", RullzsyHub["105"]);
RullzsyHub["10c"]["Interactable"] = false;
RullzsyHub["10c"]["BorderSizePixel"] = 0;
RullzsyHub["10c"]["TextSize"] = 16;
RullzsyHub["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["10c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["10c"]["BackgroundTransparency"] = 1;
RullzsyHub["10c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["10c"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10c"]["Text"] = [[RullzsyHub]];
RullzsyHub["10c"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["10c"]["Position"] = UDim2.new(0.38615, 0, 0.53448, -1);


-- RullzsyHub.FloatIcon.Open
RullzsyHub["10d"] = Instance.new("ImageButton", RullzsyHub["105"]);
RullzsyHub["10d"]["BorderSizePixel"] = 0;
RullzsyHub["10d"]["AutoButtonColor"] = false;
RullzsyHub["10d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
RullzsyHub["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
RullzsyHub["10d"]["Selectable"] = false;
RullzsyHub["10d"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["10d"]["Image"] = [[rbxassetid://122219713887461]];
RullzsyHub["10d"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10d"]["Name"] = [[Open]];
RullzsyHub["10d"]["Position"] = UDim2.new(0, 128, 0.5, 0);


-- RullzsyHub.FloatIcon.Open.UIAspectRatioConstraint
RullzsyHub["10e"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["10d"]);



-- RullzsyHub.FloatIcon.Open.UICorner
RullzsyHub["10f"] = Instance.new("UICorner", RullzsyHub["10d"]);



-- Require RullzsyHub wrapper
local RullzsyHub_REQUIRE = require;
local RullzsyHub_MODULES = {};
local function require(Module:ModuleScript)
	local ModuleState = RullzsyHub_MODULES[Module];
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true;
			ModuleState.Value = ModuleState.Closure();
		end
		return ModuleState.Value;
	end;
	return RullzsyHub_REQUIRE(Module);
end

RullzsyHub_MODULES[RullzsyHub["3e"]] = {
	Closure = function()
		local script = RullzsyHub["3e"];local LIB = {}
		local IconModule = require(script.IconModule)

		local UIS = game:GetService("UserInputService")

		local Gui = script.Parent
		local Templates = script.Parent.Templates
		local oldWindow = script.Parent.Window
		local oldFloatingIcon = script.Parent.FloatIcon

		Templates.Parent = nil
		oldWindow.Parent = nil
		oldFloatingIcon.Parent = nil


		local TweenConfigs = {
			Global = {
				Duration = 0.25,
				EasingStyle = Enum.EasingStyle.Quart,
				EasingDirection = Enum.EasingDirection.Out
			},
			Notification = {
				Duration = 0.5,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupOpen = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupClose = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.In
			},
		}
		local function Tween(inst, props, config)
			local twconfig = TweenInfo.new(config.Duration, config.EasingStyle or Enum.EasingStyle.Linear, config.EasingDirection or Enum.EasingDirection.Out)
			local tw = game:GetService("TweenService"):Create(inst, twconfig, props)
			tw:Play()
			return tw
		end

		local function Draggable(topbarobject, object)
			local funcs = {}

			local tsv = game:GetService("TweenService")
			local Dragging = nil
			local DragInput = nil
			local DragStart = nil
			local StartPosition = nil

			local allowDragging = true

			local function Update(input)
				local Delta = input.Position - DragStart
				local pos =
					UDim2.new(
						StartPosition.X.Scale,
						StartPosition.X.Offset + Delta.X,
						StartPosition.Y.Scale,
						StartPosition.Y.Offset + Delta.Y
					)
				tsv:Create(object, TweenInfo.new(0.2,Enum.EasingStyle.Quart), {Position = pos}):Play()
				--object.Position = pos
			end

			topbarobject.InputBegan:Connect(
				function(input)
					if allowDragging and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						DragStart = input.Position
						StartPosition = object.Position

						input.Changed:Connect(
							function()
								if input.UserInputState == Enum.UserInputState.End then
									Dragging = false
								end
							end
						)
					end
				end
			)

			topbarobject.InputChanged:Connect(
				function(input)
					if
						allowDragging and
						input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
					then
						DragInput = input
					end
				end
			)

			UIS.InputChanged:Connect(
				function(input)
					if allowDragging and input == DragInput and Dragging then
						Update(input)
					end
				end
			)

			function funcs:SetAllowDragging(state)
				allowDragging = state
			end

			return funcs
		end

		local Windows = {}
		function LIB:CreateWindow(data)
			local Window = {
				Title = data.Title,
				Icon = data.Icon,
				Version = data.Author,
				Folder = data.Folder,
				Size = data.Size,
				ToggleKey = data.ToggleKey or Enum.KeyCode.RightShift,
				KeySystem = data.KeySystem or false,
				Key = data.Key or "",
				KeyValidator = data.KeyValidator or nil,
				SaveKey = data.SaveKey or false,
				LiveSearchDropdown = data.LiveSearchDropdown or false,
                AutoSave = data.AutoSave or true,
                FileSaveName = data.FileSaveName or "Configo.json", -- wajib ada .json
			}
            local CONFIG = {}
            local CONFIGLOADED = false

            if Window.AutoSave == false and isfile(Window.FileSaveName) then
                delfile(Window.FileSaveName)
            end

            if isfile(Window.FileSaveName) then
                local success, result = pcall(function()
                    CONFIG = game:GetService("HttpService"):JSONDecode(readfile(Window.FileSaveName))
                end)
                if success then
                    CONFIGLOADED = true
                elseif not success then
                    warn("Attempted to load 'workspace/".. Window.FileSaveName "', but an error occured.\nERROR: "..result)
                end
            end

            local function SAVECONFIG()
                if Window.AutoSave then
                    writefile(Window.FileSaveName, game:GetService("HttpService"):JSONEncode(CONFIG))
                end
            end


			local windowFolder = Instance.new("Folder")
			windowFolder.Parent = Gui
			Gui.Name = Window.Title

			local newFloatingIcon = oldFloatingIcon:Clone()
			newFloatingIcon.Parent = windowFolder
			newFloatingIcon.TextLabel.Text = Window.Title
			newFloatingIcon.Visible = false
			if not Window.Icon:find("rbxassetid") then
				newFloatingIcon.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				newFloatingIcon.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				newFloatingIcon.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				newFloatingIcon.Icon.Image = Window.Icon
			end

			local newWindow = oldWindow:Clone()
			local mainFrame = newWindow
			local TopFrame = mainFrame.TopFrame
			local TabButtons = mainFrame.TabButtons
			local Tabs = mainFrame.Tabs

			newWindow.Name = Window.Title
			TopFrame.TextLabel.Text = Window.Title.." - "..Window.Version
			if not Window.Icon:find("rbxassetid") then
				TopFrame.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				TopFrame.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				TopFrame.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				TopFrame.Icon.Image = Window.Icon
			end

			newWindow.Size = Window.Size
			newWindow.Visible = false
			newWindow.Parent = windowFolder

			table.insert(Windows, newWindow)

			-- Functionalities

			local selected
			local TabLists = {}
			local TabIndexList = {}
			local function AddTabToList(name: string, tab: ScrollingFrame, tabbtn: GuiButton, hasicon: boolean)
				local data = {
					Name = name,
					TabObject = tab,
					TabButton = tabbtn,
					HasIcon = hasicon
				}
				TabLists[name] = data
				table.insert(TabIndexList, TabLists[name])
			end

			-- dropdown, the hardest part lol
			local SelectedDropdown = nil
			local DropdownState = false
			local function DropdownPopup(state, name)
				-- disabled tween for popup cuz kills performance :<

				if name and DropdownState == false then
					SelectedDropdown = name
					for _,v in newWindow.DropdownSelection.Dropdowns:GetChildren() do
						if v:IsA("Folder") then
							v:FindFirstChild("DropdownItems").Visible = false
							v:FindFirstChild("DropdownItemsSearch").Visible = false
						end
					end
					newWindow.DropdownSelection.TopBar.Title.Text = name
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItems").Visible = true
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItemsSearch").Visible = false
				end
				if state == true then
					-- open
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					newWindow.DarkOverlay.BackgroundTransparency = 1

					newWindow.DropdownSelection.Visible = true
					newWindow.DarkOverlay.Visible = true

					newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
					--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
					Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)
					DropdownState = state
				elseif state == false then
					-- close
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
					local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

					tw2.Completed:Wait()

					newWindow.DropdownSelection.Visible = false
					newWindow.DarkOverlay.Visible = false

					DropdownState = state
				else
					if DropdownState then
						-- close
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
						local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

						tw2.Completed:Wait()

						newWindow.DropdownSelection.Visible = false
						newWindow.DarkOverlay.Visible = false

						DropdownState = false
					else
						-- open
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						newWindow.DarkOverlay.BackgroundTransparency = 1

						newWindow.DropdownSelection.Visible = true
						newWindow.DarkOverlay.Visible = true

						newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
						--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
						Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)

						DropdownState = true
					end
				end
			end

			local function SelectTab(tabName)
				for tablistname, tab in pairs(TabLists) do

					if tablistname ~= tabName then
						tab.TabObject.Visible = false
						-- Close
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 42,0.5, 0), Size = UDim2.new(0, 103,0, 16), TextTransparency = 0.5}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,12,0,18), ImageTransparency = 0.5}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 0), BackgroundTransparency = 1}, TweenConfigs.Global)
					elseif tablistname == tabName then
						selected = tabName
						tab.TabObject.Visible = true
						-- open
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 57,0.5, 0), Size = UDim2.new(0, 88,0, 16), TextTransparency = 0}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,25,0,18), ImageTransparency = 0}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 25), BackgroundTransparency = 0}, TweenConfigs.Global)

						local objectCount = 0
						for _, obj in ipairs(tab.TabObject:GetChildren()) do
							if obj:IsA("GuiObject") then
								objectCount = objectCount + 1
							end
						end
						if objectCount == 0 then
							Tabs.NoObjectFoundText.Visible = true
						else
							Tabs.NoObjectFoundText.Visible = false
						end
					end
				end
			end

			newWindow.DropdownSelection.TopBar.Close.MouseButton1Click:Connect(function() DropdownPopup(false) end)

			local textbox = newWindow.DropdownSelection.TopBar.BoxFrame.Frame.TextBox

			textbox:GetPropertyChangedSignal("Text"):Connect(function()
				if not Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			textbox.FocusLost:Connect(function()
				if Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			function Window:Tab(data)
				local Tab = {}
				local TabData = {
					Title = data.Title,
					Icon = data.Icon,
				}

                local NAMETAB = data.Title
                if not CONFIGLOADED or CONFIG[NAMETAB] == nil then
                    CONFIG[NAMETAB] = {}
                end

				local newTabButton = Templates.TabButton:Clone()
				newTabButton.Name = TabData.Title

				newTabButton.Parent = newWindow.TabButtons.Lists
				newTabButton.Visible = true

				newTabButton.TextLabel.Text = TabData.Title
				newTabButton.ImageButton.Image = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[1]) or TabData.Icon or ""
				newTabButton.ImageButton.ImageRectOffset = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
				newTabButton.ImageButton.ImageRectSize = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectSize) or Vector2.new(0,0)



				local newTab = Templates.Tab:Clone()
				newTab.Name = TabData.Title

				newTab.Parent = newWindow.Tabs
				newTab.Visible = false

				AddTabToList(data.Title, newTab, newTabButton)

				--if not selected then selected = TabData.Title end

				if selected == TabData.Title then
					newTab.Visible = true

					-- Open

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 57,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 88,0, 16)
					newTabButton.TextLabel.TextTransparency = 0

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,25,0,18)
					newTabButton.ImageButton.ImageTransparency = 0

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 25)
					newTabButton.Bar.BackgroundTransparency = 0
				else
					-- Close

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 42,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 103,0, 16)
					newTabButton.TextLabel.TextTransparency = 0.5

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,12,0,18)
					newTabButton.ImageButton.ImageTransparency = 0.5

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 0)
					newTabButton.Bar.BackgroundTransparency = 1
				end

				newTabButton.MouseButton1Click:Connect(function()
					SelectTab(TabData.Title)
				end)

				local function GetCurrentElementObjects()
					local objects = {}
					for _,v in pairs(newTab:GetChildren()) do
						if v:IsA("GuiObject") then
							table.insert(objects, v)
						end
					end
					return objects
				end

				local parentElement = newTab

				function Tab:Section(data)
					local Section = {
						Title = data.Title,
						State = data.Default or false,
						TextXAlignment = data.TextXAlignment or "Left",
					}

					local newSection = Templates.Section:Clone()
					newSection.Name = Section.Title
					newSection.Button.Title.Text = Section.Title
					newSection.Button.Title.TextXAlignment = Enum.TextXAlignment[Section.TextXAlignment]

					newSection.Visible = true
					newSection.Parent = newTab

					newSection.Button.MouseButton1Click:Connect(function()
						if Section.State == true then
							-- close
							newSection.Frame.Visible = false
							Tween(newSection.Button.Title.Arrow, {Rotation = 0}, TweenConfigs.Global)
							Section.State = false
						elseif Section.State == false then
							-- open
							newSection.Frame.Visible = true
							Tween(newSection.Button.Title.Arrow, {Rotation = 90}, TweenConfigs.Global)
							Section.State = true
						end
					end)

					function Section:SetTitle(newTitle)
						Section.Title = newTitle
						newSection.Button.Title.Text = newTitle
					end

					function Section:Destroy()
						parentElement:Destroy()
					end

					parentElement = newSection.Frame

					return Section
				end

				function Tab:Button(data)
					local Button = {}

					local ButtonData = {
						Title = data.Title,
						Desc = data.Desc,
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					local newButton = Templates.Button:Clone()
					newButton.Name = ButtonData.Title
					newButton.Parent = parentElement

					newButton.Frame.Title.Text = ButtonData.Title

					if ButtonData.Desc and ButtonData.Desc ~= "" then
						newButton.Frame.Description.Visible = true
						newButton.Frame.Description.Text = ButtonData.Desc
					end

					if ButtonData.Locked then
						-- greyed out
						newButton.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newButton.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newButton.Frame.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newButton.Frame.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newButton.Frame.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
					end

					newButton.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					newButton.MouseEnter:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							newButton.BackgroundColor3 = Color3.fromRGB(42, 45, 52)
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Down:Connect(function()
						if not ButtonData.Locked then
							GetRandomGradient()
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Up:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Click:Connect(function()
						if not ButtonData.Locked then
							ButtonData.Callback()
						end
					end)

					newTab.ChildAdded:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					newTab.ChildRemoved:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					function Button:SetTitle(newText)
						newButton.Frame.Title.Text = newText
					end

					function Button:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newButton.Frame.Description.Text = newDesc
						end
					end

					function Button:Lock()
						ButtonData.Locked = true
						Tween(newButton, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
					end

					function Button:Unlock()
						ButtonData.Locked = false
						Tween(newButton, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
					end

					function Button:Destroy()
						newButton:Destroy()
					end

					return Button
				end

				function Tab:Code(data)
					local Code = {
						Title = data.Title,
						Code = data.Code
					}

					local newCode = Templates.Code:Clone()
					newCode.Name = Code.Title
					newCode.Parent = parentElement

					newCode.Title.Text = Code.Title
					newCode.Code.Text  = Code.Code
					newCode.Code.Visible = true
					newCode.Code.Font = Enum.Font.Code

					newCode.Visible = true

					function Code:SetTitle(newText)
						Code.Title = newText
						newCode.Title.Text = newText
					end

					function Code:SetCode(code)
						Code.Code = code
						newCode.Code.Text = code
					end

					function Code:Destroy()
						newCode:Destroy()
					end

					return Code
				end

				function Tab:Paragraph(data)
					local Paragraph = {
						Title = data.Title,
						Desc = data.Desc,
						RichText = data.RichText or false,
					}

					local newParagraph = Templates.Paragraph:Clone()
					newParagraph.Name = Paragraph.Title
					newParagraph.Parent = parentElement
					newParagraph.Title.Text = Paragraph.Title

					if Paragraph.Desc and Paragraph.Desc ~= "" then
						newParagraph.Description.Text = Paragraph.Desc
						newParagraph.Description.Visible = true
					else
						newParagraph.Description.Visible = false
					end

					newParagraph.Title.RichText = Paragraph.RichText
					newParagraph.Description.RichText = Paragraph.RichText

					newParagraph.Visible = true

					function Paragraph:SetTitle(title)
						Paragraph.Title = title
						newParagraph.Title.Text = title
					end

					function Paragraph:SetDesc(desc)
						Paragraph.Desc = desc
						newParagraph.Description.Text = desc
						if desc ~= "" then
							newParagraph.Visible = true
						else
							newParagraph.Visible = false
						end
					end

					function Paragraph:Destroy()
						newParagraph:Destroy()
					end

					return Paragraph
				end


				function Tab:Colorpicker()

				end

				function Tab:Toggle(data)
					local Toggle = {
						Title = data.Title,
						Desc = data.Desc,
						State = data.Default or data.Value or false,
						Locked = data.Locked or false,
						Icon = data.Icon,
						Callback = data.Callback or function() end
					}

                    local name = Toggle.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Toggle.State = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Toggle.State
                    end

					local newToggle = Templates.Toggle:Clone()
					newToggle.Name = Toggle.Title
					newToggle.Parent = parentElement
					newToggle.Title.Text = Toggle.Title

					if Toggle.Icon then
						if string.find(Toggle.Icon, "rbxassetid") or string.match(Toggle.Icon, "%d") then
							newToggle.Title.Fill.Ball.Icon.Image = Toggle.Icon
						else
							newToggle.Title.Fill.Ball.Icon.Image = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[1]) or Toggle.Icon or ""
							newToggle.Title.Fill.Ball.Icon.ImageRectOffset = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
							newToggle.Title.Fill.Ball.Icon.ImageRectSize = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectSize) or Vector2.new(0,0)
						end
					end

					if Toggle.Desc and Toggle.Desc ~= "" then
						newToggle.Description.Visible = true
						newToggle.Description.Text = Toggle.Desc
					end

					if Toggle.State == true then
						newToggle.Title.Fill.Ball.Position = UDim2.new(0.5, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(209, 192, 192)
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 0
					else
						newToggle.Title.Fill.Ball.Position = UDim2.new(0, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 1
					end

					if Toggle.Locked then
						-- greyed out
						newToggle.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newToggle.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newToggle.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						--newToggle.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Title.Fill.BackgroundTransparency = 0.7
						newToggle.Title.Fill.Ball.BackgroundTransparency = 0.7
					end

					newToggle.Visible = true

					newToggle.Title.Fill.MouseEnter:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
						end
					end)

					newToggle.Title.Fill.MouseLeave:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)

							newToggle.BackgroundColor3 = Color3.fromRGB(42, 45, 52)
							Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					local function AnimateSwitch(targetState)
						if targetState == true then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0.5, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(209, 192, 192)}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 0}, TweenConfigs.Global)
						elseif targetState == false then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(53, 56, 62)}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 1}, TweenConfigs.Global)
						end
					end

					local function SetState(newState)
                        if newState == nil then
                            newState = not Toggle.State
                        end

                        AnimateSwitch(newState)

						Toggle.State = newState
						Toggle.Callback(Toggle.State)
                        CONFIG[NAMETAB][name] = Toggle.State
                        SAVECONFIG()
						-- no arg will switch the state
					end

					newToggle.Title.Fill.MouseButton1Click:Connect(function()
						if not Toggle.Locked then
							SetState()
						end
					end)

					function Toggle:SetTitle(newText)
						Toggle.Title = newText
						newToggle.Title.Text = newText
					end

					function Toggle:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Toggle.Desc = newDesc
							newToggle.Description.Text = newDesc
						end
					end

					function Toggle:Set(newState)
						SetState(newState)
					end

					function Toggle:Lock()
						Toggle.Locked = true
						Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
					end

					function Toggle:Unlock()
						Toggle.Locked = false
						Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0}, TweenConfigs.Global)
					end

					function Toggle:Destroy()
						newToggle:Destroy()
					end

					Toggle.Callback(Toggle.State)

					return Toggle
				end

				function Tab:Slider(data)
					local Slider = {
						Title = data.Title,
						Desc = data.Desc,
						Step = data.Step or 1,
						Value = {
							Min = data.Value.Min or 0,
							Max = data.Value.Max or nil,
							Default = nil,
						},

						Locked = data.Locked,
						Callback = data.Callback or function() end
					}
					Slider.Value.Default = data.Value.Default or data.Default or data.Value.Min

					local increment = Slider.Step

					local newSlider = Templates.Slider:Clone()

                    local name = Slider.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Slider.Value.Default = CONFIG[NAMETAB][name]
                        print(Slider.Value.Default)
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Slider.Value.Default
                    end

					-- Source slider daur ulang awkoakwoawkaowkaowo

					local Mouse = game.Players.LocalPlayer:GetMouse()

					local newSlider = Templates.Slider:Clone()
					newSlider.Parent = parentElement
					newSlider.Name = Slider.Title
					newSlider.Title.Text = Slider.Title
					if Slider.Desc and Slider.Desc ~= "" then
						newSlider.Description.Visible = true
						newSlider.Description.Text = Slider.Desc
					end
					newSlider.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					newSlider.SliderFrame.Frame.Slider:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					end)

					local lastprop = nil
					newSlider.SliderFrame.Frame.Slider.Fill:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						if newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X <= 3 then
							lastprop = newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X

						end
						if lastprop and newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X > lastprop then
							GetRandomGradient()
							lastprop = nil
						end
					end)

					GetRandomGradient()


					if Slider.Locked then
						-- greyed out
						newSlider.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newSlider.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newSlider.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newSlider.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newSlider.SliderFrame.Frame.Slider.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newSlider.SliderFrame.Frame.Slider.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.UIStroke.Transparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.ValueText.TextTransparency = 0.6
					end

					local Trigger = newSlider.SliderFrame.Frame.Slider.Trigger
					local Label = newSlider.SliderFrame.Frame.ValueText
					local Fill = newSlider.SliderFrame.Frame.Slider.Fill
					local Parent = newSlider

					local default = Slider.Value.Default
					local min = Slider.Value.Min
					local max = Slider.Value.Max
					local increment = increment or 1

					local perc = Slider.Value.Default
					local Percent
					local MouseDown = false

					local Hovering = false			



					local function convertValueToScale(value)
						return (value - min) / (max - min) * (1 - 0) + 0
					end


					Label.Text = tostring(default) or tostring(min)
					--Fill.Size = UDim2.fromScale(1, 1)
					Fill.Size = UDim2.fromScale(convertValueToScale(default), 1)

					-- this also update
					local function Slide()
						MouseDown = true
						if Slider.Locked then return end
						repeat
							task.wait()
							Percent = math.clamp((Mouse.X - Parent.AbsolutePosition.X) / Parent.AbsoluteSize.X, 0, 1)
							perc = min + (Percent * (max - min))

					--[[ New: precision based rounding
					local multiplier = 10 ^ increment
					perc = math.floor(perc * multiplier + 0.5) / multiplier
					perc = math.clamp(perc, min, max)

					-- Format output text
					if perc % 1 == 0 then
						Label.Text = tostring(perc) -- integer, no decimal
					else
						Label.Text = string.format("%."..increment.."f", perc) -- decimal format
					end]]

							-- increment based
							local roundedValue = math.round(perc / increment) * increment
							perc = math.clamp(roundedValue, min, max)

							Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(perc), 1) }, TweenConfigs.Global)

							Label.Text = tostring(perc)
							Slider.Value = perc
							task.spawn(Slider.Callback, perc)
                            CONFIG[NAMETAB][name] = perc
						    SAVECONFIG()
						until MouseDown == false or Slider.Locked == true

						if not Hovering then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end


					local function Update(value)
						if not value or value > max or value < min then
							return
						end

						local roundedValue = math.round(value / increment) * increment
						perc = math.clamp(roundedValue, min, max)

						Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(value), 1) }, TweenConfigs.Global)
						perc = value

						Label.Text = tostring(perc)
						Slider.Value = perc
						task.spawn(Slider.Callback, perc)
                        CONFIG[NAMETAB][name] = perc
						SAVECONFIG()
					end

					Trigger.MouseEnter:Connect(function()
						Hovering = true
						if not Slider.Locked then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
						end
					end)

					Trigger.MouseLeave:Connect(function()
						Hovering = false
						if not Slider.Locked and not MouseDown then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end)

					-- start sliding
					Trigger.MouseButton1Down:Connect(function()
						Slide()
					end)



					-- stop sliding
					game:GetService("UserInputService").InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = false
						end
					end)

					function Slider:SetTitle(newText)
						Slider.Title = newText
						newSlider.Title.Text = newText
					end

					function Slider:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Slider.Desc = newDesc
							newSlider.Description.Text = newDesc
						end
					end


					function Slider:Set(value)
						Update(value)
					end


					function Slider:Lock()
						Slider.Locked = true
						Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0.6}, TweenConfigs.Global)
					end

					function Slider:Unlock()
						Slider.Locked = false

						Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0}, TweenConfigs.Global)
					end

					function Slider:Destroy()
						newSlider:Destroy()
					end

					Slider.Callback(default)

					return Slider
				end

				function Tab:Input(data)
					local Input = {
						Title = data.Title,
						Desc = data.Desc,
						Placeholder = data.Placeholder or "",
						Default = data.Default or data.Value or "",
						Text = data.Default or data.Value or "",
						ClearTextOnFocus = data.ClearTextOnFocus or false,
						Locked = data.Locked or false,
						MultiLine = data.MultiLine or false,
						Callback = data.Callback or function() end
					}

                    local name = Input.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Input.Default = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Input.Default
                    end

					local newInput = Templates.TextBox:Clone()
					newInput.Name = Input.Title
					newInput.Parent = parentElement
					newInput.Title.Text = Input.Title
					if Input.Desc and Input.Desc ~= "" then
						newInput.Description.Text = Input.Desc
						newInput.Description.Visible = true
					else
						newInput.Description.Visible = false
					end

					if Input.Locked then
						-- greyed out
						newInput.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newInput.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newInput.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.BackgroundColor3 = Color3.fromRGB(32, 35, 40)
						newInput.BoxFrame.Frame.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newInput.BoxFrame.Frame.TextBox.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.BoxFrame.Frame.TextBox.PlaceholderColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					newInput.BoxFrame.Frame.TextBox.Text = Input.Default
					newInput.BoxFrame.Frame.TextBox.PlaceholderText = Input.Placeholder
					newInput.BoxFrame.Frame.TextBox.MultiLine = Input.MultiLine

					if Input.MultiLine then
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.Y
					else
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.None
					end

					newInput.BoxFrame.Frame.TextBox.ClearTextOnFocus = Input.ClearTextOnFocus

					newInput.Visible = true

					newInput.BoxFrame.Frame.TextBox.MouseEnter:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.MouseLeave:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.Focused:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.FocusLost:Connect(function()
						if not Input.Locked then
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							Input.Text = newInput.BoxFrame.Frame.TextBox.Text
							Input.Callback(Input.Text)
                            CONFIG[NAMETAB][name] = Input.Text
						    SAVECONFIG()
						end
					end)

					function Input:Set(newText)
						newInput.BoxFrame.Frame.TextBox.Text = newText
						Input.Text = newText
						Input.Callback(newText)
                        CONFIG[NAMETAB][name] = newText
                        SAVECONFIG()
					end

					function Input:SetTitle(newText)
						newInput.Title.Text = newText
					end

					function Input:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newInput.Description.Text = newDesc
						end
					end

					function Input:SetPlaceholder(newtext)
						if newtext then
							newInput.Description.Placeholder = newtext
						end
					end

					function Input:Lock()
						Input.Locked = true

						Tween(newInput.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(75, 77, 83),
							PlaceholderColor3 = Color3.fromRGB(75, 77, 83)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					function Input:Unlock()
						Input.Locked = false

						Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(196, 203, 218),
							PlaceholderColor3 = Color3.fromRGB(139, 139, 139)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = true
						newInput.BoxFrame.Frame.TextBox.Interactable = true
						newInput.BoxFrame.Frame.TextBox.TextEditable = true
					end

					function Input:Destroy()
						newInput:Destroy()
					end

					Input.Callback(Input.Default)

					return Input
				end


				local function AddDropdownButton(name, folder)
					local newButton = Templates.DropdownButton:Clone()
					newButton.Parent = folder or nil
					newButton.Name = name
					newButton.Frame.Title.Text = name

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					return newButton
				end

				local function TableToString(tbl)
					return table.concat(tbl, ", ")
				end


				function Tab:Dropdown(data)
					local Dropdown = {
						Title = data.Title,
						Desc = data.Desc,

						Multi = data.Multi or false,
						Values = data.Values or {},
						Value = data.Value or data.Default,

						AllowNone = data.AllowNone or false, -- multidropdown only
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					if not Dropdown.Multi and Dropdown.AllowNone then
						Dropdown.Values = {"None", unpack(Dropdown.Values)}
					end

                    local name = Dropdown.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Dropdown.Value = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Dropdown.Value
                    end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "" then Dropdown.Value = "None" end

					local selected = nil

					local newDropdown = Templates.Dropdown:Clone()
					local dropdownFolder = Templates.DropdownList:Clone()
					dropdownFolder.Name = Dropdown.Title
					dropdownFolder.Parent = newWindow.DropdownSelection.Dropdowns

					newDropdown.Parent = parentElement
					newDropdown.Name = Dropdown.Title
					newDropdown.Title.Text = Dropdown.Title

					if Dropdown.Desc and Dropdown.Desc ~= "" then
						newDropdown.Description.Visible = true
						newDropdown.Description.Text = Dropdown.Desc
					else
						newDropdown.Description.Visible = false
					end

					if Dropdown.Locked then
						-- greyed out
						newDropdown.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newDropdown.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newDropdown.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Title.BoxFrame.Trigger.BackgroundColor3 = Color3.fromRGB(32, 35, 40)
						newDropdown.Title.BoxFrame.Trigger.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newDropdown.Title.BoxFrame.Trigger.Title.TextColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					newDropdown.Visible = true

					local function SelectValue(multi, newvalue)
						if not multi then
							local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newvalue)
							local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newvalue)

							selected = newvalue
							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

							for _,otherButton in dropdownFolder.DropdownItems:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
								end
							end
							for _,otherButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
								end
							end

							Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
							Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

							Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
                            if selected == "None" then return "" end
							return selected	
						elseif multi then
							for _, newSelected in newvalue do
								local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newSelected)
								local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newSelected)

								local idx = table.find(selected, newSelected) if idx then
									-- unselect

									-- if allownone is false, this will block the selection if the predicted table is empty
									if not Dropdown.AllowNone and #Dropdown.Value == 1 then return end

									table.remove(selected, idx)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 2185)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 2185)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
								else
									-- select
									table.insert(selected, newSelected)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
								end
							end

							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							return selected
						end
					end

					local function AddButtons(buttonListUnfiltered, refresh)
						local seen = {}
						local buttonList = {}

						for i, value in buttonListUnfiltered do
							if typeof(value) == "string" then
								if not seen[value] then
									seen[value] = 1
									table.insert(buttonList, value)
								else
									seen[value] = seen[value] + 1
									table.insert(buttonList, value.." ("..seen[value]..")")
								end
							end
						end

						if refresh then
							Dropdown.Values = buttonList

							for _,oldButton in dropdownFolder.DropdownItems:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
							for _,oldButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
						end


						if not Dropdown.Multi then
							if refresh then
								selected = nil
								newDropdown.Title.BoxFrame.Trigger.Title.Text = ""
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if selected == buttonName then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = Color3.fromRGB(220, 40, 40)
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = Color3.fromRGB(220, 40, 40)
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						elseif Dropdown.Multi then

							if refresh then
								selected = {}
								newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if table.find(selected, buttonName) then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = Color3.fromRGB(220, 40, 40)
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = Color3.fromRGB(220, 40, 40)
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						end
					end

					if not Dropdown.Multi then
						-- non multi
						selected = Dropdown.Value or nil
						newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

						AddButtons(Dropdown.Values)
					elseif Dropdown.Multi then
						-- multi
						newDropdown.Title.ClickIcon.Image = "rbxassetid://91415671397056"

						if type(Dropdown.Value) == "string" then
							Dropdown.Value = {Dropdown.Value}
						end
						selected = Dropdown.Value or {}
						newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)

						AddButtons(Dropdown.Values)
					end

					newDropdown.Title.BoxFrame.Trigger.MouseButton1Click:Connect(function()
						DropdownPopup(nil, Dropdown.Title)
					end)

					function Dropdown:SetTitle(newText)
						Dropdown.Title = newText
						newDropdown.Title.Text = newText
					end

					function Dropdown:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Dropdown.Desc = newDesc
							newDropdown.Description.Text = newDesc
						end
					end

					function Dropdown:Refresh(newvals)
						AddButtons(newvals, true)
					end

					function Dropdown:Select(newval)
						Dropdown.Callback(SelectValue(Dropdown.Multi, newval))
                        CONFIG[NAMETAB][name] = newval
						SAVECONFIG()
					end

					function Dropdown:Lock()
						Dropdown.Locked = true
						Tween(newDropdown.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					function Dropdown:Unlock()
						Dropdown.Locked = false
						Tween(newDropdown.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						newDropdown.Active = true
						newDropdown.Interactable = true
					end

					function Dropdown:Destroy()
						newDropdown:Destroy()
					end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "None" then
                        Dropdown.Callback("")
                    else
                        Dropdown.Callback(Dropdown.Value)
                    end

					return Dropdown
				end

				return Tab
			end


			function Window:SelectTab(index)
				local tabtarget = TabIndexList[index]
				if tabtarget then
					SelectTab(tabtarget.Name)
				end
			end

			function Window:Divider()
				local newDivier = Templates.Divider:Clone()
				newDivier.Parent = newWindow.TabButtons.Lists
				newDivier.Visible = true
			end

			function Window:SetToggleKey(newKey)
				if type(newKey) == "string" then
					Window.ToggleKey = Enum.KeyCode[newKey]
				else
					Window.ToggleKey = newKey
				end
			end

			function Window:EditOpenButton()

			end

			function Window:Dialog(data)
				local Dialog = {
					Title = data.Title,
					Content = data.Content,
					Icon = data.Icon,
					Buttons = data.Buttons or {},

					Size = nil,
					PressDecreaseSize = UDim2.fromOffset(5,5)
				}

				local newDialog = Templates.DialogElements.Dialog:Clone()
				local newDialogDarkOverlay = Templates.DialogElements.DarkOverlayDialog:Clone()

				newDialog.Title.TextLabel.Text = Dialog.Title
				if Dialog and Dialog ~= "" then
					newDialog.Content.Visible = true
					newDialog.Content.TextLabel.Text = Dialog.Content
				end

				if Dialog.Icon then
					if string.find(Dialog.Icon, "rbxassetid") or string.match(Dialog.Icon, "%d") then
						newDialog.Title.Icon.Image = Dialog.Icon
					else
						newDialog.Title.Icon.Image = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[1]) or Dialog.Icon or ""
						newDialog.Title.Icon.ImageRectOffset = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
						newDialog.Title.Icon.ImageRectSize = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectSize) or Vector2.new(0,0)
					end
					newDialog.Title.Icon.Visible = true
				end

				newDialog.Parent = newWindow
				newDialogDarkOverlay.Parent = newWindow

				Dialog.Size = UDim2.fromOffset(newDialog.AbsoluteSize.X, newDialog.AbsoluteSize.Y)
				--newDialog.Size = UDim2.fromOffset(0,0)
				newDialogDarkOverlay.Transparency = 1

				for _, button in Dialog.Buttons do
					local buttonData = {
						Title = button.Title or "Button",
						Callback = button.Callback or function() end
					}

					local newButton = Templates.DialogElements.DialogButton:Clone()
					local originalSize = newButton.Button.Size

					newButton.Button.Label.Text = buttonData.Title

					newButton.Button.MouseButton1Click:Connect(function()
						buttonData.Callback()

						local tw = Tween(newDialogDarkOverlay, {Transparency = 1}, TweenConfigs.Global)
						--local tw = Tween(newDialog, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.PopupClose)
						newDialog:Destroy()
						tw.Completed:Wait()
						newDialogDarkOverlay:Destroy()

					end)

					newButton.Button.MouseButton1Down:Connect(function()
						Tween(newButton.Button, {Size = originalSize - Dialog.PressDecreaseSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseButton1Up:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseLeave:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Parent = newDialog.Buttons
					newButton.Visible = true
				end

				--Tween(newDialog, {Size = Dialog.Size}, TweenConfigs.PopupOpen)
				Tween(newDialogDarkOverlay, {Transparency = 0.6}, TweenConfigs.Global)

				newDialog.Visible = true
				newDialogDarkOverlay.Visible = true



				return Dialog
			end

			-- window misc top bar
			local oldFloatingSize = newFloatingIcon.Size
			local oldWindowSize = Window.Size

			local oldWindowSizeMaximize = Window.Size
			local oldWindowPositionMaximize = newWindow.Position
			local maximizedWindow = false

			local windowDraggable = Draggable(newWindow.TopFrame, newWindow)
			Draggable(newFloatingIcon, newFloatingIcon)

			newWindow.Visible = true
			newWindow.Size = UDim2.fromOffset(0,0)

			local windowstate = newWindow.Visible
			local timeout = false
			local function ToggleWindow(state)
				if state == true then
					oldFloatingIcon = newFloatingIcon.Size

					newWindow.Size = UDim2.fromOffset(0,0)
					newWindow.Visible = true

					Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
					Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Tabs.Visible = true
					newWindow.TabButtons.Visible = true

					newFloatingIcon.Visible = false
				elseif state == false then
					oldWindowSize = newWindow.Size

					newFloatingIcon.Size = UDim2.fromOffset(0,0)
					newFloatingIcon.Visible = true

					newWindow.Tabs.Visible = false
					newWindow.TabButtons.Visible = false

					Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
					Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Visible = false
				else
					if windowstate then
						oldWindowSize = newWindow.Size

						newFloatingIcon.Size = UDim2.fromOffset(0,0)
						newFloatingIcon.Visible = true

						newWindow.Tabs.Visible = false
						newWindow.TabButtons.Visible = false
						newWindow.DropShadow.Visible = false

						Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
						Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Visible = false

						windowstate = false
					else
						oldFloatingIcon = newFloatingIcon.Size

						newWindow.Size = UDim2.fromOffset(0,0)
						newWindow.Visible = true

						newWindow.DropShadow.Visible = true

						Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
						Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Tabs.Visible = true
						newWindow.TabButtons.Visible = true

						newFloatingIcon.Visible = false

						windowstate = true
					end
				end
			end

			newWindow.TopFrame.Hide.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(false)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newFloatingIcon.Open.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(true)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newWindow.TopFrame.Close.MouseButton1Click:Connect(function()
				-- :Destroy() will in result of errors :(
				Window:Dialog({
					Icon = "triangle-alert",
					Title = "Close Window",
					Content = "Do you want to close this window? You will not able to open it again.",
					Buttons = {
						{
							Title = "Cancel"
						},
						{
							Title = "Close Window",
							Callback = function()
								windowFolder.Parent = nil
							end,
						}
					}
				})
			end)

			newWindow.TopFrame.Maximize.MouseButton1Click:Connect(function()
				if not maximizedWindow then
					-- maximizing
					windowDraggable:SetAllowDragging(false)
					oldWindowSizeMaximize = newWindow.Size
					oldWindowPositionMaximize = newWindow.Position
					Tween(newWindow, {Size = UDim2.new(1,0,1,0)}, TweenConfigs.Global)
					Tween(newWindow, {Position = UDim2.new(0.5,0,0.5,0)}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,0)}, TweenConfigs.Global)

					maximizedWindow = true
				else
					-- minimizing
					windowDraggable:SetAllowDragging(true)
					Tween(newWindow, {Size = oldWindowSizeMaximize}, TweenConfigs.Global)
					Tween(newWindow, {Position = oldWindowPositionMaximize}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,10)}, TweenConfigs.Global)

					maximizedWindow = false
				end
			end)

			Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)

			-- Keybind to open newWindow
						-- Key System
			if Window.KeySystem then
				local function ValidateKey(inputKey)
					if Window.KeyValidator then
						return Window.KeyValidator(inputKey)
					else
						return tostring(inputKey) == tostring(Window.Key)
					end
				end

				local KeyInput = Instance.new("ScreenGui")
				KeyInput.Name = "KeySystem"
				KeyInput.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				KeyInput.ResetOnSpawn = false
				KeyInput.Parent = RullzsyHub["1"].Parent

				local KeyFrame = Instance.new("Frame")
				KeyFrame.Size = UDim2.new(1, 0, 1, 0)
				KeyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				KeyFrame.BackgroundTransparency = 0.7
				KeyFrame.Parent = KeyInput

				local KeyBoxContainer = Instance.new("Frame")
				KeyBoxContainer.Size = UDim2.new(0, 350, 0, 200)
				KeyBoxContainer.Position = UDim2.new(0.5, -175, 0.5, -100)
				KeyBoxContainer.BackgroundColor3 = Color3.fromRGB(37, 40, 47)
				KeyBoxContainer.BorderColor3 = Color3.fromRGB(61, 61, 75)
				KeyBoxContainer.BorderSizePixel = 2
				KeyBoxContainer.Parent = KeyFrame

				local KeyUICorner = Instance.new("UICorner")
				KeyUICorner.CornerRadius = UDim.new(0, 10)
				KeyUICorner.Parent = KeyBoxContainer

				local KeyTitle = Instance.new("TextLabel")
				KeyTitle.Size = UDim2.new(1, 0, 0, 40)
				KeyTitle.Position = UDim2.new(0, 0, 0, 10)
				KeyTitle.BackgroundTransparency = 1
				KeyTitle.Text = "Key System"
				KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeyTitle.TextSize = 20
				KeyTitle.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Bold)
				KeyTitle.Parent = KeyBoxContainer

				local KeyDesc = Instance.new("TextLabel")
				KeyDesc.Size = UDim2.new(1, -40, 0, 20)
				KeyDesc.Position = UDim2.new(0, 20, 0, 50)
				KeyDesc.BackgroundTransparency = 1
				KeyDesc.Text = "Enter the key to access this hub"
				KeyDesc.TextColor3 = Color3.fromRGB(197, 204, 219)
				KeyDesc.TextSize = 14
				KeyDesc.TextXAlignment = Enum.TextXAlignment.Center
				KeyDesc.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium)
				KeyDesc.Parent = KeyBoxContainer

				local KeyTextBoxFrame = Instance.new("Frame")
				KeyTextBoxFrame.Size = UDim2.new(1, -40, 0, 35)
				KeyTextBoxFrame.Position = UDim2.new(0, 20, 0, 80)
				KeyTextBoxFrame.BackgroundColor3 = Color3.fromRGB(43, 46, 53)
				KeyTextBoxFrame.Parent = KeyBoxContainer

				local KeyTextBoxUICorner = Instance.new("UICorner")
				KeyTextBoxUICorner.CornerRadius = UDim.new(0, 5)
				KeyTextBoxUICorner.Parent = KeyTextBoxFrame

				local KeyTextBoxStroke = Instance.new("UIStroke")
				KeyTextBoxStroke.Color = Color3.fromRGB(61, 61, 75)
				KeyTextBoxStroke.Thickness = 1.5
				KeyTextBoxStroke.Parent = KeyTextBoxFrame

				local KeyTextBox = Instance.new("TextBox")
				KeyTextBox.Size = UDim2.new(1, -10, 1, 0)
				KeyTextBox.Position = UDim2.new(0, 5, 0, 0)
				KeyTextBox.BackgroundTransparency = 1
				KeyTextBox.PlaceholderText = "Enter key..."
				KeyTextBox.Text = ""
				KeyTextBox.TextColor3 = Color3.fromRGB(197, 204, 219)
				KeyTextBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
				KeyTextBox.TextSize = 14
				KeyTextBox.ClearTextOnFocus = false
				KeyTextBox.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium)
				KeyTextBox.Parent = KeyTextBoxFrame

				local KeyError = Instance.new("TextLabel")
				KeyError.Size = UDim2.new(1, -40, 0, 20)
				KeyError.Position = UDim2.new(0, 20, 0, 120)
				KeyError.BackgroundTransparency = 1
				KeyError.Text = ""
				KeyError.TextColor3 = Color3.fromRGB(220, 40, 40)
				KeyError.TextSize = 12
				KeyError.TextXAlignment = Enum.TextXAlignment.Center
				KeyError.Visible = false
				KeyError.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Medium)
				KeyError.Parent = KeyBoxContainer

				local KeySubmit = Instance.new("ImageButton")
				KeySubmit.Size = UDim2.new(0, 120, 0, 35)
				KeySubmit.Position = UDim2.new(0.5, -60, 0, 145)
				KeySubmit.BackgroundColor3 = Color3.fromRGB(220, 40, 40)
				KeySubmit.AutoButtonColor = false
				KeySubmit.BorderSizePixel = 0
				KeySubmit.Text = ""
				KeySubmit.Parent = KeyBoxContainer

				local KeySubmitUICorner = Instance.new("UICorner")
				KeySubmitUICorner.CornerRadius = UDim.new(0, 5)
				KeySubmitUICorner.Parent = KeySubmit

				local KeySubmitText = Instance.new("TextLabel")
				KeySubmitText.Size = UDim2.new(1, 0, 1, 0)
				KeySubmitText.BackgroundTransparency = 1
				KeySubmitText.Text = "Submit"
				KeySubmitText.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeySubmitText.TextSize = 16
				KeySubmitText.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.SemiBold)
				KeySubmitText.Parent = KeySubmit

				local function OnKeySubmit()
					local input = KeyTextBox.Text
					if ValidateKey(input) then
						if Window.SaveKey and writefile then
							local keyPath = (Window.Folder or "Temp") .. "/key.txt"
							if not isfolder(Window.Folder or "Temp") then
								makefolder(Window.Folder or "Temp")
							end
							writefile(keyPath, input)
						end
						KeyInput:Destroy()
						newWindow.Visible = true
					else
						KeyError.Text = "Invalid key!"
						KeyError.Visible = true
						task.delay(3, function()
							KeyError.Visible = false
						end)
					end
				end

				KeySubmit.MouseButton1Click:Connect(OnKeySubmit)
				KeyTextBox.FocusLost:Connect(function(enter)
					if enter then OnKeySubmit() end
				end)

				-- Check for saved key
				local keyPath = (Window.Folder or "Temp") .. "/key.txt"
				if Window.SaveKey and isfile and isfile(keyPath) then
					local savedKey = readfile(keyPath)
					if ValidateKey(savedKey) then
						KeyInput:Destroy()
					else
						newWindow.Visible = false
					end
				else
					newWindow.Visible = false
				end
			end

UIS.InputBegan:Connect(function(input, gpe)
				if not timeout and not gpe and input.KeyCode == Window.ToggleKey then
					timeout = true
					ToggleWindow()
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			return Window
		end

		function LIB:Notify(data)
			local Notification = {}

			local Notif = {
				Title = data.Title,
				Content = data.Content,
				Icon = data.Icon,
				Duration = data.Duration or 5
			}

			local new = Templates.Notification:Clone()

			if #Windows == 1 and Windows[1].Visible and Windows[1].Tabs.Visible then
				new.Parent = Windows[1].NotificationFrame.NotificationList
			else
				new.Parent = Gui.NotificationList
			end
			new.Items.Frame.Title.Text = Notif.Title
			new.Items.Frame.Content.Text = Notif.Content 

			new.Items.Frame.Title.Icon.Image = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[1]) or Notif.Icon or ""
			new.Items.Frame.Title.Icon.ImageRectOffset = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
			new.Items.Frame.Title.Icon.ImageRectSize = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectSize) or Vector2.new(0,0)

			new.Items.Position = UDim2.new(0.75, 0, 0, 0)
			new.Visible = true

			local function Close()
				if new then
					local close = Tween(new.Items, {Position = UDim2.new(0.75,0,0,0)}, TweenConfigs.Notification)
					task.wait(TweenConfigs.Notification.Duration - (TweenConfigs.Notification.Duration / 2))
					if new then
						new:Destroy()
					end
					new = nil
				end
			end

			new.Items.Frame.Title.Close.MouseButton1Click:Connect(Close)

			local open = Tween(new.Items, {Position = UDim2.new(0,0,0,0)}, TweenConfigs.Notification)
			open.Completed:Connect(function()
				Tween(new.Items.TimerBarFill.Bar, {Size = UDim2.new(0,0,1,0)}, {Duration = Notif.Duration})
				task.delay(Notif.Duration, Close)
			end)

			function Notification:Close()
				Close()
			end

			return Notification
		end

		return LIB

	end;
};
RullzsyHub_MODULES[RullzsyHub["3f"]] = {
	Closure = function()
		local script = RullzsyHub["3f"];
		
		local IconModule = {}
		
		local ICON_URL = "https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua"
		
		local iconCache = nil
		local iconType = "lucide"
		
		local function LoadIconsFromURL()
			if iconCache then return iconCache end
			
			local success, result = pcall(function()
				local data
				if game.HttpGet then
					data = game:HttpGet(ICON_URL)
				elseif syn and syn.request then
					data = syn.request({
						Url = ICON_URL,
						Method = "GET"
					}).Body
				elseif request then
					data = request({
						Url = ICON_URL,
						Method = "GET"
					}).Body
				else
					return nil
				end
				
				local func = loadstring(data)
				if func then
					return func()
				end
				return nil
			end)
			
			if success and result then
				iconCache = result
				return iconCache
			end
			
			iconCache = {}
			return iconCache
		end
		
		function IconModule.SetIconsType(iconType)
			iconType = iconType
		end
		
		function IconModule.Icon(Icon)
			local icons = LoadIconsFromURL()
			if icons and icons.Icons and icons.Icons[Icon] then
				local data = icons.Icons[Icon]
				local spritesheet = icons.Spritesheets and icons.Spritesheets[tostring(data.Image)]
				if spritesheet then
					return { 
						spritesheet, 
						data 
					}
				end
			end
			return nil
		end
		
		return IconModule
	end;
};

return require(RullzsyHub["3e"])