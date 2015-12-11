###
  碎片
  created by GaoBo
###

"use strict"

# 点
class Point
  constructor: (@x, @y) ->
    @randomOffset = 3

  randomPoint: ->
    @x += (Math.random() * 2 - 1) * @randomOffset
    @y += (Math.random() * 2 - 1) * @randomOffset

# 拼接
class Splicing

  @darkColor = ['#EB8B2C', '#1DC567', '#16A085', '#F39C12', '#8E44AD', '#EA6153',
    '#FF623F', '#84CEED', '#DD6E93', '#00FA9A', '#7B68EE', '#FFA076', '#FFB5C0', '#FF66B4',
    '#FADA5E', '#FFD800']
  @brightColor = ['#00008B', '#181372', '#2F4F4F', '#4C0084', '#2C3E50', '#9F1D35',
    '#123524', '#01796F']

  @template = """
    <polygon points='
    <%this.p1.x%>,<%this.p1.y%> 
    <%this.p2.x%>,<%this.p2.y%> 
    <%this.p3.x%>,<%this.p3.y%>
    ' fill="<%this.fill%>"></polygon>
  """

  constructor: (@svgId) ->
    @htmlStr = ""
    @width = 100
    @height = 100
    @step = 10
    @hPart = @width / @step
    @vPart = @height / @step
    @pointsArr = []
    @step += 1
    @horizontal = new Array @step
    @vertical = new Array @step
    @colorArr = randomColor(
      Splicing.darkColor[randomInt Splicing.darkColor.length],
      Splicing.brightColor[randomInt Splicing.brightColor.length]
    )

    # 初始化所有点
    for v, j in @vertical
      for h, i in @horizontal
        point = new Point(i * @hPart, j * @vPart)
        unless i is 0 or j is 0 or i is @step - 1 or j is @step - 1
          point.randomPoint()
        @pointsArr[i + j * @step] = point

    @horizontal.pop()
    @vertical.pop()

    # 初始化三角形
    for v, j in @vertical
      for h, i in @horizontal
        [x, y, z, a, b, c] = if (Math.random() > .5)
        then [0, 0, 1, 0, 1, 1]
        else [1, 1, 0, 0, 1, 0]

        p1 = @pointsArr[i + x + j * @step]
        p2 = @pointsArr[i + y + (j + 1) * @step]
        p3 = @pointsArr[i + z + (j + 1) * @step]
        @htmlStr += TemplateEngine Splicing.template, {p1: p1, p2: p2, p3: p3, fill: @colorArr[randomInt @colorArr.length]}
        p1 = @pointsArr[i + a + j * @step]
        p2 = @pointsArr[i + b + j * @step]
        p3 = @pointsArr[i + c + (j + 1) * @step]
        @htmlStr += TemplateEngine Splicing.template, {p1: p1, p2: p2, p3: p3, fill: @colorArr[randomInt @colorArr.length]}

    $("##{@svgId}")[0].innerHTML = @htmlStr if $("##{@svgId}").length > 0


# 随机颜色
randomColor = (dColor, bColor) ->
  result = []
  step = 32
  dRGB = Hex2RGB dColor
  bRGB = Hex2RGB bColor
  rOffset = (bRGB[0] - dRGB[0]) / step
  gOffset = (bRGB[1] - dRGB[1]) / step
  bOffset = (bRGB[2] - dRGB[2]) / step
  for i in [1...(step + 1)]
    result.push "rgb(#{Math.floor(dRGB[0] + rOffset * i)}, #{Math.floor(dRGB[1] + gOffset * i)}, #{Math.floor(dRGB[2] + bOffset * i)})"
  return result


Hex2RGB = (hex) ->
  hex = hex.replace "#", ""
  result = parseInt hex, 16
  r = (result >> 16) & 0xff
  g = (result >> 8) & 0xff
  b = result & 0xff
  [r, g, b]

randomInt = (max) ->
  Math.floor(Math.random() * max)



window.Splicing = Splicing