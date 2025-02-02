local Root = script.Parent.Parent
local Components = Root.Components
local Flipper = require(Root.Packages.Flipper)
local Creator = require(Root.Creator)

local Paragraph = {}
Paragraph.__index = Paragraph
Paragraph.__type = "Paragraph"

function Paragraph:New(Config)
    assert(Config.Title, "Paragraph - Missing Title")
    Config.Content = Config.Content or ""

    local Paragraph = require(Components.Element)(Config.Title, Config.Content, Paragraph.Container, false)
    Paragraph.Frame.BackgroundTransparency = 0.92
    Paragraph.Border.Transparency = 0.6

    return Paragraph
end

function Paragraph:Set(Config)
    self.Title = Config.Title or self.Title
    self.Content = Config.Content or self.Content

    self.Frame.Title.Text = self.Title
    self.Frame.Content.Text = self.Content
end

return Paragraph
