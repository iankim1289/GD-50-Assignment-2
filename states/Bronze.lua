Bronze = Class{}

function Bronze:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
end
function Bronze:render()
    love.graphics.rectangle('Bronze.png', self.x, self.y, self.width, self.height)
end