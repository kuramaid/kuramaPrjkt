local RullzsyHub = {};

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

RullzsyHub["2"] = Instance.new("Frame", RullzsyHub["1"]);
RullzsyHub["2"]["ZIndex"] = 0;
RullzsyHub["2"]["BorderSizePixel"] = 2;
RullzsyHub["2"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["2"]["Size"] = UDim2.new(0, 528, 0, 334);
RullzsyHub["2"]["Position"] = UDim2.new(0.5278, 0, 0.5, 0);
RullzsyHub["2"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["2"]["Name"] = [[Window]];

RullzsyHub["3"] = Instance.new("UICorner", RullzsyHub["2"]);
RullzsyHub["3"]["CornerRadius"] = UDim.new(0, 10);

RullzsyHub["32"] = Instance.new("UIStroke", RullzsyHub["2"]);
RullzsyHub["32"]["Transparency"] = 0.3;
RullzsyHub["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["32"]["Color"] = Color3.fromRGB(200, 30, 30);

RullzsyHub["4"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["4"]["Visible"] = false;
RullzsyHub["4"]["ZIndex"] = 4;
RullzsyHub["4"]["BorderSizePixel"] = 0;
RullzsyHub["4"]["BackgroundColor3"] = Color3.fromRGB(40, 15, 15);
RullzsyHub["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["4"]["ClipsDescendants"] = true;
RullzsyHub["4"]["Size"] = UDim2.new(0.7281, 0, 0.68367, 0);
RullzsyHub["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
RullzsyHub["4"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["4"]["Name"] = [[DropdownSelection]];

RullzsyHub["5"] = Instance.new("UICorner", RullzsyHub["4"]);
RullzsyHub["5"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["6"] = Instance.new("UIStroke", RullzsyHub["4"]);
RullzsyHub["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["6"]["Thickness"] = 1.5;
RullzsyHub["6"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["7"] = Instance.new("Frame", RullzsyHub["4"]);
RullzsyHub["7"]["BorderSizePixel"] = 0;
RullzsyHub["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["7"]["Size"] = UDim2.new(1, 0, 0, 50);
RullzsyHub["7"]["Position"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["7"]["Name"] = [[TopBar]];
RullzsyHub["7"]["BackgroundTransparency"] = 1;

RullzsyHub["8"] = Instance.new("Frame", RullzsyHub["7"]);
RullzsyHub["8"]["BorderSizePixel"] = 0;
RullzsyHub["8"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["8"]["Size"] = UDim2.new(0, 120, 0, 25);
RullzsyHub["8"]["Position"] = UDim2.new(1, -50, 0.5, 0);
RullzsyHub["8"]["Name"] = [[BoxFrame]];
RullzsyHub["8"]["BackgroundTransparency"] = 1;

RullzsyHub["9"] = Instance.new("ImageLabel", RullzsyHub["8"]);
RullzsyHub["9"]["ZIndex"] = 0;
RullzsyHub["9"]["BorderSizePixel"] = 0;
RullzsyHub["9"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
RullzsyHub["9"]["ScaleType"] = Enum.ScaleType.Slice;
RullzsyHub["9"]["ImageTransparency"] = 0.75;
RullzsyHub["9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["9"]["Image"] = [[rbxassetid://6014261993]];
RullzsyHub["9"]["Size"] = UDim2.new(1, 30, 1, 30);
RullzsyHub["9"]["BackgroundTransparency"] = 1;
RullzsyHub["9"]["Name"] = [[DropShadow]];
RullzsyHub["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

RullzsyHub["a"] = Instance.new("Frame", RullzsyHub["8"]);
RullzsyHub["a"]["BorderSizePixel"] = 0;
RullzsyHub["a"]["BackgroundColor3"] = Color3.fromRGB(60, 20, 20);
RullzsyHub["a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["a"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

RullzsyHub["b"] = Instance.new("UICorner", RullzsyHub["a"]);
RullzsyHub["b"]["CornerRadius"] = UDim.new(0, 5);

RullzsyHub["c"] = Instance.new("UIStroke", RullzsyHub["a"]);
RullzsyHub["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["c"]["Thickness"] = 1.5;
RullzsyHub["c"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["d"] = Instance.new("TextBox", RullzsyHub["a"]);
RullzsyHub["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["d"]["BorderSizePixel"] = 0;
RullzsyHub["d"]["TextWrapped"] = true;
RullzsyHub["d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
RullzsyHub["d"]["TextSize"] = 14;
RullzsyHub["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["d"]["ClipsDescendants"] = true;
RullzsyHub["d"]["PlaceholderText"] = [[Input here...]];
RullzsyHub["d"]["Size"] = UDim2.new(1, -25, 1, 0);
RullzsyHub["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["d"]["Text"] = [[]];
RullzsyHub["d"]["BackgroundTransparency"] = 1;
RullzsyHub["d"]["PlaceholderColor3"] = Color3.fromRGB(180, 100, 100);

RullzsyHub["e"] = Instance.new("UIPadding", RullzsyHub["d"]);
RullzsyHub["e"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["e"]["PaddingBottom"] = UDim.new(0, 10);

RullzsyHub["f"] = Instance.new("ImageButton", RullzsyHub["a"]);
RullzsyHub["f"]["BorderSizePixel"] = 0;
RullzsyHub["f"]["BackgroundTransparency"] = 1;
RullzsyHub["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["f"]["AnchorPoint"] = Vector2.new(1, 0.5);
local searchIcon = IconModule.Icon("search")
if searchIcon then
    RullzsyHub["f"]["Image"] = searchIcon[1]
    RullzsyHub["f"]["ImageRectSize"] = searchIcon[2].ImageRectSize
    RullzsyHub["f"]["ImageRectOffset"] = searchIcon[2].ImageRectPosition
end
RullzsyHub["f"]["Size"] = UDim2.new(0, 15, 0, 15);
RullzsyHub["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["f"]["Position"] = UDim2.new(1, -5, 0.5, 0);

RullzsyHub["10"] = Instance.new("ImageButton", RullzsyHub["7"]);
RullzsyHub["10"]["BorderSizePixel"] = 0;
RullzsyHub["10"]["BackgroundTransparency"] = 1;
RullzsyHub["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10"]["ZIndex"] = 0;
RullzsyHub["10"]["AnchorPoint"] = Vector2.new(1, 0.5);
local closeIcon = IconModule.Icon("x")
if closeIcon then
    RullzsyHub["10"]["Image"] = closeIcon[1]
    RullzsyHub["10"]["ImageRectSize"] = closeIcon[2].ImageRectSize
    RullzsyHub["10"]["ImageRectOffset"] = closeIcon[2].ImageRectPosition
end
RullzsyHub["10"]["Size"] = UDim2.new(0, 25, 0, 25);
RullzsyHub["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10"]["Name"] = [[Close]];
RullzsyHub["10"]["Position"] = UDim2.new(1, -12, 0.5, 0);

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
RullzsyHub["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["11"]["BackgroundTransparency"] = 1;
RullzsyHub["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["11"]["Size"] = UDim2.new(0.5, 0, 0, 18);
RullzsyHub["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["11"]["Text"] = [[Dropdown]];
RullzsyHub["11"]["Name"] = [[Title]];
RullzsyHub["11"]["Position"] = UDim2.new(0, 12, 0.5, 0);

RullzsyHub["12"] = Instance.new("Folder", RullzsyHub["4"]);
RullzsyHub["12"]["Name"] = [[Dropdowns]];

RullzsyHub["13"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["13"]["BorderSizePixel"] = 0;
RullzsyHub["13"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["13"]["ClipsDescendants"] = true;
RullzsyHub["13"]["Size"] = UDim2.new(0, 165, 1, -35);
RullzsyHub["13"]["Position"] = UDim2.new(0, 0, 0, 35);
RullzsyHub["13"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["13"]["Name"] = [[TabButtons]];
RullzsyHub["13"]["SelectionGroup"] = true;

RullzsyHub["14"] = Instance.new("ScrollingFrame", RullzsyHub["13"]);
RullzsyHub["14"]["Active"] = true;
RullzsyHub["14"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
RullzsyHub["14"]["BorderSizePixel"] = 0;
RullzsyHub["14"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
RullzsyHub["14"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
RullzsyHub["14"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["14"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["14"]["Name"] = [[Lists]];
RullzsyHub["14"]["Selectable"] = false;
RullzsyHub["14"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
RullzsyHub["14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RullzsyHub["14"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["14"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["14"]["ScrollBarThickness"] = 4;
RullzsyHub["14"]["BackgroundTransparency"] = 1;

RullzsyHub["15"] = Instance.new("UIListLayout", RullzsyHub["14"]);
RullzsyHub["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["1d"] = Instance.new("UIPadding", RullzsyHub["14"]);
RullzsyHub["1d"]["PaddingTop"] = UDim.new(0, 8);

RullzsyHub["25"] = Instance.new("UICorner", RullzsyHub["13"]);
RullzsyHub["25"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["26"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["26"]["BorderSizePixel"] = 0;
RullzsyHub["26"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["26"]["Size"] = UDim2.new(1, 0, 0, 5);
RullzsyHub["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["26"]["Name"] = [[AntiCornerTop]];

RullzsyHub["27"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["27"]["BorderSizePixel"] = 0;
RullzsyHub["27"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["27"]["AnchorPoint"] = Vector2.new(0.5, 0);
RullzsyHub["27"]["Size"] = UDim2.new(0, 2, 1, 0);
RullzsyHub["27"]["Position"] = UDim2.new(1, 1, 0, 0);
RullzsyHub["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["27"]["Name"] = [[AntiCornerRight]];

RullzsyHub["28"] = Instance.new("Frame", RullzsyHub["13"]);
RullzsyHub["28"]["ZIndex"] = 2;
RullzsyHub["28"]["BorderSizePixel"] = 0;
RullzsyHub["28"]["BackgroundColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["28"]["AnchorPoint"] = Vector2.new(1, 0);
RullzsyHub["28"]["Size"] = UDim2.new(0, 2, 1, 0);
RullzsyHub["28"]["Position"] = UDim2.new(1, 0, 0, 0);
RullzsyHub["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["28"]["Name"] = [[Border]];

RullzsyHub["29"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["29"]["BorderSizePixel"] = 0;
RullzsyHub["29"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["29"]["ClipsDescendants"] = true;
RullzsyHub["29"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["29"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["29"]["Name"] = [[TopFrame]];

RullzsyHub["2a"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2a"]["Active"] = false;
RullzsyHub["2a"]["Interactable"] = false;
RullzsyHub["2a"]["BorderSizePixel"] = 0;
RullzsyHub["2a"]["BackgroundTransparency"] = 1;
RullzsyHub["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2a"]["AnchorPoint"] = Vector2.new(0, 0.5);
local homeIcon = IconModule.Icon("home")
if homeIcon then
    RullzsyHub["2a"]["Image"] = homeIcon[1]
    RullzsyHub["2a"]["ImageRectSize"] = homeIcon[2].ImageRectSize
    RullzsyHub["2a"]["ImageRectOffset"] = homeIcon[2].ImageRectPosition
end
RullzsyHub["2a"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2a"]["Size"] = UDim2.new(0, 25, 0, 25);
RullzsyHub["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2a"]["Name"] = [[Icon]];
RullzsyHub["2a"]["Position"] = UDim2.new(0, 10, 0.5, 0);

RullzsyHub["2b"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["2a"]);

RullzsyHub["2c"] = Instance.new("TextLabel", RullzsyHub["29"]);
RullzsyHub["2c"]["TextWrapped"] = true;
RullzsyHub["2c"]["Interactable"] = false;
RullzsyHub["2c"]["BorderSizePixel"] = 0;
RullzsyHub["2c"]["TextSize"] = 14;
RullzsyHub["2c"]["TextScaled"] = true;
RullzsyHub["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2c"]["BackgroundTransparency"] = 1;
RullzsyHub["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["2c"]["Size"] = UDim2.new(1, 0, 0, 16);
RullzsyHub["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2c"]["Text"] = [[RullzsyHub - v1.0]];
RullzsyHub["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);

RullzsyHub["2d"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2d"]["BorderSizePixel"] = 0;
RullzsyHub["2d"]["BackgroundTransparency"] = 1;
RullzsyHub["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2d"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
local closeIcon2 = IconModule.Icon("x")
if closeIcon2 then
    RullzsyHub["2d"]["Image"] = closeIcon2[1]
    RullzsyHub["2d"]["ImageRectSize"] = closeIcon2[2].ImageRectSize
    RullzsyHub["2d"]["ImageRectOffset"] = closeIcon2[2].ImageRectPosition
end
RullzsyHub["2d"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2d"]["Name"] = [[Close]];
RullzsyHub["2d"]["Position"] = UDim2.new(1, -15, 0.5, 0);

RullzsyHub["2e"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2e"]["BorderSizePixel"] = 0;
RullzsyHub["2e"]["BackgroundTransparency"] = 1;
RullzsyHub["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2e"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2e"]["AnchorPoint"] = Vector2.new(1, 0.5);
local maxIcon = IconModule.Icon("maximize")
if maxIcon then
    RullzsyHub["2e"]["Image"] = maxIcon[1]
    RullzsyHub["2e"]["ImageRectSize"] = maxIcon[2].ImageRectSize
    RullzsyHub["2e"]["ImageRectOffset"] = maxIcon[2].ImageRectPosition
end
RullzsyHub["2e"]["Size"] = UDim2.new(0, 15, 0, 15);
RullzsyHub["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2e"]["Name"] = [[Maximize]];
RullzsyHub["2e"]["Position"] = UDim2.new(1, -55, 0.5, 0);

RullzsyHub["2f"] = Instance.new("ImageButton", RullzsyHub["29"]);
RullzsyHub["2f"]["BorderSizePixel"] = 0;
RullzsyHub["2f"]["BackgroundTransparency"] = 1;
RullzsyHub["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2f"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["2f"]["AnchorPoint"] = Vector2.new(1, 0.5);
local minusIcon = IconModule.Icon("minus")
if minusIcon then
    RullzsyHub["2f"]["Image"] = minusIcon[1]
    RullzsyHub["2f"]["ImageRectSize"] = minusIcon[2].ImageRectSize
    RullzsyHub["2f"]["ImageRectOffset"] = minusIcon[2].ImageRectPosition
end
RullzsyHub["2f"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["2f"]["Name"] = [[Hide]];
RullzsyHub["2f"]["Position"] = UDim2.new(1, -90, 0.5, 0);

RullzsyHub["30"] = Instance.new("UICorner", RullzsyHub["29"]);
RullzsyHub["30"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["31"] = Instance.new("Frame", RullzsyHub["29"]);
RullzsyHub["31"]["ZIndex"] = 2;
RullzsyHub["31"]["BorderSizePixel"] = 0;
RullzsyHub["31"]["BackgroundColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["31"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["31"]["Size"] = UDim2.new(1, 0, 0, 2);
RullzsyHub["31"]["Position"] = UDim2.new(0, 0, 1, 0);
RullzsyHub["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["31"]["Name"] = [[Border]];

RullzsyHub["33"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["33"]["BorderSizePixel"] = 0;
RullzsyHub["33"]["BackgroundColor3"] = Color3.fromRGB(20, 8, 8);
RullzsyHub["33"]["Size"] = UDim2.new(1, -165, 1, -35);
RullzsyHub["33"]["Position"] = UDim2.new(0, 165, 0, 35);
RullzsyHub["33"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["33"]["Name"] = [[Tabs]];

RullzsyHub["34"] = Instance.new("UICorner", RullzsyHub["33"]);
RullzsyHub["34"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["35"] = Instance.new("Frame", RullzsyHub["33"]);
RullzsyHub["35"]["Visible"] = false;
RullzsyHub["35"]["BorderSizePixel"] = 0;
RullzsyHub["35"]["BackgroundColor3"] = Color3.fromRGB(20, 8, 8);
RullzsyHub["35"]["Size"] = UDim2.new(0, 5, 1, 0);
RullzsyHub["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["35"]["Name"] = [[AntiCornerLeft]];

RullzsyHub["36"] = Instance.new("Frame", RullzsyHub["33"]);
RullzsyHub["36"]["BorderSizePixel"] = 0;
RullzsyHub["36"]["BackgroundColor3"] = Color3.fromRGB(20, 8, 8);
RullzsyHub["36"]["Size"] = UDim2.new(1, 0, 0, 5);
RullzsyHub["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["36"]["Name"] = [[AntiCornerTop]];

RullzsyHub["37"] = Instance.new("TextLabel", RullzsyHub["33"]);
RullzsyHub["37"]["TextWrapped"] = true;
RullzsyHub["37"]["Interactable"] = false;
RullzsyHub["37"]["BorderSizePixel"] = 0;
RullzsyHub["37"]["TextSize"] = 14;
RullzsyHub["37"]["TextScaled"] = true;
RullzsyHub["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["37"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["37"]["TextColor3"] = Color3.fromRGB(180, 120, 120);
RullzsyHub["37"]["BackgroundTransparency"] = 1;
RullzsyHub["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["37"]["Size"] = UDim2.new(1, 0, 0, 16);
RullzsyHub["37"]["Visible"] = false;
RullzsyHub["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["37"]["Text"] = [[This tab is empty :(]];
RullzsyHub["37"]["Name"] = [[NoObjectFoundText]];
RullzsyHub["37"]["Position"] = UDim2.new(0.5, 0, 0.45, 0);

RullzsyHub["38"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["38"]["BorderSizePixel"] = 0;
RullzsyHub["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["38"]["ClipsDescendants"] = true;
RullzsyHub["38"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["38"]["Name"] = [[NotificationFrame]];
RullzsyHub["38"]["BackgroundTransparency"] = 1;

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

RullzsyHub["3a"] = Instance.new("UIListLayout", RullzsyHub["39"]);
RullzsyHub["3a"]["Padding"] = UDim.new(0, 12);
RullzsyHub["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["3b"] = Instance.new("UIPadding", RullzsyHub["39"]);
RullzsyHub["3b"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["3b"]["PaddingRight"] = UDim.new(0, 40);
RullzsyHub["3b"]["PaddingLeft"] = UDim.new(0, 40);

RullzsyHub["3c"] = Instance.new("Frame", RullzsyHub["2"]);
RullzsyHub["3c"]["Visible"] = false;
RullzsyHub["3c"]["BorderSizePixel"] = 0;
RullzsyHub["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["3c"]["Name"] = [[DarkOverlay]];
RullzsyHub["3c"]["BackgroundTransparency"] = 0.6;

RullzsyHub["3d"] = Instance.new("UICorner", RullzsyHub["3c"]);
RullzsyHub["3d"]["CornerRadius"] = UDim.new(0, 10);

RullzsyHub["41"] = Instance.new("Folder", RullzsyHub["1"]);
RullzsyHub["41"]["Name"] = [[Templates]];

RullzsyHub["42"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["42"]["Visible"] = false;
RullzsyHub["42"]["BorderSizePixel"] = 0;
RullzsyHub["42"]["BackgroundColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["42"]["Size"] = UDim2.new(1, 0, 0, 1);
RullzsyHub["42"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["42"]["Name"] = [[Divider]];

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
RullzsyHub["43"]["ScrollBarImageColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["43"]["ScrollBarThickness"] = 5;
RullzsyHub["43"]["BackgroundTransparency"] = 1;

RullzsyHub["44"] = Instance.new("UIListLayout", RullzsyHub["43"]);
RullzsyHub["44"]["Padding"] = UDim.new(0, 15);
RullzsyHub["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["45"] = Instance.new("UIPadding", RullzsyHub["43"]);
RullzsyHub["45"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["45"]["PaddingRight"] = UDim.new(0, 14);
RullzsyHub["45"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["45"]["PaddingBottom"] = UDim.new(0, 10);

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

RullzsyHub["47"] = Instance.new("ImageButton", RullzsyHub["46"]);
RullzsyHub["47"]["BorderSizePixel"] = 0;
RullzsyHub["47"]["ImageTransparency"] = 0.5;
RullzsyHub["47"]["BackgroundTransparency"] = 1;
RullzsyHub["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["47"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["47"]["AnchorPoint"] = Vector2.new(0, 0.5);
local homeIcon2 = IconModule.Icon("home")
if homeIcon2 then
    RullzsyHub["47"]["Image"] = homeIcon2[1]
    RullzsyHub["47"]["ImageRectSize"] = homeIcon2[2].ImageRectSize
    RullzsyHub["47"]["ImageRectOffset"] = homeIcon2[2].ImageRectPosition
end
RullzsyHub["47"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["47"]["Position"] = UDim2.new(0, 12, 0, 18);

RullzsyHub["48"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["47"]);

RullzsyHub["49"] = Instance.new("TextLabel", RullzsyHub["46"]);
RullzsyHub["49"]["TextWrapped"] = true;
RullzsyHub["49"]["BorderSizePixel"] = 0;
RullzsyHub["49"]["TextSize"] = 14;
RullzsyHub["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["49"]["TextTransparency"] = 0.5;
RullzsyHub["49"]["TextScaled"] = true;
RullzsyHub["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["49"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["49"]["BackgroundTransparency"] = 1;
RullzsyHub["49"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["49"]["Size"] = UDim2.new(0, 103, 0, 16);
RullzsyHub["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["49"]["Text"] = [[]];
RullzsyHub["49"]["Position"] = UDim2.new(0, 42, 0.5, 0);

RullzsyHub["4a"] = Instance.new("Frame", RullzsyHub["46"]);
RullzsyHub["4a"]["BorderSizePixel"] = 0;
RullzsyHub["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["4a"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["4a"]["Size"] = UDim2.new(0, 5, 0, 0);
RullzsyHub["4a"]["Position"] = UDim2.new(0, 8, 0, 18);
RullzsyHub["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4a"]["Name"] = [[Bar]];
RullzsyHub["4a"]["BackgroundTransparency"] = 1;

RullzsyHub["4b"] = Instance.new("UICorner", RullzsyHub["4a"]);
RullzsyHub["4b"]["CornerRadius"] = UDim.new(0, 100);

RullzsyHub["4c"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["4c"]["BorderSizePixel"] = 0;
RullzsyHub["4c"]["AutoButtonColor"] = false;
RullzsyHub["4c"]["Visible"] = false;
RullzsyHub["4c"]["BackgroundColor3"] = Color3.fromRGB(60, 20, 20);
RullzsyHub["4c"]["Selectable"] = false;
RullzsyHub["4c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["4c"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4c"]["Name"] = [[Button]];
RullzsyHub["4c"]["Position"] = UDim2.new(0, 0, 0.384, 0);

RullzsyHub["4d"] = Instance.new("UICorner", RullzsyHub["4c"]);
RullzsyHub["4d"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["4e"] = Instance.new("Frame", RullzsyHub["4c"]);
RullzsyHub["4e"]["BorderSizePixel"] = 0;
RullzsyHub["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["4e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["4e"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["4e"]["BackgroundTransparency"] = 1;

RullzsyHub["4f"] = Instance.new("UIListLayout", RullzsyHub["4e"]);
RullzsyHub["4f"]["Padding"] = UDim.new(0, 5);
RullzsyHub["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["50"] = Instance.new("UIPadding", RullzsyHub["4e"]);
RullzsyHub["50"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["50"]["PaddingBottom"] = UDim.new(0, 10);

RullzsyHub["51"] = Instance.new("TextLabel", RullzsyHub["4e"]);
RullzsyHub["51"]["TextWrapped"] = true;
RullzsyHub["51"]["Interactable"] = false;
RullzsyHub["51"]["BorderSizePixel"] = 0;
RullzsyHub["51"]["TextSize"] = 16;
RullzsyHub["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["51"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["51"]["BackgroundTransparency"] = 1;
RullzsyHub["51"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["51"]["Text"] = [[Button]];
RullzsyHub["51"]["Name"] = [[Title]];

RullzsyHub["52"] = Instance.new("ImageButton", RullzsyHub["51"]);
RullzsyHub["52"]["BorderSizePixel"] = 0;
RullzsyHub["52"]["AutoButtonColor"] = false;
RullzsyHub["52"]["BackgroundTransparency"] = 1;
RullzsyHub["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["52"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["52"]["AnchorPoint"] = Vector2.new(1, 0.5);
local externalIcon = IconModule.Icon("external-link")
if externalIcon then
    RullzsyHub["52"]["Image"] = externalIcon[1]
    RullzsyHub["52"]["ImageRectSize"] = externalIcon[2].ImageRectSize
    RullzsyHub["52"]["ImageRectOffset"] = externalIcon[2].ImageRectPosition
end
RullzsyHub["52"]["Size"] = UDim2.new(0, 23, 0, 23);
RullzsyHub["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["52"]["Name"] = [[ClickIcon]];
RullzsyHub["52"]["Position"] = UDim2.new(1, 0, 0.5, 0);

RullzsyHub["53"] = Instance.new("TextLabel", RullzsyHub["4e"]);
RullzsyHub["53"]["TextWrapped"] = true;
RullzsyHub["53"]["Interactable"] = false;
RullzsyHub["53"]["BorderSizePixel"] = 0;
RullzsyHub["53"]["TextSize"] = 16;
RullzsyHub["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["53"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["53"]["TextColor3"] = Color3.fromRGB(255, 200, 200);
RullzsyHub["53"]["BackgroundTransparency"] = 1;
RullzsyHub["53"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["53"]["Visible"] = false;
RullzsyHub["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["53"]["Text"] = [[Lorem ipsum dolor sit amet]];
RullzsyHub["53"]["LayoutOrder"] = 1;
RullzsyHub["53"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["53"]["Name"] = [[Description]];

RullzsyHub["57"] = Instance.new("UICorner", RullzsyHub["4e"]);
RullzsyHub["57"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["58"] = Instance.new("UIStroke", RullzsyHub["4c"]);
RullzsyHub["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["58"]["Thickness"] = 1.5;
RullzsyHub["58"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["59"] = Instance.new("Frame", RullzsyHub["41"]);
RullzsyHub["59"]["Visible"] = false;
RullzsyHub["59"]["BorderSizePixel"] = 0;
RullzsyHub["59"]["BackgroundColor3"] = Color3.fromRGB(60, 20, 20);
RullzsyHub["59"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["59"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["59"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
RullzsyHub["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["59"]["Name"] = [[Paragraph]];

RullzsyHub["5a"] = Instance.new("UICorner", RullzsyHub["59"]);
RullzsyHub["5a"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["5b"] = Instance.new("UIStroke", RullzsyHub["59"]);
RullzsyHub["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["5b"]["Thickness"] = 1.5;
RullzsyHub["5b"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["5c"] = Instance.new("TextLabel", RullzsyHub["59"]);
RullzsyHub["5c"]["TextWrapped"] = true;
RullzsyHub["5c"]["Interactable"] = false;
RullzsyHub["5c"]["BorderSizePixel"] = 0;
RullzsyHub["5c"]["TextSize"] = 16;
RullzsyHub["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["5c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RullzsyHub["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["5c"]["BackgroundTransparency"] = 1;
RullzsyHub["5c"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["5c"]["Text"] = [[Title]];
RullzsyHub["5c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["5c"]["Name"] = [[Title]];

RullzsyHub["5d"] = Instance.new("UIPadding", RullzsyHub["59"]);
RullzsyHub["5d"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["5d"]["PaddingBottom"] = UDim.new(0, 10);

RullzsyHub["5e"] = Instance.new("UIListLayout", RullzsyHub["59"]);
RullzsyHub["5e"]["Padding"] = UDim.new(0, 5);
RullzsyHub["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["5f"] = Instance.new("TextLabel", RullzsyHub["59"]);
RullzsyHub["5f"]["TextWrapped"] = true;
RullzsyHub["5f"]["Interactable"] = false;
RullzsyHub["5f"]["BorderSizePixel"] = 0;
RullzsyHub["5f"]["TextSize"] = 16;
RullzsyHub["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["5f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["5f"]["TextColor3"] = Color3.fromRGB(255, 200, 200);
RullzsyHub["5f"]["BackgroundTransparency"] = 1;
RullzsyHub["5f"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["5f"]["Visible"] = false;
RullzsyHub["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["5f"]["Text"] = [[Lorem ipsum dolor sit amet]];
RullzsyHub["5f"]["LayoutOrder"] = 1;
RullzsyHub["5f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["5f"]["Name"] = [[Description]];

RullzsyHub["60"] = Instance.new("ImageButton", RullzsyHub["41"]);
RullzsyHub["60"]["BorderSizePixel"] = 0;
RullzsyHub["60"]["AutoButtonColor"] = false;
RullzsyHub["60"]["Visible"] = false;
RullzsyHub["60"]["BackgroundColor3"] = Color3.fromRGB(60, 20, 20);
RullzsyHub["60"]["Selectable"] = false;
RullzsyHub["60"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["60"]["Size"] = UDim2.new(1, 0, 0, 35);
RullzsyHub["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["60"]["Name"] = [[Toggle]];
RullzsyHub["60"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);

RullzsyHub["61"] = Instance.new("UICorner", RullzsyHub["60"]);
RullzsyHub["61"]["CornerRadius"] = UDim.new(0, 6);

RullzsyHub["62"] = Instance.new("UIStroke", RullzsyHub["60"]);
RullzsyHub["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["62"]["Thickness"] = 1.5;
RullzsyHub["62"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["63"] = Instance.new("UIPadding", RullzsyHub["60"]);
RullzsyHub["63"]["PaddingTop"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["63"]["PaddingBottom"] = UDim.new(0, 10);

RullzsyHub["64"] = Instance.new("UIListLayout", RullzsyHub["60"]);
RullzsyHub["64"]["Padding"] = UDim.new(0, 5);
RullzsyHub["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

RullzsyHub["65"] = Instance.new("TextLabel", RullzsyHub["60"]);
RullzsyHub["65"]["TextWrapped"] = true;
RullzsyHub["65"]["Interactable"] = false;
RullzsyHub["65"]["BorderSizePixel"] = 0;
RullzsyHub["65"]["TextSize"] = 16;
RullzsyHub["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["65"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
RullzsyHub["65"]["TextColor3"] = Color3.fromRGB(255, 200, 200);
RullzsyHub["65"]["BackgroundTransparency"] = 1;
RullzsyHub["65"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["65"]["Visible"] = false;
RullzsyHub["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["65"]["Text"] = [[Lorem ipsum dolor sit amet]];
RullzsyHub["65"]["LayoutOrder"] = 1;
RullzsyHub["65"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RullzsyHub["65"]["Name"] = [[Description]];

RullzsyHub["66"] = Instance.new("TextLabel", RullzsyHub["60"]);
RullzsyHub["66"]["TextWrapped"] = true;
RullzsyHub["66"]["BorderSizePixel"] = 0;
RullzsyHub["66"]["TextSize"] = 16;
RullzsyHub["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RullzsyHub["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["66"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["66"]["BackgroundTransparency"] = 1;
RullzsyHub["66"]["Size"] = UDim2.new(1, 0, 0, 15);
RullzsyHub["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["66"]["Text"] = [[Toggle]];
RullzsyHub["66"]["Name"] = [[Title]];

RullzsyHub["67"] = Instance.new("ImageButton", RullzsyHub["66"]);
RullzsyHub["67"]["BorderSizePixel"] = 0;
RullzsyHub["67"]["AutoButtonColor"] = false;
RullzsyHub["67"]["BackgroundColor3"] = Color3.fromRGB(80, 30, 30);
RullzsyHub["67"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["67"]["AnchorPoint"] = Vector2.new(1, 0.5);
RullzsyHub["67"]["Size"] = UDim2.new(0, 45, 0, 25);
RullzsyHub["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["67"]["Name"] = [[Fill]];
RullzsyHub["67"]["Position"] = UDim2.new(1, 0, 0.5, 0);

RullzsyHub["68"] = Instance.new("UICorner", RullzsyHub["67"]);
RullzsyHub["68"]["CornerRadius"] = UDim.new(100, 0);

RullzsyHub["69"] = Instance.new("ImageButton", RullzsyHub["67"]);
RullzsyHub["69"]["Active"] = false;
RullzsyHub["69"]["Interactable"] = false;
RullzsyHub["69"]["BorderSizePixel"] = 0;
RullzsyHub["69"]["AutoButtonColor"] = false;
RullzsyHub["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["69"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
RullzsyHub["69"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["69"]["Name"] = [[Ball]];
RullzsyHub["69"]["Position"] = UDim2.new(0, 0, 0.5, 0);

RullzsyHub["6a"] = Instance.new("UICorner", RullzsyHub["69"]);
RullzsyHub["6a"]["CornerRadius"] = UDim.new(100, 0);

RullzsyHub["6b"] = Instance.new("ImageLabel", RullzsyHub["69"]);
RullzsyHub["6b"]["BorderSizePixel"] = 0;
RullzsyHub["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["6b"]["ImageColor3"] = Color3.fromRGB(80, 30, 30);
RullzsyHub["6b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
local checkIcon = IconModule.Icon("check")
if checkIcon then
    RullzsyHub["6b"]["Image"] = checkIcon[1]
    RullzsyHub["6b"]["ImageRectSize"] = checkIcon[2].ImageRectSize
    RullzsyHub["6b"]["ImageRectOffset"] = checkIcon[2].ImageRectPosition
end
RullzsyHub["6b"]["Size"] = UDim2.new(1, -5, 1, -5);
RullzsyHub["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["6b"]["BackgroundTransparency"] = 1;
RullzsyHub["6b"]["Name"] = [[Icon]];

RullzsyHub["6c"] = Instance.new("UIPadding", RullzsyHub["67"]);
RullzsyHub["6c"]["PaddingTop"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingRight"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingLeft"] = UDim.new(0, 2);
RullzsyHub["6c"]["PaddingBottom"] = UDim.new(0, 2);

RullzsyHub["105"] = Instance.new("Frame", RullzsyHub["1"]);
RullzsyHub["105"]["Visible"] = false;
RullzsyHub["105"]["ZIndex"] = 0;
RullzsyHub["105"]["BorderSizePixel"] = 2;
RullzsyHub["105"]["BackgroundColor3"] = Color3.fromRGB(30, 10, 10);
RullzsyHub["105"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["105"]["ClipsDescendants"] = true;
RullzsyHub["105"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["105"]["Size"] = UDim2.new(0, 85, 0, 45);
RullzsyHub["105"]["Position"] = UDim2.new(0.5, 0, 0, 45);
RullzsyHub["105"]["BorderColor3"] = Color3.fromRGB(180, 20, 20);
RullzsyHub["105"]["Name"] = [[FloatIcon]];

RullzsyHub["106"] = Instance.new("UICorner", RullzsyHub["105"]);
RullzsyHub["106"]["CornerRadius"] = UDim.new(0, 10);

RullzsyHub["107"] = Instance.new("UIStroke", RullzsyHub["105"]);
RullzsyHub["107"]["Transparency"] = 0.5;
RullzsyHub["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
RullzsyHub["107"]["Thickness"] = 1.5;
RullzsyHub["107"]["Color"] = Color3.fromRGB(180, 20, 20);

RullzsyHub["108"] = Instance.new("UIPadding", RullzsyHub["105"]);
RullzsyHub["108"]["PaddingTop"] = UDim.new(0, 8);
RullzsyHub["108"]["PaddingRight"] = UDim.new(0, 10);
RullzsyHub["108"]["PaddingLeft"] = UDim.new(0, 10);
RullzsyHub["108"]["PaddingBottom"] = UDim.new(0, 8);

RullzsyHub["109"] = Instance.new("UIListLayout", RullzsyHub["105"]);
RullzsyHub["109"]["Padding"] = UDim.new(0, 8);
RullzsyHub["109"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
RullzsyHub["109"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
RullzsyHub["109"]["FillDirection"] = Enum.FillDirection.Horizontal;

RullzsyHub["10a"] = Instance.new("ImageButton", RullzsyHub["105"]);
RullzsyHub["10a"]["Active"] = false;
RullzsyHub["10a"]["Interactable"] = false;
RullzsyHub["10a"]["BorderSizePixel"] = 0;
RullzsyHub["10a"]["AutoButtonColor"] = false;
RullzsyHub["10a"]["BackgroundTransparency"] = 1;
RullzsyHub["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10a"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10a"]["AnchorPoint"] = Vector2.new(0, 0.5);
local homeIcon3 = IconModule.Icon("home")
if homeIcon3 then
    RullzsyHub["10a"]["Image"] = homeIcon3[1]
    RullzsyHub["10a"]["ImageRectSize"] = homeIcon3[2].ImageRectSize
    RullzsyHub["10a"]["ImageRectOffset"] = homeIcon3[2].ImageRectPosition
end
RullzsyHub["10a"]["Size"] = UDim2.new(1, 0, 1, 0);
RullzsyHub["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10a"]["Name"] = [[Icon]];
RullzsyHub["10a"]["Position"] = UDim2.new(0, 10, 0.5, 0);

RullzsyHub["10b"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["10a"]);

RullzsyHub["10c"] = Instance.new("TextLabel", RullzsyHub["105"]);
RullzsyHub["10c"]["Interactable"] = false;
RullzsyHub["10c"]["BorderSizePixel"] = 0;
RullzsyHub["10c"]["TextSize"] = 16;
RullzsyHub["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
RullzsyHub["10c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10c"]["BackgroundTransparency"] = 1;
RullzsyHub["10c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RullzsyHub["10c"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10c"]["Text"] = [[RullzsyHub]];
RullzsyHub["10c"]["AutomaticSize"] = Enum.AutomaticSize.X;
RullzsyHub["10c"]["Position"] = UDim2.new(0.38615, 0, 0.53448, -1);

RullzsyHub["10d"] = Instance.new("ImageButton", RullzsyHub["105"]);
RullzsyHub["10d"]["BorderSizePixel"] = 0;
RullzsyHub["10d"]["AutoButtonColor"] = false;
RullzsyHub["10d"]["BackgroundTransparency"] = 1;
RullzsyHub["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10d"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
RullzsyHub["10d"]["Selectable"] = false;
RullzsyHub["10d"]["AnchorPoint"] = Vector2.new(0, 0.5);
local unlockIcon = IconModule.Icon("unlock")
if unlockIcon then
    RullzsyHub["10d"]["Image"] = unlockIcon[1]
    RullzsyHub["10d"]["ImageRectSize"] = unlockIcon[2].ImageRectSize
    RullzsyHub["10d"]["ImageRectOffset"] = unlockIcon[2].ImageRectPosition
end
RullzsyHub["10d"]["Size"] = UDim2.new(0, 20, 0, 20);
RullzsyHub["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RullzsyHub["10d"]["Name"] = [[Open]];
RullzsyHub["10d"]["Position"] = UDim2.new(0, 128, 0.5, 0);

RullzsyHub["10e"] = Instance.new("UIAspectRatioConstraint", RullzsyHub["10d"]);

RullzsyHub["10f"] = Instance.new("UICorner", RullzsyHub["10d"]);

local function Tween(inst, props, config)
    local twconfig = TweenInfo.new(
        config.Duration or 0.25,
        config.EasingStyle or Enum.EasingStyle.Quart,
        config.EasingDirection or Enum.EasingDirection.Out
    )
    local tw = game:GetService("TweenService"):Create(inst, twconfig, props)
    tw:Play()
    return tw
end

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
        local pos = UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        tsv:Create(object, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Position = pos}):Play()
    end

    topbarobject.InputBegan:Connect(function(input)
        if allowDragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    topbarobject.InputChanged:Connect(function(input)
        if allowDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            DragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if allowDragging and input == DragInput and Dragging then
            Update(input)
        end
    end)

    function funcs:SetAllowDragging(state)
        allowDragging = state
    end
    return funcs
end

local function GetIconData(iconName)
    return IconModule.Icon(iconName)
end

local Windows = {}

function RullzsyHub:CreateWindow(data)
    local Window = {
        Title = data.Title or "RullzsyHub",
        Icon = data.Icon or "home",
        Version = data.Author or "v1.0",
        Folder = data.Folder,
        Size = data.Size or UDim2.new(0, 528, 0, 334),
        ToggleKey = data.ToggleKey or Enum.KeyCode.RightShift,
        LiveSearchDropdown = data.LiveSearchDropdown or false,
        AutoSave = data.AutoSave or true,
        FileSaveName = data.FileSaveName or "RullzsyHub_Config.json",
    }

    local windowFolder = Instance.new("Folder")
    windowFolder.Parent = Gui
    Gui.Name = Window.Title

    local newFloatingIcon = RullzsyHub["105"]:Clone()
    newFloatingIcon.Parent = windowFolder
    newFloatingIcon.TextLabel.Text = Window.Title
    newFloatingIcon.Visible = false
    
    local iconData = GetIconData(Window.Icon)
    if iconData then
        newFloatingIcon.Icon.Image = iconData[1]
        newFloatingIcon.Icon.ImageRectOffset = iconData[2].ImageRectPosition
        newFloatingIcon.Icon.ImageRectSize = iconData[2].ImageRectSize
    end

    local newWindow = RullzsyHub["2"]:Clone()
    local mainFrame = newWindow
    local TopFrame = mainFrame.TopFrame
    local TabButtons = mainFrame.TabButtons
    local Tabs = mainFrame.Tabs

    newWindow.Name = Window.Title
    TopFrame.TextLabel.Text = Window.Title.." - "..Window.Version
    
    local iconData2 = GetIconData(Window.Icon)
    if iconData2 then
        TopFrame.Icon.Image = iconData2[1]
        TopFrame.Icon.ImageRectOffset = iconData2[2].ImageRectPosition
        TopFrame.Icon.ImageRectSize = iconData2[2].ImageRectSize
    end

    newWindow.Size = Window.Size
    newWindow.Visible = false
    newWindow.Parent = windowFolder

    table.insert(Windows, newWindow)

    local selected
    local TabLists = {}
    local TabIndexList = {}

    local function AddTabToList(name, tab, tabbtn, hasicon)
        local data = {
            Name = name,
            TabObject = tab,
            TabButton = tabbtn,
            HasIcon = hasicon
        }
        TabLists[name] = data
        table.insert(TabIndexList, data)
    end

    local SelectedDropdown = nil
    local DropdownState = false

    local function DropdownPopup(state, name)
        if name and DropdownState == false then
            SelectedDropdown = name
            for _, v in newWindow.DropdownSelection.Dropdowns:GetChildren() do
                if v:IsA("Folder") then
                    if v:FindFirstChild("DropdownItems") then
                        v.DropdownItems.Visible = false
                    end
                    if v:FindFirstChild("DropdownItemsSearch") then
                        v.DropdownItemsSearch.Visible = false
                    end
                end
            end
            newWindow.DropdownSelection.TopBar.Title.Text = name
            local dropdownFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(name)
            if dropdownFolder and dropdownFolder:FindFirstChild("DropdownItems") then
                dropdownFolder.DropdownItems.Visible = true
            end
            if dropdownFolder and dropdownFolder:FindFirstChild("DropdownItemsSearch") then
                dropdownFolder.DropdownItemsSearch.Visible = false
            end
        end

        if state == true then
            newWindow.DropdownSelection.Size = UDim2.new(0, 0, 0, 0)
            newWindow.DarkOverlay.BackgroundTransparency = 1
            newWindow.DropdownSelection.Visible = true
            newWindow.DarkOverlay.Visible = true
            newWindow.DropdownSelection.Size = UDim2.new(0.728, 0, 0.684, 0)
            Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)
            DropdownState = true
        elseif state == false then
            newWindow.DropdownSelection.Size = UDim2.new(0, 0, 0, 0)
            local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)
            tw2.Completed:Wait()
            newWindow.DropdownSelection.Visible = false
            newWindow.DarkOverlay.Visible = false
            DropdownState = false
        else
            if DropdownState then
                newWindow.DropdownSelection.Size = UDim2.new(0, 0, 0, 0)
                local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)
                tw2.Completed:Wait()
                newWindow.DropdownSelection.Visible = false
                newWindow.DarkOverlay.Visible = false
                DropdownState = false
            else
                newWindow.DropdownSelection.Size = UDim2.new(0, 0, 0, 0)
                newWindow.DarkOverlay.BackgroundTransparency = 1
                newWindow.DropdownSelection.Visible = true
                newWindow.DarkOverlay.Visible = true
                newWindow.DropdownSelection.Size = UDim2.new(0.728, 0, 0.684, 0)
                Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)
                DropdownState = true
            end
        end
    end

    local function SelectTab(tabName)
        for tablistname, tab in pairs(TabLists) do
            if tablistname ~= tabName then
                tab.TabObject.Visible = false
                Tween(tab.TabButton.TextLabel, {
                    Position = UDim2.new(0, 42, 0.5, 0),
                    Size = UDim2.new(0, 103, 0, 16),
                    TextTransparency = 0.5
                }, TweenConfigs.Global)
                Tween(tab.TabButton.ImageButton, {
                    Position = UDim2.new(0, 12, 0, 18),
                    ImageTransparency = 0.5
                }, TweenConfigs.Global)
                Tween(tab.TabButton.Bar, {
                    Size = UDim2.new(0, 5, 0, 0),
                    BackgroundTransparency = 1
                }, TweenConfigs.Global)
            elseif tablistname == tabName then
                selected = tabName
                tab.TabObject.Visible = true
                Tween(tab.TabButton.TextLabel, {
                    Position = UDim2.new(0, 57, 0.5, 0),
                    Size = UDim2.new(0, 88, 0, 16),
                    TextTransparency = 0
                }, TweenConfigs.Global)
                Tween(tab.TabButton.ImageButton, {
                    Position = UDim2.new(0, 25, 0, 18),
                    ImageTransparency = 0
                }, TweenConfigs.Global)
                Tween(tab.TabButton.Bar, {
                    Size = UDim2.new(0, 5, 0, 25),
                    BackgroundTransparency = 0
                }, TweenConfigs.Global)

                local objectCount = 0
                for _, obj in ipairs(tab.TabObject:GetChildren()) do
                    if obj:IsA("GuiObject") then
                        objectCount = objectCount + 1
                    end
                end
                Tabs.NoObjectFoundText.Visible = (objectCount == 0)
            end
        end
    end

    newWindow.DropdownSelection.TopBar.Close.MouseButton1Click:Connect(function()
        DropdownPopup(false)
    end)

    local textbox = newWindow.DropdownSelection.TopBar.BoxFrame.Frame.TextBox

    textbox:GetPropertyChangedSignal("Text"):Connect(function()
        if not Window.LiveSearchDropdown then return end
        local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
        if string.gsub(textbox.Text, " ", "") ~= "" then
            if not currentFolder then return end
            if currentFolder:FindFirstChild("DropdownItems") then
                currentFolder.DropdownItems.Visible = false
            end
            if currentFolder:FindFirstChild("DropdownItemsSearch") then
                currentFolder.DropdownItemsSearch.Visible = true
            end
            for _, button in (currentFolder:FindFirstChild("DropdownItemsSearch") or {}):GetChildren() do
                if button:IsA("GuiButton") then
                    if string.find(string.lower(button.Name), string.lower(textbox.Text)) then
                        button.Visible = true
                    else
                        button.Visible = false
                    end
                end
            end
        else
            if currentFolder and currentFolder:FindFirstChild("DropdownItems") then
                currentFolder.DropdownItems.Visible = true
            end
            if currentFolder and currentFolder:FindFirstChild("DropdownItemsSearch") then
                currentFolder.DropdownItemsSearch.Visible = false
            end
        end
    end)

    textbox.FocusLost:Connect(function()
        if Window.LiveSearchDropdown then return end
        local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
        if string.gsub(textbox.Text, " ", "") ~= "" then
            if not currentFolder then return end
            if currentFolder:FindFirstChild("DropdownItems") then
                currentFolder.DropdownItems.Visible = false
            end
            if currentFolder:FindFirstChild("DropdownItemsSearch") then
                currentFolder.DropdownItemsSearch.Visible = true
            end
            for _, button in (currentFolder:FindFirstChild("DropdownItemsSearch") or {}):GetChildren() do
                if button:IsA("GuiButton") then
                    if string.find(string.lower(button.Name), string.lower(textbox.Text)) then
                        button.Visible = true
                    else
                        button.Visible = false
                    end
                end
            end
        else
            if currentFolder and currentFolder:FindFirstChild("DropdownItems") then
                currentFolder.DropdownItems.Visible = true
            end
            if currentFolder and currentFolder:FindFirstChild("DropdownItemsSearch") then
                currentFolder.DropdownItemsSearch.Visible = false
            end
        end
    end)

    function Window:KeyTab(data)
        local KeyTab = {}
        local KeyTabData = {
            Title = data.Title or "Key System",
            Icon = data.Icon or "key",
            Callback = data.Callback or function() end,
            Keys = data.Keys or {},
            SaveKey = data.SaveKey or false,
            FileName = data.FileName or "RullzsyKey.txt",
        }

        local newTabButton = RullzsyHub["46"]:Clone()
        newTabButton.Name = KeyTabData.Title
        newTabButton.Parent = newWindow.TabButtons.Lists
        newTabButton.Visible = true
        newTabButton.TextLabel.Text = KeyTabData.Title
        
        local iconKey = GetIconData(KeyTabData.Icon)
        if iconKey then
            newTabButton.ImageButton.Image = iconKey[1]
            newTabButton.ImageButton.ImageRectOffset = iconKey[2].ImageRectPosition
            newTabButton.ImageButton.ImageRectSize = iconKey[2].ImageRectSize
        end

        local newTab = RullzsyHub["43"]:Clone()
        newTab.Name = KeyTabData.Title
        newTab.Parent = newWindow.Tabs
        newTab.Visible = false

        AddTabToList(KeyTabData.Title, newTab, newTabButton)

        local keyFrame = Instance.new("Frame")
        keyFrame.Name = "KeyFrame"
        keyFrame.Size = UDim2.new(1, 0, 0, 0)
        keyFrame.AutomaticSize = Enum.AutomaticSize.Y
        keyFrame.BackgroundTransparency = 1
        keyFrame.Parent = newTab

        local keyLabel = Instance.new("TextLabel")
        keyLabel.Name = "KeyLabel"
        keyLabel.Text = "Enter your key:"
        keyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        keyLabel.TextSize = 18
        keyLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
        keyLabel.BackgroundTransparency = 1
        keyLabel.Size = UDim2.new(1, 0, 0, 30)
        keyLabel.Parent = keyFrame

        local keyBoxFrame = Instance.new("Frame")
        keyBoxFrame.Name = "KeyBoxFrame"
        keyBoxFrame.Size = UDim2.new(1, 0, 0, 40)
        keyBoxFrame.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
        keyBoxFrame.Parent = keyFrame
        keyBoxFrame.Position = UDim2.new(0, 0, 0, 35)

        local keyBoxCorner = Instance.new("UICorner")
        keyBoxCorner.CornerRadius = UDim.new(0, 6)
        keyBoxCorner.Parent = keyBoxFrame

        local keyBoxStroke = Instance.new("UIStroke")
        keyBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        keyBoxStroke.Thickness = 1.5
        keyBoxStroke.Color = Color3.fromRGB(180, 20, 20)
        keyBoxStroke.Parent = keyBoxFrame

        local keyInput = Instance.new("TextBox")
        keyInput.Name = "KeyInput"
        keyInput.Size = UDim2.new(1, -20, 1, 0)
        keyInput.Position = UDim2.new(0, 10, 0, 0)
        keyInput.BackgroundTransparency = 1
        keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
        keyInput.PlaceholderColor3 = Color3.fromRGB(180, 100, 100)
        keyInput.PlaceholderText = "Enter your key here..."
        keyInput.TextSize = 16
        keyInput.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
        keyInput.ClearTextOnFocus = false
        keyInput.Text = ""
        keyInput.Parent = keyBoxFrame

        local submitButton = Instance.new("ImageButton")
        submitButton.Name = "SubmitButton"
        submitButton.Size = UDim2.new(0, 100, 0, 40)
        submitButton.Position = UDim2.new(0.5, -50, 0, 85)
        submitButton.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
        submitButton.AutoButtonColor = false
        submitButton.Parent = keyFrame

        local submitCorner = Instance.new("UICorner")
        submitCorner.CornerRadius = UDim.new(0, 6)
        submitCorner.Parent = submitButton

        local submitStroke = Instance.new("UIStroke")
        submitStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        submitStroke.Thickness = 1.5
        submitStroke.Color = Color3.fromRGB(200, 30, 30)
        submitStroke.Parent = submitButton

        local submitLabel = Instance.new("TextLabel")
        submitLabel.Name = "SubmitLabel"
        submitLabel.Text = "Submit"
        submitLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        submitLabel.TextSize = 16
        submitLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
        submitLabel.BackgroundTransparency = 1
        submitLabel.Size = UDim2.new(1, 0, 1, 0)
        submitLabel.Parent = submitButton

        local statusLabel = Instance.new("TextLabel")
        statusLabel.Name = "StatusLabel"
        statusLabel.Text = ""
        statusLabel.TextColor3 = Color3.fromRGB(255, 200, 200)
        statusLabel.TextSize = 14
        statusLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
        statusLabel.BackgroundTransparency = 1
        statusLabel.Size = UDim2.new(1, 0, 0, 25)
        statusLabel.Position = UDim2.new(0, 0, 0, 135)
        statusLabel.Parent = keyFrame

        local function ValidateAndSubmit()
            local key = keyInput.Text
            if key == "" then
                statusLabel.Text = "Please enter a key!"
                statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
                return
            end

            local isValid = false
            for _, validKey in ipairs(KeyTabData.Keys) do
                if key == validKey then
                    isValid = true
                    break
                end
            end

            if isValid then
                statusLabel.Text = "✓ Key validated successfully!"
                statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
                
                if KeyTabData.SaveKey then
                    writefile(KeyTabData.FileName, key)
                end
                
                KeyTabData.Callback(key)
                
                keyFrame.Visible = false
                
                local successLabel = Instance.new("TextLabel")
                successLabel.Text = "✅ Access Granted!"
                successLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
                successLabel.TextSize = 24
                successLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold)
                successLabel.BackgroundTransparency = 1
                successLabel.Size = UDim2.new(1, 0, 0, 50)
                successLabel.Position = UDim2.new(0, 0, 0.3, 0)
                successLabel.Parent = newTab
            else
                statusLabel.Text = "✗ Invalid key! Please try again."
                statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            end
        end

        submitButton.MouseButton1Click:Connect(ValidateAndSubmit)
        keyInput.FocusLost:Connect(function(enterPressed)
            if enterPressed then
                ValidateAndSubmit()
            end
        end)

        if KeyTabData.SaveKey and isfile(KeyTabData.FileName) then
            local savedKey = readfile(KeyTabData.FileName)
            for _, validKey in ipairs(KeyTabData.Keys) do
                if savedKey == validKey then
                    keyFrame.Visible = false
                    local successLabel = Instance.new("TextLabel")
                    successLabel.Text = "✅ Already Authenticated!"
                    successLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
                    successLabel.TextSize = 24
                    successLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold)
                    successLabel.BackgroundTransparency = 1
                    successLabel.Size = UDim2.new(1, 0, 0, 50)
                    successLabel.Position = UDim2.new(0, 0, 0.3, 0)
                    successLabel.Parent = newTab
                    KeyTabData.Callback(savedKey)
                    break
                end
            end
        end

        return KeyTab
    end

    function Window:Tab(data)
        local Tab = {}
        local TabData = {
            Title = data.Title,
            Icon = data.Icon,
        }

        local newTabButton = RullzsyHub["46"]:Clone()
        newTabButton.Name = TabData.Title
        newTabButton.Parent = newWindow.TabButtons.Lists
        newTabButton.Visible = true
        newTabButton.TextLabel.Text = TabData.Title
        
        local iconData3 = GetIconData(TabData.Icon)
        if iconData3 then
            newTabButton.ImageButton.Image = iconData3[1]
            newTabButton.ImageButton.ImageRectOffset = iconData3[2].ImageRectPosition
            newTabButton.ImageButton.ImageRectSize = iconData3[2].ImageRectSize
        end

        local newTab = RullzsyHub["43"]:Clone()
        newTab.Name = TabData.Title
        newTab.Parent = newWindow.Tabs
        newTab.Visible = false

        AddTabToList(TabData.Title, newTab, newTabButton)

        if selected == TabData.Title then
            newTab.Visible = true
            newTabButton.TextLabel.Position = UDim2.new(0, 57, 0.5, 0)
            newTabButton.TextLabel.Size = UDim2.new(0, 88, 0, 16)
            newTabButton.TextLabel.TextTransparency = 0
            newTabButton.ImageButton.Position = UDim2.new(0, 25, 0, 18)
            newTabButton.ImageButton.ImageTransparency = 0
            newTabButton.Bar.Size = UDim2.new(0, 5, 0, 25)
            newTabButton.Bar.BackgroundTransparency = 0
        else
            newTabButton.TextLabel.Position = UDim2.new(0, 42, 0.5, 0)
            newTabButton.TextLabel.Size = UDim2.new(0, 103, 0, 16)
            newTabButton.TextLabel.TextTransparency = 0.5
            newTabButton.ImageButton.Position = UDim2.new(0, 12, 0, 18)
            newTabButton.ImageButton.ImageTransparency = 0.5
            newTabButton.Bar.Size = UDim2.new(0, 5, 0, 0)
            newTabButton.Bar.BackgroundTransparency = 1
        end

        newTabButton.MouseButton1Click:Connect(function()
            SelectTab(TabData.Title)
        end)

        local function GetCurrentElementObjects()
            local objects = {}
            for _, v in pairs(newTab:GetChildren()) do
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

            local newSection = Instance.new("Frame")
            newSection.Size = UDim2.new(1, 0, 0, 0)
            newSection.AutomaticSize = Enum.AutomaticSize.Y
            newSection.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
            newSection.BorderSizePixel = 0
            newSection.Name = Section.Title
            newSection.Parent = newTab
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 6)
            corner.Parent = newSection
            
            local stroke = Instance.new("UIStroke")
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Thickness = 1.5
            stroke.Color = Color3.fromRGB(180, 20, 20)
            stroke.Parent = newSection
            
            local title = Instance.new("TextLabel")
            title.Name = "Title"
            title.Text = Section.Title
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 16
            title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
            title.BackgroundTransparency = 1
            title.Size = UDim2.new(1, 0, 0, 20)
            title.Parent = newSection
            
            local padding = Instance.new("UIPadding")
            padding.PaddingTop = UDim.new(0, 10)
            padding.PaddingRight = UDim.new(0, 10)
            padding.PaddingLeft = UDim.new(0, 10)
            padding.PaddingBottom = UDim.new(0, 10)
            padding.Parent = newSection
            
            local arrowIcon = GetIconData("chevron-down")
            local arrow = Instance.new("ImageButton")
            arrow.Name = "Arrow"
            arrow.Size = UDim2.new(0, 23, 0, 23)
            arrow.Position = UDim2.new(1, -10, 0.5, 0)
            arrow.AnchorPoint = Vector2.new(1, 0.5)
            arrow.BackgroundTransparency = 1
            arrow.AutoButtonColor = false
            if arrowIcon then
                arrow.Image = arrowIcon[1]
                arrow.ImageRectSize = arrowIcon[2].ImageRectSize
                arrow.ImageRectOffset = arrowIcon[2].ImageRectPosition
            end
            arrow.ImageColor3 = Color3.fromRGB(255, 255, 255)
            arrow.Parent = newSection
            
            local content = Instance.new("Frame")
            content.Name = "Content"
            content.Size = UDim2.new(1, 0, 0, 0)
            content.AutomaticSize = Enum.AutomaticSize.Y
            content.BackgroundTransparency = 1
            content.Visible = false
            content.Position = UDim2.new(0, 0, 0, 35)
            content.Parent = newSection

            newSection.Button = newSection
            newSection.Button.Title = title
            newSection.Button.Title.Arrow = arrow
            newSection.Frame = content
            
            newSection.Button.MouseButton1Click:Connect(function()
                if Section.State == true then
                    content.Visible = false
                    Tween(arrow, {Rotation = 0}, TweenConfigs.Global)
                    Section.State = false
                else
                    content.Visible = true
                    Tween(arrow, {Rotation = 90}, TweenConfigs.Global)
                    Section.State = true
                end
            end)

            newSection.Visible = true

            function Section:SetTitle(newTitle)
                Section.Title = newTitle
                newSection.Button.Title.Text = newTitle
            end

            function Section:Destroy()
                newSection:Destroy()
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

            local newButton = RullzsyHub["4c"]:Clone()
            newButton.Name = ButtonData.Title
            newButton.Parent = parentElement
            newButton.Frame.Title.Text = ButtonData.Title

            if ButtonData.Desc and ButtonData.Desc ~= "" then
                newButton.Frame.Description.Visible = true
                newButton.Frame.Description.Text = ButtonData.Desc
            end

            if ButtonData.Locked then
                newButton.UIStroke.Color = Color3.fromRGB(100, 20, 20)
                newButton.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
                newButton.Frame.Title.TextColor3 = Color3.fromRGB(180, 120, 120)
                newButton.Frame.Title.ClickIcon.ImageColor3 = Color3.fromRGB(180, 120, 120)
                newButton.Frame.Description.TextColor3 = Color3.fromRGB(180, 120, 120)
            end

            newButton.Visible = true

            newButton.MouseEnter:Connect(function()
                if not ButtonData.Locked then
                    Tween(newButton.UIStroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
                end
            end)

            newButton.MouseLeave:Connect(function()
                if not ButtonData.Locked then
                    Tween(newButton.UIStroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                    newButton.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
                    Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
                end
            end)

            newButton.MouseButton1Down:Connect(function()
                if not ButtonData.Locked then
                    Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
                end
            end)

            newButton.MouseButton1Up:Connect(function()
                if not ButtonData.Locked then
                    Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
                    Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
                end
            end)

            newButton.MouseLeave:Connect(function()
                if not ButtonData.Locked then
                    Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
                    Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
                end
            end)

            newButton.MouseButton1Click:Connect(function()
                if not ButtonData.Locked then
                    ButtonData.Callback()
                end
            end)

            newTab.ChildAdded:Connect(function()
                Tabs.NoObjectFoundText.Visible = (#GetCurrentElementObjects() == 0)
            end)

            newTab.ChildRemoved:Connect(function()
                Tabs.NoObjectFoundText.Visible = (#GetCurrentElementObjects() == 0)
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
                Tween(newButton, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(newButton.UIStroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
                Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
            end

            function Button:Unlock()
                ButtonData.Locked = false
                Tween(newButton, {BackgroundColor3 = Color3.fromRGB(60, 20, 20)}, TweenConfigs.Global)
                Tween(newButton.UIStroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
            end

            function Button:Destroy()
                newButton:Destroy()
            end

            return Button
        end

        function Tab:Paragraph(data)
            local Paragraph = {
                Title = data.Title,
                Desc = data.Desc,
                RichText = data.RichText or false,
            }

            local newParagraph = RullzsyHub["59"]:Clone()
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
                newParagraph.Description.Visible = (desc ~= "")
            end

            function Paragraph:Destroy()
                newParagraph:Destroy()
            end

            return Paragraph
        end

        function Tab:Toggle(data)
            local Toggle = {
                Title = data.Title,
                Desc = data.Desc,
                State = data.Default or data.Value or false,
                Locked = data.Locked or false,
                Icon = data.Icon or "check",
                Callback = data.Callback or function() end
            }

            local newToggle = RullzsyHub["60"]:Clone()
            newToggle.Name = Toggle.Title
            newToggle.Parent = parentElement
            newToggle.Title.Text = Toggle.Title

            local iconData4 = GetIconData(Toggle.Icon)
            if iconData4 then
                newToggle.Title.Fill.Ball.Icon.Image = iconData4[1]
                newToggle.Title.Fill.Ball.Icon.ImageRectOffset = iconData4[2].ImageRectPosition
                newToggle.Title.Fill.Ball.Icon.ImageRectSize = iconData4[2].ImageRectSize
            end

            if Toggle.Desc and Toggle.Desc ~= "" then
                newToggle.Description.Visible = true
                newToggle.Description.Text = Toggle.Desc
            end

            if Toggle.State == true then
                newToggle.Title.Fill.Ball.Position = UDim2.new(0.5, 0, 0.5, 0)
                newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
                newToggle.Title.Fill.Ball.Icon.ImageTransparency = 0
            else
                newToggle.Title.Fill.Ball.Position = UDim2.new(0, 0, 0.5, 0)
                newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(80, 30, 30)
                newToggle.Title.Fill.Ball.Icon.ImageTransparency = 1
            end

            if Toggle.Locked then
                newToggle.UIStroke.Color = Color3.fromRGB(100, 20, 20)
                newToggle.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
                newToggle.Title.TextColor3 = Color3.fromRGB(180, 120, 120)
                newToggle.Description.TextColor3 = Color3.fromRGB(180, 120, 120)
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
                    Tween(newToggle.UIStroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                    newToggle.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
                    Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                    Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
                end
            end)

            local function AnimateSwitch(targetState)
                if targetState == true then
                    Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0.5, 0, 0.5, 0)}, TweenConfigs.Global)
                    Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(200, 50, 50)}, TweenConfigs.Global)
                    Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 0}, TweenConfigs.Global)
                else
                    Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0, 0, 0.5, 0)}, TweenConfigs.Global)
                    Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(80, 30, 30)}, TweenConfigs.Global)
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
                Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(newToggle.UIStroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
                Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(newToggle.Title.Fill, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
                Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
            end

            function Toggle:Unlock()
                Toggle.Locked = false
                Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(60, 20, 20)}, TweenConfigs.Global)
                Tween(newToggle.UIStroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(255, 200, 200)}, TweenConfigs.Global)
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
                    Max = data.Value.Max or 100,
                    Default = data.Value.Default or data.Default or 0,
                },
                Locked = data.Locked or false,
                Callback = data.Callback or function() end
            }

            local newSlider = Instance.new("Frame")
            newSlider.Size = UDim2.new(1, 0, 0, 0)
            newSlider.AutomaticSize = Enum.AutomaticSize.Y
            newSlider.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
            newSlider.BorderSizePixel = 0
            newSlider.Name = Slider.Title
            newSlider.Parent = parentElement
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 6)
            corner.Parent = newSlider
            
            local stroke = Instance.new("UIStroke")
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Thickness = 1.5
            stroke.Color = Color3.fromRGB(180, 20, 20)
            stroke.Parent = newSlider
            
            local title = Instance.new("TextLabel")
            title.Name = "Title"
            title.Text = Slider.Title
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 16
            title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
            title.BackgroundTransparency = 1
            title.Size = UDim2.new(1, 0, 0, 20)
            title.Parent = newSlider

            if Slider.Desc and Slider.Desc ~= "" then
                local desc = Instance.new("TextLabel")
                desc.Name = "Description"
                desc.Text = Slider.Desc
                desc.TextColor3 = Color3.fromRGB(255, 200, 200)
                desc.TextSize = 14
                desc.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
                desc.BackgroundTransparency = 1
                desc.Size = UDim2.new(1, 0, 0, 18)
                desc.Parent = newSlider
            end
            
            local sliderFrame = Instance.new("Frame")
            sliderFrame.Name = "SliderFrame"
            sliderFrame.Size = UDim2.new(1, 0, 0, 30)
            sliderFrame.Position = UDim2.new(0, 0, 0, 40)
            sliderFrame.BackgroundTransparency = 1
            sliderFrame.Parent = newSlider
            
            local track = Instance.new("Frame")
            track.Name = "Track"
            track.Size = UDim2.new(1, -30, 0, 6)
            track.Position = UDim2.new(0, 15, 0.5, 0)
            track.AnchorPoint = Vector2.new(0, 0.5)
            track.BackgroundColor3 = Color3.fromRGB(80, 30, 30)
            track.Parent = sliderFrame
            
            local trackCorner = Instance.new("UICorner")
            trackCorner.CornerRadius = UDim.new(100, 0)
            trackCorner.Parent = track
            
            local fill = Instance.new("Frame")
            fill.Name = "Fill"
            fill.Size = UDim2.new(0, 0, 1, 0)
            fill.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
            fill.Parent = track
            
            local fillCorner = Instance.new("UICorner")
            fillCorner.CornerRadius = UDim.new(100, 0)
            fillCorner.Parent = fill
            
            local thumb = Instance.new("ImageButton")
            thumb.Name = "Thumb"
            thumb.Size = UDim2.new(0, 16, 0, 16)
            thumb.Position = UDim2.new(0, 0, 0.5, 0)
            thumb.AnchorPoint = Vector2.new(0.5, 0.5)
            thumb.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
            thumb.AutoButtonColor = false
            thumb.Parent = track
            
            local thumbCorner = Instance.new("UICorner")
            thumbCorner.CornerRadius = UDim.new(100, 0)
            thumbCorner.Parent = thumb
            
            local valueLabel = Instance.new("TextLabel")
            valueLabel.Name = "ValueLabel"
            valueLabel.Text = "0"
            valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            valueLabel.TextSize = 14
            valueLabel.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
            valueLabel.BackgroundTransparency = 1
            valueLabel.Size = UDim2.new(0, 50, 0, 20)
            valueLabel.Position = UDim2.new(1, 0, 0.5, 0)
            valueLabel.AnchorPoint = Vector2.new(1, 0.5)
            valueLabel.TextXAlignment = Enum.TextXAlignment.Right
            valueLabel.Parent = sliderFrame
            
            newSlider.Visible = true

            local trackObj = track
            local fillObj = fill
            local thumbObj = thumb
            local labelObj = valueLabel

            local min = Slider.Value.Min
            local max = Slider.Value.Max
            local step = Slider.Step
            local value = Slider.Value.Default
            local MouseDown = false

            local function convertValueToScale(val)
                return (val - min) / (max - min)
            end

            local function updateSlider(val)
                val = math.clamp(val, min, max)
                local rounded = math.round(val / step) * step
                val = math.clamp(rounded, min, max)
                
                local scale = convertValueToScale(val)
                fillObj.Size = UDim2.new(scale, 0, 1, 0)
                thumbObj.Position = UDim2.new(scale, 0, 0.5, 0)
                labelObj.Text = tostring(val)
                Slider.Value = val
                Slider.Callback(val)
            end

            local function slide(input)
                MouseDown = true
                repeat
                    task.wait()
                    local mouseX = input and input.Position.X or UIS:GetMouseLocation().X
                    local trackPos = trackObj.AbsolutePosition.X
                    local trackSize = trackObj.AbsoluteSize.X
                    local percent = math.clamp((mouseX - trackPos) / trackSize, 0, 1)
                    local val = min + percent * (max - min)
                    updateSlider(val)
                until MouseDown == false
            end

            trackObj.MouseButton1Down:Connect(function(input)
                slide(input)
            end)

            trackObj.MouseEnter:Connect(function()
                if not Slider.Locked then
                    Tween(stroke, {Color = Color3.fromRGB(220, 40, 40)}, TweenConfigs.Global)
                end
            end)

            trackObj.MouseLeave:Connect(function()
                if not Slider.Locked and not MouseDown then
                    Tween(stroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                end
            end)

            UIS.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    MouseDown = false
                end
            end)

            updateSlider(value)

            function Slider:SetTitle(newText)
                title.Text = newText
            end

            function Slider:SetDesc(newDesc)
                local desc = newSlider:FindFirstChild("Description")
                if desc then
                    desc.Text = newDesc
                    desc.Visible = (newDesc and newDesc ~= "")
                end
            end

            function Slider:Set(val)
                updateSlider(val)
            end

            function Slider:Lock()
                Slider.Locked = true
                Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(stroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
            end

            function Slider:Unlock()
                Slider.Locked = false
                Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(60, 20, 20)}, TweenConfigs.Global)
                Tween(stroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
            end

            function Slider:Destroy()
                newSlider:Destroy()
            end

            return Slider
        end

        function Tab:Input(data)
            local Input = {
                Title = data.Title,
                Desc = data.Desc,
                Placeholder = data.Placeholder or "",
                Default = data.Default or data.Value or "",
                Locked = data.Locked or false,
                MultiLine = data.MultiLine or false,
                Callback = data.Callback or function() end
            }

            local newInput = Instance.new("Frame")
            newInput.Size = UDim2.new(1, 0, 0, 0)
            newInput.AutomaticSize = Enum.AutomaticSize.Y
            newInput.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
            newInput.BorderSizePixel = 0
            newInput.Name = Input.Title
            newInput.Parent = parentElement
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 6)
            corner.Parent = newInput
            
            local stroke = Instance.new("UIStroke")
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Thickness = 1.5
            stroke.Color = Color3.fromRGB(180, 20, 20)
            stroke.Parent = newInput
            
            local title = Instance.new("TextLabel")
            title.Name = "Title"
            title.Text = Input.Title
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 16
            title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
            title.BackgroundTransparency = 1
            title.Size = UDim2.new(1, 0, 0, 20)
            title.Parent = newInput

            if Input.Desc and Input.Desc ~= "" then
                local desc = Instance.new("TextLabel")
                desc.Name = "Description"
                desc.Text = Input.Desc
                desc.TextColor3 = Color3.fromRGB(255, 200, 200)
                desc.TextSize = 14
                desc.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
                desc.BackgroundTransparency = 1
                desc.Size = UDim2.new(1, 0, 0, 18)
                desc.Parent = newInput
            end
            
            local boxFrame = Instance.new("Frame")
            boxFrame.Name = "BoxFrame"
            boxFrame.Size = UDim2.new(1, 0, 0, 30)
            boxFrame.Position = UDim2.new(0, 0, 0, 40)
            boxFrame.BackgroundColor3 = Color3.fromRGB(80, 30, 30)
            boxFrame.Parent = newInput
            
            local boxCorner = Instance.new("UICorner")
            boxCorner.CornerRadius = UDim.new(0, 5)
            boxCorner.Parent = boxFrame
            
            local boxStroke = Instance.new("UIStroke")
            boxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            boxStroke.Thickness = 1.5
            boxStroke.Color = Color3.fromRGB(180, 20, 20)
            boxStroke.Parent = boxFrame
            
            local textBox = Instance.new("TextBox")
            textBox.Name = "TextBox"
            textBox.Size = UDim2.new(1, -20, 1, 0)
            textBox.Position = UDim2.new(0, 10, 0, 0)
            textBox.BackgroundTransparency = 1
            textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            textBox.PlaceholderColor3 = Color3.fromRGB(180, 100, 100)
            textBox.TextSize = 14
            textBox.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
            textBox.ClearTextOnFocus = false
            textBox.TextXAlignment = Enum.TextXAlignment.Left
            textBox.Parent = boxFrame

            newInput.Visible = true

            textBox.Text = Input.Default
            textBox.PlaceholderText = Input.Placeholder
            textBox.MultiLine = Input.MultiLine

            if Input.MultiLine then
                textBox.AutomaticSize = Enum.AutomaticSize.Y
            end

            if Input.Locked then
                stroke.Color = Color3.fromRGB(100, 20, 20)
                newInput.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
                title.TextColor3 = Color3.fromRGB(180, 120, 120)
                textBox.TextColor3 = Color3.fromRGB(180, 120, 120)
                textBox.PlaceholderColor3 = Color3.fromRGB(180, 120, 120)
                textBox.Active = false
                textBox.Interactable = false
                textBox.TextEditable = false
            end

            textBox.FocusLost:Connect(function()
                if not Input.Locked then
                    Input.Text = textBox.Text
                    Input.Callback(Input.Text)
                end
            end)

            function Input:Set(newText)
                textBox.Text = newText
                Input.Text = newText
                Input.Callback(newText)
            end

            function Input:SetTitle(newText)
                title.Text = newText
            end

            function Input:SetDesc(newDesc)
                local desc = newInput:FindFirstChild("Description")
                if desc then
                    desc.Text = newDesc
                    desc.Visible = (newDesc and newDesc ~= "")
                end
            end

            function Input:SetPlaceholder(newText)
                textBox.PlaceholderText = newText
            end

            function Input:Lock()
                Input.Locked = true
                Tween(stroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
                Tween(newInput, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(title, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(textBox, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(textBox, {PlaceholderColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                textBox.Active = false
                textBox.Interactable = false
                textBox.TextEditable = false
            end

            function Input:Unlock()
                Input.Locked = false
                Tween(stroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                Tween(newInput, {BackgroundColor3 = Color3.fromRGB(60, 20, 20)}, TweenConfigs.Global)
                Tween(title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(textBox, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(textBox, {PlaceholderColor3 = Color3.fromRGB(180, 100, 100)}, TweenConfigs.Global)
                textBox.Active = true
                textBox.Interactable = true
                textBox.TextEditable = true
            end

            function Input:Destroy()
                newInput:Destroy()
            end

            Input.Callback(Input.Default)
            return Input
        end

        function Tab:Dropdown(data)
            local Dropdown = {
                Title = data.Title,
                Desc = data.Desc,
                Multi = data.Multi or false,
                Values = data.Values or {},
                Value = data.Value or data.Default,
                AllowNone = data.AllowNone or false,
                Locked = data.Locked or false,
                Callback = data.Callback or function() end
            }

            if not Dropdown.Multi and Dropdown.AllowNone then
                table.insert(Dropdown.Values, 1, "None")
            end

            local selected = nil

            local newDropdown = Instance.new("ImageButton")
            newDropdown.Size = UDim2.new(1, 0, 0, 0)
            newDropdown.AutomaticSize = Enum.AutomaticSize.Y
            newDropdown.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
            newDropdown.BorderSizePixel = 0
            newDropdown.AutoButtonColor = false
            newDropdown.Name = Dropdown.Title
            newDropdown.Parent = parentElement
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 6)
            corner.Parent = newDropdown
            
            local stroke = Instance.new("UIStroke")
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Thickness = 1.5
            stroke.Color = Color3.fromRGB(180, 20, 20)
            stroke.Parent = newDropdown
            
            local title = Instance.new("TextLabel")
            title.Name = "Title"
            title.Text = Dropdown.Title
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 16
            title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
            title.BackgroundTransparency = 1
            title.Size = UDim2.new(1, 0, 0, 20)
            title.Parent = newDropdown

            if Dropdown.Desc and Dropdown.Desc ~= "" then
                local desc = Instance.new("TextLabel")
                desc.Name = "Description"
                desc.Text = Dropdown.Desc
                desc.TextColor3 = Color3.fromRGB(255, 200, 200)
                desc.TextSize = 14
                desc.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
                desc.BackgroundTransparency = 1
                desc.Size = UDim2.new(1, 0, 0, 18)
                desc.Parent = newDropdown
            end
            
            local boxFrame = Instance.new("Frame")
            boxFrame.Name = "BoxFrame"
            boxFrame.Size = UDim2.new(0, 120, 0, 25)
            boxFrame.Position = UDim2.new(1, -10, 0.5, 0)
            boxFrame.AnchorPoint = Vector2.new(1, 0.5)
            boxFrame.BackgroundTransparency = 1
            boxFrame.Parent = newDropdown
            
            local trigger = Instance.new("ImageButton")
            trigger.Name = "Trigger"
            trigger.Size = UDim2.new(0, 120, 0, 25)
            trigger.BackgroundColor3 = Color3.fromRGB(80, 30, 30)
            trigger.AutoButtonColor = false
            trigger.Parent = boxFrame
            
            local triggerCorner = Instance.new("UICorner")
            triggerCorner.CornerRadius = UDim.new(0, 5)
            triggerCorner.Parent = trigger
            
            local triggerStroke = Instance.new("UIStroke")
            triggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            triggerStroke.Thickness = 1.5
            triggerStroke.Color = Color3.fromRGB(180, 20, 20)
            triggerStroke.Parent = trigger
            
            local triggerTitle = Instance.new("TextLabel")
            triggerTitle.Name = "Title"
            triggerTitle.Text = ""
            triggerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            triggerTitle.TextSize = 14
            triggerTitle.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
            triggerTitle.BackgroundTransparency = 1
            triggerTitle.Size = UDim2.new(1, -10, 1, 0)
            triggerTitle.Position = UDim2.new(0, 5, 0, 0)
            triggerTitle.TextXAlignment = Enum.TextXAlignment.Left
            triggerTitle.Parent = trigger

            local dropdownFolder = Instance.new("Folder")
            dropdownFolder.Name = Dropdown.Title
            dropdownFolder.Parent = newWindow.DropdownSelection.Dropdowns

            newDropdown.Visible = true

            if Dropdown.Locked then
                stroke.Color = Color3.fromRGB(100, 20, 20)
                newDropdown.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
                title.TextColor3 = Color3.fromRGB(180, 120, 120)
                trigger.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
                triggerStroke.Color = Color3.fromRGB(100, 20, 20)
                triggerTitle.TextColor3 = Color3.fromRGB(180, 120, 120)
            end

            local function SelectValue(multi, newValue)
                if not multi then
                    selected = newValue
                    Dropdown.Value = selected
                    triggerTitle.Text = selected
                    return selected
                else
                    if not selected then selected = {} end
                    local idx = table.find(selected, newValue)
                    if idx then
                        if not Dropdown.AllowNone and #selected == 1 then return end
                        table.remove(selected, idx)
                    else
                        table.insert(selected, newValue)
                    end
                    Dropdown.Value = selected
                    triggerTitle.Text = table.concat(selected, ", ")
                    return selected
                end
            end

            if not Dropdown.Multi then
                selected = Dropdown.Value or nil
                triggerTitle.Text = selected or ""
            else
                if type(Dropdown.Value) == "string" then
                    Dropdown.Value = {Dropdown.Value}
                end
                selected = Dropdown.Value or {}
                triggerTitle.Text = table.concat(selected, ", ")
            end

            local dropdownItems = Instance.new("ScrollingFrame")
            dropdownItems.Name = "DropdownItems"
            dropdownItems.Size = UDim2.new(1, 0, 1, -50)
            dropdownItems.Position = UDim2.new(0, 0, 0, 50)
            dropdownItems.BackgroundTransparency = 1
            dropdownItems.BorderSizePixel = 0
            dropdownItems.ScrollBarThickness = 4
            dropdownItems.ScrollBarImageColor3 = Color3.fromRGB(180, 20, 20)
            dropdownItems.AutomaticCanvasSize = Enum.AutomaticSize.Y
            dropdownItems.CanvasSize = UDim2.new(0, 0, 0, 0)
            dropdownItems.Parent = dropdownFolder

            local itemsLayout = Instance.new("UIListLayout")
            itemsLayout.Padding = UDim.new(0, 5)
            itemsLayout.SortOrder = Enum.SortOrder.LayoutOrder
            itemsLayout.Parent = dropdownItems

            local itemsPadding = Instance.new("UIPadding")
            itemsPadding.PaddingTop = UDim.new(0, 5)
            itemsPadding.PaddingRight = UDim.new(0, 10)
            itemsPadding.PaddingLeft = UDim.new(0, 10)
            itemsPadding.PaddingBottom = UDim.new(0, 5)
            itemsPadding.Parent = dropdownItems

            for _, value in ipairs(Dropdown.Values) do
                local button = Instance.new("ImageButton")
                button.Name = value
                button.Size = UDim2.new(1, 0, 0, 35)
                button.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
                button.AutoButtonColor = false
                button.Parent = dropdownItems
                
                local btnCorner = Instance.new("UICorner")
                btnCorner.CornerRadius = UDim.new(0, 6)
                btnCorner.Parent = button
                
                local btnStroke = Instance.new("UIStroke")
                btnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                btnStroke.Thickness = 1.5
                btnStroke.Color = Color3.fromRGB(180, 20, 20)
                btnStroke.Parent = button
                
                local label = Instance.new("TextLabel")
                label.Name = "Title"
                label.Text = value
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
                label.TextSize = 14
                label.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
                label.BackgroundTransparency = 1
                label.Size = UDim2.new(1, -20, 1, 0)
                label.Position = UDim2.new(0, 10, 0, 0)
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.Parent = button
                
                if (not Dropdown.Multi and selected == value) or 
                   (Dropdown.Multi and table.find(selected, value)) then
                    button.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
                    label.TextColor3 = Color3.fromRGB(255, 255, 255)
                    btnStroke.Color = Color3.fromRGB(220, 50, 50)
                end
                
                button.MouseButton1Click:Connect(function()
                    if not Dropdown.Locked then
                        local result = SelectValue(Dropdown.Multi, value)
                        Dropdown.Callback(result)
                    end
                end)
            end

            trigger.MouseButton1Click:Connect(function()
                if not Dropdown.Locked then
                    DropdownPopup(nil, Dropdown.Title)
                end
            end)

            function Dropdown:SetTitle(newText)
                title.Text = newText
            end

            function Dropdown:SetDesc(newDesc)
                local desc = newDropdown:FindFirstChild("Description")
                if desc then
                    desc.Text = newDesc
                    desc.Visible = (newDesc and newDesc ~= "")
                end
            end

            function Dropdown:Select(newValue)
                local result = SelectValue(Dropdown.Multi, newValue)
                Dropdown.Callback(result)
            end

            function Dropdown:Lock()
                Dropdown.Locked = true
                Tween(stroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
                Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(title, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
                Tween(trigger, {BackgroundColor3 = Color3.fromRGB(40, 15, 15)}, TweenConfigs.Global)
                Tween(triggerStroke, {Color = Color3.fromRGB(100, 20, 20)}, TweenConfigs.Global)
                Tween(triggerTitle, {TextColor3 = Color3.fromRGB(180, 120, 120)}, TweenConfigs.Global)
            end

            function Dropdown:Unlock()
                Dropdown.Locked = false
                Tween(stroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(60, 20, 20)}, TweenConfigs.Global)
                Tween(title, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
                Tween(trigger, {BackgroundColor3 = Color3.fromRGB(80, 30, 30)}, TweenConfigs.Global)
                Tween(triggerStroke, {Color = Color3.fromRGB(180, 20, 20)}, TweenConfigs.Global)
                Tween(triggerTitle, {TextColor3 = Color3.fromRGB(255, 255, 255)}, TweenConfigs.Global)
            end

            function Dropdown:Destroy()
                newDropdown:Destroy()
            end

            Dropdown.Callback(Dropdown.Value)
            return Dropdown
        end

        function Tab:Divider()
            local newDivider = RullzsyHub["42"]:Clone()
            newDivider.Parent = newTab
            newDivider.Visible = true
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
        local newDivider = RullzsyHub["42"]:Clone()
        newDivider.Parent = newWindow.TabButtons.Lists
        newDivider.Visible = true
    end

    function Window:SetToggleKey(newKey)
        if type(newKey) == "string" then
            Window.ToggleKey = Enum.KeyCode[newKey]
        else
            Window.ToggleKey = newKey
        end
    end

    function Window:Dialog(data)
        local Dialog = {
            Title = data.Title,
            Content = data.Content,
            Icon = data.Icon,
            Buttons = data.Buttons or {},
        }

        local dialogFrame = Instance.new("Frame")
        dialogFrame.Size = UDim2.new(0, 300, 0, 150)
        dialogFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
        dialogFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        dialogFrame.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
        dialogFrame.BorderSizePixel = 0
        dialogFrame.Parent = newWindow
        dialogFrame.ZIndex = 10

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 10)
        corner.Parent = dialogFrame

        local stroke = Instance.new("UIStroke")
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Thickness = 1.5
        stroke.Color = Color3.fromRGB(180, 20, 20)
        stroke.Parent = dialogFrame

        local title = Instance.new("TextLabel")
        title.Text = Dialog.Title
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.TextSize = 18
        title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
        title.BackgroundTransparency = 1
        title.Size = UDim2.new(1, -20, 0, 30)
        title.Position = UDim2.new(0, 10, 0, 10)
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.Parent = dialogFrame

        local content = Instance.new("TextLabel")
        content.Text = Dialog.Content or ""
        content.TextColor3 = Color3.fromRGB(255, 220, 220)
        content.TextSize = 14
        content.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
        content.BackgroundTransparency = 1
        content.Size = UDim2.new(1, -20, 0, 50)
        content.Position = UDim2.new(0, 10, 0, 45)
        content.TextXAlignment = Enum.TextXAlignment.Left
        content.TextWrapped = true
        content.Parent = dialogFrame

        local buttonFrame = Instance.new("Frame")
        buttonFrame.Size = UDim2.new(1, -20, 0, 40)
        buttonFrame.Position = UDim2.new(0, 10, 1, -50)
        buttonFrame.BackgroundTransparency = 1
        buttonFrame.Parent = dialogFrame

        local buttonLayout = Instance.new("UIListLayout")
        buttonLayout.FillDirection = Enum.FillDirection.Horizontal
        buttonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        buttonLayout.Padding = UDim.new(0, 10)
        buttonLayout.Parent = buttonFrame

        for _, buttonData in ipairs(Dialog.Buttons) do
            local btn = Instance.new("TextButton")
            btn.Text = buttonData.Title or "Button"
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.TextSize = 14
            btn.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
            btn.Size = UDim2.new(0, 80, 1, 0)
            btn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
            btn.AutoButtonColor = false
            btn.Parent = buttonFrame
            
            local btnCorner = Instance.new("UICorner")
            btnCorner.CornerRadius = UDim.new(0, 6)
            btnCorner.Parent = btn
            
            btn.MouseButton1Click:Connect(function()
                if buttonData.Callback then buttonData.Callback() end
                dialogFrame:Destroy()
            end)
        end

        return Dialog
    end

    local oldFloatingSize = newFloatingIcon.Size
    local oldWindowSize = Window.Size
    local oldWindowSizeMaximize = Window.Size
    local oldWindowPositionMaximize = newWindow.Position
    local maximizedWindow = false

    local windowDraggable = Draggable(newWindow.TopFrame, newWindow)
    Draggable(newFloatingIcon, newFloatingIcon)

    newWindow.Visible = true
    newWindow.Size = UDim2.fromOffset(0, 0)

    local windowstate = newWindow.Visible
    local timeout = false

    local function ToggleWindow(state)
        if state == true then
            newWindow.Size = UDim2.fromOffset(0, 0)
            newWindow.Visible = true
            Tween(newFloatingIcon, {Size = UDim2.new(0, 0, 0, 0)}, TweenConfigs.Global)
            Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global).Completed:Wait()
            newWindow.Tabs.Visible = true
            newWindow.TabButtons.Visible = true
            newFloatingIcon.Visible = false
        elseif state == false then
            oldWindowSize = newWindow.Size
            newFloatingIcon.Size = UDim2.fromOffset(0, 0)
            newFloatingIcon.Visible = true
            newWindow.Tabs.Visible = false
            newWindow.TabButtons.Visible = false
            Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
            Tween(newWindow, {Size = UDim2.fromOffset(0, 0)}, TweenConfigs.Global).Completed:Wait()
            newWindow.Visible = false
        else
            if windowstate then
                oldWindowSize = newWindow.Size
                newFloatingIcon.Size = UDim2.fromOffset(0, 0)
                newFloatingIcon.Visible = true
                newWindow.Tabs.Visible = false
                newWindow.TabButtons.Visible = false
                Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
                Tween(newWindow, {Size = UDim2.fromOffset(0, 0)}, TweenConfigs.Global).Completed:Wait()
                newWindow.Visible = false
                windowstate = false
            else
                oldFloatingSize = newFloatingIcon.Size
                newWindow.Size = UDim2.fromOffset(0, 0)
                newWindow.Visible = true
                Tween(newFloatingIcon, {Size = UDim2.new(0, 0, 0, 0)}, TweenConfigs.Global)
                Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global).Completed:Wait()
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
        Window:Dialog({
            Icon = "alert-triangle",
            Title = "Close Window",
            Content = "Do you want to close this window? You will not be able to open it again.",
            Buttons = {
                { Title = "Cancel" },
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
            windowDraggable:SetAllowDragging(false)
            oldWindowSizeMaximize = newWindow.Size
            oldWindowPositionMaximize = newWindow.Position
            Tween(newWindow, {Size = UDim2.new(1, 0, 1, 0)}, TweenConfigs.Global)
            Tween(newWindow, {Position = UDim2.new(0.5, 0, 0.5, 0)}, TweenConfigs.Global)
            Tween(newWindow.UICorner, {CornerRadius = UDim.new(0, 0)}, TweenConfigs.Global)
            maximizedWindow = true
        else
            windowDraggable:SetAllowDragging(true)
            Tween(newWindow, {Size = oldWindowSizeMaximize}, TweenConfigs.Global)
            Tween(newWindow, {Position = oldWindowPositionMaximize}, TweenConfigs.Global)
            Tween(newWindow.UICorner, {CornerRadius = UDim.new(0, 10)}, TweenConfigs.Global)
            maximizedWindow = false
        end
    end)

    Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)

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

function RullzsyHub:Notify(data)
    local Notification = {}
    local Notif = {
        Title = data.Title,
        Content = data.Content,
        Icon = data.Icon,
        Duration = data.Duration or 5
    }

    local new = Instance.new("Frame")
    new.Size = UDim2.new(0, 0, 0, 60)
    new.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
    new.BorderSizePixel = 0
    new.ClipsDescendants = true
    new.AnchorPoint = Vector2.new(0.5, 0.5)
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = new
    
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Thickness = 1.5
    stroke.Color = Color3.fromRGB(180, 20, 20)
    stroke.Parent = new
    
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Text = Notif.Title
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 16
    title.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, -20, 0, 20)
    title.Position = UDim2.new(0, 10, 0, 5)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = new
    
    local content = Instance.new("TextLabel")
    content.Name = "Content"
    content.Text = Notif.Content
    content.TextColor3 = Color3.fromRGB(255, 220, 220)
    content.TextSize = 13
    content.FontFace = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium)
    content.BackgroundTransparency = 1
    content.Size = UDim2.new(1, -20, 0, 20)
    content.Position = UDim2.new(0, 10, 0, 28)
    content.TextXAlignment = Enum.TextXAlignment.Left
    content.TextWrapped = true
    content.Parent = new
    
    local closeBtn = Instance.new("ImageButton")
    closeBtn.Name = "Close"
    closeBtn.Size = UDim2.new(0, 20, 0, 20)
    closeBtn.Position = UDim2.new(1, -25, 0, 5)
    closeBtn.BackgroundTransparency = 1
    local xIcon = GetIconData("x")
    if xIcon then
        closeBtn.Image = xIcon[1]
        closeBtn.ImageRectSize = xIcon[2].ImageRectSize
        closeBtn.ImageRectOffset = xIcon[2].ImageRectPosition
    end
    closeBtn.Parent = new

    if #Windows == 1 and Windows[1].Visible and Windows[1].Tabs.Visible then
        new.Parent = Windows[1].NotificationFrame.NotificationList
    else
        new.Parent = Gui.NotificationList
    end
    
    new.Visible = true

    local function Close()
        if new then
            local close = Tween(new, {Size = UDim2.new(0, 0, 0, 0)}, TweenConfigs.Notification)
            task.wait(TweenConfigs.Notification.Duration)
            if new then
                new:Destroy()
            end
            new = nil
        end
    end

    local open = Tween(new, {Size = UDim2.new(0, 300, 0, 60)}, TweenConfigs.Notification)
    open.Completed:Connect(function()
        task.delay(Notif.Duration, Close)
    end)

    if closeBtn then
        closeBtn.MouseButton1Click:Connect(Close)
    end

    function Notification:Close()
        Close()
    end

    return Notification
end

RullzsyHub["3e"] = Instance.new("ModuleScript", RullzsyHub["1"]);
RullzsyHub["3e"]["Name"] = [[Library]];
RullzsyHub["3e"].Value = RullzsyHub

RullzsyHub["41"].Parent = nil
RullzsyHub["2"].Parent = nil
RullzsyHub["105"].Parent = nil

return RullzsyHub