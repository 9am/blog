###
  created by GaoBo
  3.21.2014
###

"use strict"

###
  为class增加set get功能
###
Function::property = (prop, desc) ->
  Object.defineProperty @prototype, prop, desc

###
  requestAnimationFrame兼容
###
window.requestAnimFrame = do ->
  return  window.requestAnimationFrame       or
          window.webkitRequestAnimationFrame or
          window.mozRequestAnimationFrame    or
          window.oRequestAnimationFrame      or
          window.msRequestAnimationFrame     or
          (callback) ->
            window.setTimeout callback, Model.FRAME_RATE

###
  获取像素比，解决retina设备不清晰
###
window.ratio = ->
  devicePixelRatio = window.devicePixelRatio or 1
  canvas = document.createElement "canvas"
  context = canvas.getContext "2d"
  backingStoreRatio = context.webkitBackingStorePixelRatio  or
                      context.mozBackingStorePixelRatio     or
                      context.msBackingStorePixelRatio      or
                      context.oBackingStorePixelRatio       or
                      context.backingStorePixelRatio        or 1
  devicePixelRatio / backingStoreRatio

###
  圆角矩形，扩展canvas
###
CanvasRenderingContext2D::roundRect = (x, y, w, h, r) ->
  r = w >> 1 if (w < 2 * r)
  r = h >> 1 if (h < 2 * r)
  a = x + w;
  b = y + h;
  this.beginPath()
  this.moveTo x + r, y
  this.lineTo a - r, y
  this.arcTo  a, y, a, b, r
  this.lineTo a, b - r
  this.arcTo  a, b, x, b, r
  this.lineTo x + r, b
  this.arcTo  x, b, x, y, r
  this.lineTo x, y + r
  this.arcTo  x, y, a, y, r
  this.closePath()

###
  画图
###
class Graphics

  @PI2: Math.PI * 2

  constructor: ->

  # 画图形
  @drawShape: (ctx, d) ->
    dx = d.x
    dy = d.y
    s = d.size
    hs = d.hSize
    switch d.shape
      when "circle"
        ctx.fillStyle = d.fill
        ctx.beginPath()
        ctx.arc dx, dy, hs, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
      when "circle_in"
        ctx.fillStyle = d.fill
        ctx.beginPath()
        ctx.arc dx, dy, hs, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
        ctx.fillStyle = "#fafff0"
        ctx.beginPath()
        ctx.arc dx, dy, hs * 2 / 3, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
        ctx.fillStyle = d.fill
        ctx.beginPath()
        ctx.arc dx, dy, hs / 3, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
      when "rect"
        ctx.fillStyle = d.fill
        ctx.roundRect dx - hs, dy - hs, s, s, 5
        ctx.fill()
      when "flower_in"
        w = s * .5
        h = s * .3
        ctx.fillStyle = d.fill
        ctx.roundRect dx - w, dy - h, w * 2, h * 2, 15
        ctx.fill()

        ctx.fillStyle = d.fill
        ctx.roundRect dx - h, dy - w, h * 2, w * 2, 15
        ctx.fill()

        ctx.fillStyle = "#fafff0"
        ctx.beginPath()
        ctx.arc dx, dy, hs * .75, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
        ctx.fillStyle = d.fill
        ctx.beginPath()
        ctx.arc dx, dy, hs * .4, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
      when "flower_out"
        w = s * .5
        h = s * .3
        ctx.fillStyle = d.fill
        ctx.roundRect dx - w, dy - h, w * 2, h * 2, 15
        ctx.fill()
        ctx.fillStyle = d.fill
        ctx.roundRect dx - h, dy - w, h * 2, w * 2, 15
        ctx.fill()
        ctx.fillStyle = "#fafff0"
        ctx.beginPath()
        ctx.arc dx, dy, hs * .75, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()
      else
        ctx.fillStyle = d.fill
        ctx.beginPath()
        ctx.arc dx, dy, hs, 0, Graphics.PI2
        ctx.closePath()
        ctx.fill()

  # 画线
  @drawLine: (ctx, x1, y1, x2, y2) ->
    ctx.strokeStyle = "#aaa"
    ctx.lineWidth = 1.5
    ctx.beginPath()
    ctx.moveTo x1, y1
    ctx.lineTo x2, y2
    ctx.stroke()

###
  工具
