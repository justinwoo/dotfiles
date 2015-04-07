path = require 'path'

# background update interval by seconds
update_interval = 60 * 10

# function (image_url: String)
# takes url of an image to be set as the background image
setBackground = (image_url) ->
  horizontal = document.getElementsByClassName('horizontal')[0]
  horizontal.style.background = "url('{image_url}')"
                            .replace('{image_url}', image_url)
  horizontal.style.backgroundSize = "cover"

images = []

# tanuki kouji
images.push('https://farm4.staticflickr.com/3675/9164642229_9fd0560b31_o_d.jpg')
# sapporo cycling_road
images.push('http://media-cache-ec0.pinimg.com/originals/39/8a/ff/398aff8e6dcea2befe58f09480857a4b.jpg')
# sapporo cycling_road_2
images.push('https://farm6.staticflickr.com/5344/9166865940_cd5e192805_o_d.jpg')
# sapporo cycling_road_3
images.push('https://farm6.staticflickr.com/5344/9166865940_cd5e192805_o_d.jpg')
# shiroishi?
images.push('https://farm8.staticflickr.com/7327/9166866204_0f4f31b676_o_d.jpg')
# chou-ku de kaerimichi
images.push('https://farm8.staticflickr.com/7386/9106753020_0fe44afae1_o_d.jpg')
# hokkaido jingu mae doori
images.push('http://media-cache-ec0.pinimg.com/originals/53/0b/1d/530b1dddb1d525b34c36ea37e305b6b0.jpg')
# hokkaido jingu mae doori 2
images.push('https://farm8.staticflickr.com/7316/8983499479_c270145464_o_d.jpg')
# maruyama kouen
images.push('https://farm6.staticflickr.com/5350/8983498963_d573cbe2b3_o_d.jpg')
# maruyama kouen 2
images.push('https://farm8.staticflickr.com/7437/8983499261_6a21719b29_o_d.jpg')
# maruyama kouen 3
images.push('https://farm8.staticflickr.com/7385/8983499761_7f7458fd44_o_d.jpg')
# maruyama kouen 4
images.push('https://farm9.staticflickr.com/8136/8983500071_949f60fa26_o_d.jpg')
# nakajima kouen
images.push('https://farm9.staticflickr.com/8137/8963476625_1d6d16250f_o_d.jpg')
# odori kouen
images.push('https://farm8.staticflickr.com/7448/8918339003_785f0b0d78_o_d.jpg')
# odori kouen 2
images.push('https://farm4.staticflickr.com/3675/8918340255_f3015a67d0_o_d.jpg')
# chuo-ku nishi 15 choume?
images.push('https://farm4.staticflickr.com/3703/8918957622_184aa126e1_o_d.jpg')

# function ()
# calls setBackground with a random image
randomSelect = () ->
  index = Math.floor(Math.random() * images.length)
  setBackground(images[index])

# initialize the background
randomSelect()

# set the interval callback
setInterval(randomSelect, (1000 * update_interval))
