Gold = Class{}

function Gold:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end
function Gold:render()
    love.graphics.rectangle('Gold.png', self.x, self.y, self.width, self.height)
end