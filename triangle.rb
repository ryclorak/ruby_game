require 'ruby2d'

set title: 'mothafuckin triangle', background: 'fuchsia'

Triangle.new(
    x1: 320, y1:  50,
    x2: 540, y2: 430,
    x3: 100, y3: 430,
    color: ['red', 'green', 'blue']
)
tick = 0
update do
    if tick % 60 == 0
        set background: 'random'
    end
    tick += 1
end

show