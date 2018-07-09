Silver = Class{}

function Silver:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end
function Silver:render()
    love.graphics.rectangle('Silver.png', self.x, self.y, self.width, self.height)
end