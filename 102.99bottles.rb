# "99 bottles of beer on the wall, 99 bottles of beer, take one down, pass it around 98 bottles of beer on the wall"
# "1 bottle of beer on the wall 1 bottle of beer, take it down, pass it around, 0 bottles of beer on the wall"


def bottles_song(bottles)
  (bottles).times do |num|
    last = bottles - num == 1 ? "it" : "one"
    puts "#{bottles - num} bottles of beer on the wall, #{bottles - num} bottles of beer, take #{last} down, pass it around, #{bottles - num - 1} bottles of beer on the wall"
  end
end

bottles_song(99)