###
class Tool

  constructor: ->

  @randomSize: (size) ->
    parseInt(size) + Math.random() * 6 - 3

  @randomColor: (color) ->
    color = color.replace "#", ""
    result = parseInt color, 16
    r = (result >> 16) & 0xff
    g = (result >> 8) & 0xff
    b = result & 0xff
    r += parseInt(Math.random() * 100 - 50)
    g += parseInt(Math.random() * 100 - 50)
    b += parseInt(Math.random() * 100 - 50)
    r = 255 if r > 255
    r = 0 if r < 0
    g = 255 if g > 255
    g = 0 if g < 0
    b = 255 if b > 255
    b = 0 if b < 0
    "rgb(#{r}, #{g}, #{b})"

  #鼠标位置适配
  @fillOffset: (e) ->
    p = {}
    if Model.EQUIP is "mobile"
      t = if e.originalEvent.type is "touchend" then e.originalEvent.changedTouches[0] else e.originalEvent.targetTouches[0]
      p.x = if t.clientX? then t.clientX else t.pageX
      p.y = if t.clientY? then t.clientY else t.pageY
    else
      p.x = if e.offsetX? then e.offsetX else e.originalEvent.layerX
      p.y = if e.offsetY? then e.offsetY else e.originalEvent.layerY
    return p

###
  向量
###
class Vector2D

  constructor: (@x = 0, @y = 0) ->

  # 向量长度
  @property "length",
    set: (val) ->
      a = Math.atan2 @y, @x
      @x = Math.cos(a) * val
      @y = Math.sin(a) * val
    get: () ->
      Math.sqrt @x * @x + @y * @y

  # 向量和
  add: (v2) ->
    new Vector2D @x + v2.x, @y + v2.y

  # 截断向量
  truncate: (max) ->
    @length = max if @length > max

  # 判断相等
  equals: (v2) ->
    (@x is v2.x and @y is v2.y)

###
  视图
###
class View

  constructor: (@viewId) ->
    # 视图的canvas节点
    @dom = $(@viewId)
    # canvas context
    @ctx = @dom[0].getContext "2d"

    # 视图宽高
    @width = @dom.width()
    @height = @dom.height()
    @dom.attr
      "width": @width * Model.RATIO
      "height": @height * Model.RATIO
    @dom.css
      "width": @width
      "height": @height

    @ctx.setTransform Model.RATIO, 0, 0, Model.RATIO, 0, 0

    # 被拖拽的节点
    @dragDot = null

    # 记录鼠标按下和抬起的位置，用来区分点击或拖拽
    @downP = new Vector2D
    @upP = new Vector2D

    @initListener()

  initListener: ->
    # 鼠标按下
    @dom.bind Model.EVENT_MAP[Model.EQUIP]["start"], (e) =>
      p = Tool.fillOffset e
      p.x *= Model.RATIO
      p.y *= Model.RATIO
      targetIndex = @getMouseTarget p
      if targetIndex?
        # 找到被按下节点，设置拖动标志
        d = Model.ALL_DOTS[targetIndex]
        d.drag = true
        @dragDot = d
        # 记录按下位置
        @downP.x = p.x
        @downP.y = p.y

    # 鼠标移动
    @dom.bind Model.EVENT_MAP[Model.EQUIP]["move"], (e) =>
      # 如果有节点被按下，则拖动
      if @dragDot?
        p = Tool.fillOffset e
        @dragDot.setPosition p.x, p.y

    # 鼠标抬起
    @dom.bind Model.EVENT_MAP[Model.EQUIP]["end"], (e) =>
      # 记录抬起位置
      p = Tool.fillOffset e
      p.x *= Model.RATIO
      p.y *= Model.RATIO
      @upP.x = p.x
      @upP.y = p.y
      # 点击
      if @downP.equals(@upP)
        @dragDot.toggleZoom()
      # 停止拖拽
      @stopDrag()

    # 鼠标超出边界
    @dom.bind Model.EVENT_MAP[Model.EQUIP]["leave"], (e) =>
      @stopDrag()

  # 重绘并记录触发节点
  getMouseTarget: (p) ->
    index
    for d, i in Model.ALL_DOTS
      @ctx.beginPath()
      @ctx.rect d.x - d.hSize, d.y - d.hSize, d.size, d.size
      @ctx.closePath()
      if @ctx.isPointInPath(p.x, p.y)
        index = i
        break
    return index

  # 停止拖拽，清除拖动标志
  stopDrag: ->
    @dragDot.drag = false if @dragDot?
    @dragDot = null

  # 更新视图
  update: =>
    @ctx.clearRect 0, 0, @width, @height
    for d in Model.ALL_DOTS
      d.update()
      # 线
      if d.zoom
        for c in d.children
          if  c.visible
            Graphics.drawLine @ctx, d.x, d.y, c.x, c.y
      # 点
      if d.visible
        Graphics.drawShape @ctx, d

    # 递归
    requestAnimFrame @update

###
  节点
