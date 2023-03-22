require 'ruby2d'

set title: 'clocklocking triangle', background: 'purple'

tick = 0
@x_speed = 0
@y_speed = 0

Triangle.new(
    x1: 320, y1:  50,
    x2: 540, y2: 430,
    x3: 100, y3: 430,
    color: ['red', 'green', 'blue']
)

@square = Square.new(x: 50, y: 50, size: 100)

on :key_down do |event|
    if event.key == 'a'
        @x_speed = -2
        @y_speed = 0
    elsif event.key == 'd'
        @x_speed = 2
        @y_speed = 0
    elsif event.key == 'w'
        @x_speed = 0
        @y_speed = -2
    elsif event.key == 's'
        @x_speed = 0
        @y_speed = 2
    end
end

update do
    @square.x += @x_speed
    @square.y += @y_speed
    if tick % 60 == 0
        set background: 'random'
    end
    tick += 1
end

show