###
class Dot

  constructor: (@config) ->
    @id = @config.id
    @label = @config.label
    @shape = @config.shape
    @size = @config.size
    @hSize = @size >> 1
    @fill = @config.fill
    @dom = null
    @dot = null
    @text = null
    @father = null
    @children = null
    @x = .0
    @y = .0
    @drag = false
    @visible = false
    @zoom = false

  # 设定位置
  setPosition: (x, y) ->
    @x = x
    @y = y

  # 展开/收起
  toggleZoom: ->
    return unless @children?
    @zoom = !@zoom
    if not @zoom
      # 收起
      for child in @children
        child.visible = false
        # 递归
        child.toggleZoom() if child.zoom
      #zoomIn shape
      @shape = "flower_in"
    else
      # 展开
      fDot = if @father? then @father[0] else this
      for child in @children
        allFatherZoom = true
        if child.father? and child.father.length > 1
          for f in child.father
            allFatherZoom = allFatherZoom and f.zoom
        if allFatherZoom
          child.setPosition fDot.x + Math.random() * 2 - 1, fDot.y + Math.random() * 2 - 1
          child.visible = true
      #zoomOut shape
      @shape = "flower_out"

  # 更新位置
  update: ->
    # 如果被拖拽或不可见，则不更新
    return if @drag or not @visible

    force = new Vector2D

    # 父节点引力
    if @father?
      for f in @father
        continue unless f.visible
        dis2 = Math.pow(f.x - @x, 2) + Math.pow(f.y - @y, 2)
        gf = new Vector2D f.x - @x, f.y - @y
        gf.length = dis2 * .0001 * Model.SPEED
        force = force.add gf

    # 子节点引力
    if @children?
      for c in @children
        continue unless c.visible
        dis2 = Math.pow(c.x - @x, 2) + Math.pow(c.y - @y, 2)
        gfc = new Vector2D c.x - @x, c.y - @y
        gfc.length = dis2 * .0001 * Model.SPEED
        force = force.add gfc

    # 一定距离内其他节点斥力
    for d in Model.ALL_DOTS
      continue unless d.visible
      if d.id isnt @id
        dis2 = Math.pow(d.x - @x, 2) + Math.pow(d.y - @y, 2)
        dis = Math.sqrt(dis2)
        if dis < Model.REPU_RANGE
          af = new Vector2D @x - d.x, @y - d.y
          af.length = (.4 - dis2 * .00001) * Model.SPEED
          force = force.add af

    # 截断向量，防止过大
    force.truncate 20

    # 如果力过小，则不更新
    if force.length > .1
      force.x *= Model.FRICTION
      force.y *= Model.FRICTION
      @setPosition @x += force.x, @y += force.y

###
  数据
###
class Model
  # 设备像素比
  @RATIO: 1
  # 存储所有节点
  @ALL_DOTS: []
  # 存储所有父节点
  @F_DOTS: []
  # 节点移动速度
  @SPEED: 5.0
  # 节点移动阻力
  @FRICTION: .8
  # 斥力作用范围
  @REPU_RANGE: 200
  # 帧频
  @FRAME_RATE: 1000 / 60
  # 移动设备正则
  @MOBILE_REG = /mobile|tablet|ip(ad|hone|od)|android|silk/i
  # 设备 pc/mobile
  @EQUIP: ""
  # 事件
  @EVENT_MAP:
    "pc":
      "start": "mousedown"
      "move": "mousemove"
      "end": "mouseup"
      "leave": "mouseleave"
    "mobile":
      "start": "touchstart"
      "move": "touchmove"
      "end": "touchend"
      "leave": "touchleave"

  constructor: (@gData) ->

###
  控制
###
class Controller

  constructor: (@model, @view) ->

    # 初始化节点
    for vg, i in @model.gData.v_g
      vg.size = if Model.EQUIP is "pc" then vg.size else parseInt(vg.size) + 10
      d = new Dot
        "id": "dot" + i.toString()
        "shape": vg.shape
        "label": vg.label
        "size": Tool.randomSize vg.size
        "fill": Tool.randomColor vg.color
      d.setPosition @view.width >> 1, @view.height >> 1
      Model.ALL_DOTS.push d

    # 初始关系
    for eg, i in @model.gData.e_g
      fDot = Model.ALL_DOTS[eg[0]]
      cDot = Model.ALL_DOTS[eg[1]]
      Model.F_DOTS.push fDot
      unless fDot.children?
        fDot.children = []
        fDot.shape = "flower_in"
      fDot.children.push cDot
      cDot.father = [] unless cDot.father?
      cDot.father.push fDot

    # 祖先
    Model.ALL_DOTS[0].shape = "flower_in"
    Model.ALL_DOTS[0].visible = true
    Model.ALL_DOTS[0].setPosition @view.width >> 1, @view.height >> 1

    # 开启动画
    # setInterval @view.update, Model.FRAME_RATE
    @view.update()



# 初始化
# gdata 图数据
# viewId canvas节点id
init = (@gData, @viewId) ->
  # 判断设备
  isMobile = window.navigator.userAgent.match(Model.MOBILE_REG)
  Model.EQUIP = if isMobile then "mobile" else "pc"

  # 获取像素比
  Model.RATIO = window.ratio()

  # 启动
  controller = new Controller new Model(@gData), new View(@viewId)

window.GRAPH = 
  "init": init