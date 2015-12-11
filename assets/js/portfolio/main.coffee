###
  site
  created by GaoBo
###


# 顶部和底部碎片
header = new Splicing "headerSvg"
footer = new Splicing "footerSvg"

# 作品数据
portfolioData = [
  {
    title: "小车3D"
    date: "2010.05"
    desc: "初试away3d，利用官方例子中的模型，做了这个由键盘控制，可以前进/后退/转向的小车。"
    tag: [
      "flash"
      "as3"
      "away3d"
    ]
    link: "portfolio/car3d/"
    img: "asset/images/car3d.png"
    path: "1.0,63.0 298.0,62.0 0.0,69.0 299.0,60.0 3.5,59.5 298.0,69.0 4.0,69.0 295.0,58.0 
        147.0,63.0 1.0,144.0 148.0,65.0 299.0,155.0 153.0,65.0 146.0,71.0 137.0,117.0 144.0,116.0 151.0,69.0 148.0,70.0 
        137.0,118.0 146.0,116.0 150.0,67.0 131.0,165.0 128.0,166.0 112.0,254.0 131.0,255.0 140.0,164.0 132.0,165.0 
        113.0,253.0 129.0,255.0 140.0,164.0 129.0,164.0 114.0,254.0 131.0,258.0 139.0,163.0 127.0,164.0 114.0,254.0 
        131.0,256.0 141.0,164.0 129.0,165.0 112.0,258.0 129.0,258.0"
  }
  {
    title: "彩带"
    date: "2010.10"
    desc: "研究小球运动的过程中，想到利用小球可以画弧线，于是有了最早的AS3版本；
    这是后来的canvas实现：移动鼠标，绘制彩带。"
    tag: [
      "javascript"
      "canvas"
    ]
    link: "portfolio/ribbon/"
    img: "asset/images/ribbon.png"
    path: "244.75,39.5 167.0,63.0 129.75,110.25 137.0,149.0 100.0,185.0 100.0,211.0 32.0,242.0 
        129.0,245.33333 135.0,204.0 166.25,188.0 203.0,165.0 198.25,144.25 249.0,135.0 265.0,98.0 248.25,41.0 
        169.33333,64.33333 265.0,97.0 244.25,42.0 264.0,95.0 168.0,67.0 246.0,43.0 262.0,93.0 249.0,133.0 133.5,108.5 
        168.0,68.5 169.5,67.0 168.0,68.0 262.75,97.25 247.0,134.0 200.5,145.5 137.25,129.25 132.5,110.25 139.25,129.25 
        200.25,147.0 242.0,133.25 133.5,109.75 141.25,130.0 140.75,131.0 199.5,148.25 203.0,163.0 139.0,148.0 
        107.0,187.0 134.75,201.5 104.0,185.0 137.0,149.0 199.75,165.75 137.0,202.0 131.5,223.0 100.0,212.0 104.0,186.0 
        105.0,211.0 132.33334,222.33333 131.33334,247.66667 32.5,244.75 101.0,211.0 27.75,245.25 107.25,207.75 
        107.5,189.5 137.0,200.0 204.0,167.25 137.75,147.5 136.25,130.25 135.5,106.25 166.5,66.0 243.0,46.0"
  }
  {
    title: "方块3D"
    date: "2011.05"
    desc: "和女友相识两周年，做了这个切换效果，纪念一下。"
    tag: [
      "flash"
      "as3"
      "away3d"
    ]
    link: "portfolio/cube/"
    img: "asset/images/cube.png"
    path: "73.0,81.0 112.4,80.8 105.0,112.0 106.4,208.0 34.0,208.66667 34.0,114.0 105.0,112.5 
        111.25,82.0 72.75,83.0 36.0,113.0 34.0,210.0 105.8,208.0 105.0,111.0 114.0,81.0 73.5,81.75 114.0,81.75 
        104.0,111.75 101.875,112.375 103.2,112.2 112.6,81.8 114.2,81.6 115.25,105.5 124.0,83.0 181.0,81.0 
        189.16667,113.666664 112.5,115.333336 123.0,82.0 180.0,82.25 190.0,113.333336 191.25,209.25 115.25,208.0 
        114.166664,114.5 190.16667,112.166664 191.5,207.5 116.25,208.25 113.333336,113.666664 189.83333,113.166664 
        187.33333,100.666664 187.33333,81.333336 215.0,81.0 267.33334,110.0 197.0,110.0 188.0,82.666664 
        215.33333,81.666664 268.0,109.333336 269.0,208.0 202.5,209.5 198.0,111.0 267.33334,109.666664 268.5,207.5 
        204.0,208.25 199.5,112.0 268.4,111.4 271.0,208.66667 203.0,209.33333 191.25,166.25 191.25,207.25 116.0,209.0 
        115.0,166.0 105.8,208.4 35.666668,208.66667 35.0,114.333336 105.0,114.0 34.0,114.333336 70.0,84.0"
  }
  {
    title: "可翻页的书"
    date: "2011.07"
    desc: "偶尔看到一个翻页效果，最终用AS3实现了，在页脚点击或拖拽触发翻页，内容可通过JS和AS通讯配置。"
    tag: [
      "flash"
      "as3"
    ]
    link: "portfolio/flippingbook/"
    img: "asset/images/flippingbook.png"
    path: "113.99865,176.81903 70.41532,63.985687 110.415306,176.98569 257.582,139.81902 191.41531,45.985683 
        72.41532,63.985687 65.99866,66.569016 59.598656,75.169014 56.598656,85.96902 57.66532,95.40235 59.16532,98.40235 
        96.66531,232.2357 261.41534,179.98569 256.89896,173.52007 253.7128,166.748 252.60477,157.90259 
        253.56503,150.32639 254.3837,146.9788 256.7487,140.15236 113.415306,174.98569 109.415306,176.98569 
        99.62865,186.27948 97.34788,191.3532 95.209435,204.59914 95.16193,222.75426 97.1074,230.04532 
        255.49866,179.19403 101.24865,225.06903 252.37366,175.31903 100.49865,222.31903 254.12366,177.19403 
        99.74865,219.81903 251.37366,173.19403 100.24865,216.81903 250.37366,171.19403 99.49865,213.31903 
        249.74866,168.94403 98.99865,209.31903 248.99866,167.06903 99.49865,206.31903 248.24866,164.94403 
        99.24865,203.15236 248.12366,162.31903 99.915306,200.81902 247.99866,159.81903 101.08199,196.98569 
        247.87366,157.06903 102.08199,194.48569 248.12366,154.81903 102.915306,191.15236 248.49866,151.94403 
        104.24865,188.31902 249.12366,149.44403 106.58196,184.98569 249.87366,146.94403 108.915306,181.48569 
        250.62366,144.06903 113.415306,176.98569 110.415306,175.48569 103.85447,181.05634 100.520905,186.18237 
        95.70925,196.60606 95.168205,201.64607 94.784134,209.84447 95.03823,213.89511 97.49865,231.06903 
        261.91534,180.31902 258.8106,176.59123 254.96988,170.09796 252.78421,162.2208 252.841,154.16179 
        255.74988,143.32256 257.91534,139.81902 255.582,139.98569"
  }
  {
    title: "抽走效果"
    date: "2011.11"
    desc: "利用Graphics.drawTriangles绘制图片，实现图片被抽走的效果。"
    tag: [
      "flash"
      "as3"
    ]
    link: "portfolio/triangle/"
    img: "asset/images/triangle.png"
    path: "51.666668,38.0 55.0,89.5 99.25,88.25 100.5,41.0 52.0,37.5 99.5,87.75 100.5,41.25 
        100.0,88.0 146.25,88.25 151.5,36.5 100.25,41.25 145.75,88.75 151.5,37.0 204.5,40.0 194.5,89.0 145.5,88.0 
        151.5,37.0 194.75,88.75 205.0,39.5 194.5,88.5 248.5,92.5 242.0,35.5 204.66667,40.0 248.25,92.75 238.5,147.25 
        190.25,149.75 194.75,89.0 248.5,92.25 238.5,147.0 195.25,89.0 190.5,149.5 139.5,152.5 146.0,88.25 194.75,88.75 
        190.5,149.5 145.5,88.0 139.5,152.5 97.25,140.75 99.75,88.0 146.0,88.25 139.25,152.75 99.5,88.0 97.5,141.25 
        52.0,147.75 55.0,89.25 99.75,88.25 97.5,140.75 55.25,89.5 52.0,147.75 52.0,210.5 97.0,211.0 97.5,141.25 
        52.0,147.75 96.75,210.75 97.5,141.0 96.75,211.0 150.0,202.5 139.25,152.0 97.5,141.0 150.5,203.0 139.25,152.75 
        150.25,202.0 205.5,201.5 190.5,149.5 139.5,152.5 205.0,201.25 190.5,149.5 205.0,201.25 250.75,197.0 238.5,147.25 
        190.5,149.25 250.75,197.0 252.66667,267.0 202.66667,259.0 205.25,201.0 251.0,197.25 252.33333,267.0 205.25,201.0 
        202.33333,259.33334 149.0,268.33334 150.5,202.25 205.25,201.0 202.66667,259.33334 150.25,202.0 149.0,268.0 
        99.0,262.66666 96.75,210.75 150.75,202.25 149.0,268.0 96.75,210.75 99.0,262.66666 54.5,256.5 52.25,210.5 
        96.75,211.25 99.0,262.5 52.5,210.5"
  }
  {
    title: "飘动的旗子"
    date: "2011.11"
    desc: "利用Graphics.drawTriangles绘制图片，实现飘动的旗子。"
    tag: [
      "flash"
      "as3"
    ]
    link: "portfolio/flag/"
    img: "asset/images/flag.png"
    path: "6.0,133.0 130.5,132.5 131.5,53.0 
        168.0,53.0 169.0,131.5 293.5,132.0 294.0,164.0 168.0,165.0 168.5,254.0 129.5,253.5 129.5,165.0 5.0,164.0 
        5.0,174.5 73.5,174.5 4.0,226.5 4.5,254.5 106.5,174.5 118.5,174.5 118.5,182.5 26.5,254.0 37.5,255.0 119.0,192.0 
        118.5,254.0 179.5,253.5 178.5,191.0 269.5,254.5 294.5,253.5 294.5,242.0 199.0,177.0 221.5,177.5 294.5,227.5 
        295.0,218.0 235.5,176.5 294.5,177.5 293.0,120.0 230.0,120.5 293.5,79.0 293.0,54.5 195.5,120.0 180.0,120.5 
        180.0,115.0 272.0,53.0 257.5,53.5 180.0,104.5 179.5,53.5 118.0,52.5 118.5,104.5 39.5,53.0 9.0,52.5 108.0,121.0 
        83.0,121.0 7.0,67.5 7.0,76.5 71.0,121.0 6.0,120.5 5.0,164.0"
  }
  {
    title: "节点和关系"
    date: "2012.03"
    desc: "受一个演讲的启发，希望将关系可视化，制作了这个效果的<a href='portfolio/graph/'>AS3版本</a>，
    节点和关系可配置。2014.03完成了<a href='portfolio/graph_canvas/'>canvas版本</a>和<a href='portfolio/graph_svg/'>svg版本</a>，同时支持移动设备。"
    tag: [
      "canvas"
      "svg"
      "javascript"
      "flash"
      "as3"
    ]
    link: "portfolio/graph_canvas/"
    img: "asset/images/graph.png"
    path: "128.0,124.0 128.0,158.0 166.0,159.0 165.83333,122.0 133.44444,122.888885 148.0,123.0 
        162.88889,55.666668 151.0,55.0 151.0,41.0 175.0,39.0 173.0,56.0 162.22223,56.22222 149.0,123.0 166.0,122.0 
        166.0,137.0 226.88889,136.44444 226.77777,130.33333 240.0,129.0 241.0,150.0 226.11111,150.88889 
        227.33333,136.88889 167.0,138.0 166.0,158.0 155.0,159.0 184.88889,223.44444 177.16667,224.16667 180.0,244.0 
        199.0,243.0 199.0,226.0 188.0,228.0 154.0,160.0 129.0,157.0 88.0,215.0 75.833336,215.5 75.666664,230.5 
        102.833336,230.0 102.0,216.0 88.0,216.0 127.0,157.0 130.0,131.0 74.0,92.0 74.111115,75.77778 61.0,76.0 
        61.0,101.0 74.0,101.0 74.0,92.0 128.33334,129.88889 134.44444,123.666664 130.0,137.0 140.55556,123.77778 
        129.5,141.0 148.0,122.0 128.5,147.0 152.0,123.0 128.5,151.0 158.0,123.0 129.0,154.0 163.5,124.0 129.5,158.0 
        166.5,126.5 136.5,157.0 164.0,136.0 142.5,158.0 165.5,139.5 150.5,157.5 164.5,145.0 156.0,159.0 166.0,150.5 
        164.5,157.0 167.5,137.0 227.33333,137.0 234.5,130.0 228.5,139.5 238.0,129.5 227.0,143.0 240.0,131.5 227.5,145.5 
        240.0,138.0 229.5,148.0 238.0,141.5 232.5,151.0 240.44444,143.0 239.0,150.0 226.5,149.5 227.33333,136.44444 
        166.0,138.5 165.0,158.5 154.5,159.5 187.0,225.66667 185.0,230.16667 178.0,234.5 181.88889,224.66667 
        190.33333,224.66667 179.0,240.5 185.16667,226.83333 182.0,242.5 192.0,229.5 180.5,245.0 195.0,223.5 186.0,244.0 
        198.0,226.5 191.0,243.0 200.0,228.0 193.5,243.0 198.5,237.5 198.5,242.5 200.5,223.16667 186.33333,223.66667 
        155.0,159.5 128.0,157.0 88.5,215.5 78.5,217.0 77.0,223.0 85.5,216.0 77.5,230.5 89.5,216.0 81.0,230.5 94.0,216.5 
        87.0,230.0 96.0,217.5 90.5,228.5 101.0,217.5 93.0,229.0 102.5,223.0 101.0,228.5 102.333336,215.0 89.0,215.0 
        128.0,154.5 128.5,129.5 73.0,91.5 72.0,100.5 73.0,92.0 70.5,99.0 73.5,89.5 64.5,101.5 74.5,87.5 62.5,100.0 
        73.0,85.5 62.0,95.0 74.0,81.5 61.5,89.5 72.5,77.0 62.0,92.0 68.5,76.5 63.0,83.5 65.5,75.5 62.5,80.5 67.5,75.5 
        73.5,77.0 74.55556,91.55556 128.33334,129.66667 148.33333,122.0 162.66667,56.333332 172.5,55.5 
        173.33333,48.77778 166.0,56.0 173.5,44.0 163.77777,55.0 174.0,41.0 158.5,55.5 172.0,39.0 158.0,55.5 165.5,41.0 
        154.5,55.0 169.5,39.5 152.0,51.5 161.0,40.5 151.0,50.0 157.0,40.0 151.0,45.5 155.5,40.5 151.0,55.0 
        161.88889,57.0 149.0,121.0 167.66667,121.333336 166.5,159.0 126.0,158.5 128.33334,122.833336 166.66667,121.5"
  }
  {
    title: "磁力字母"
    date: "2012.04"
    desc: "利用“节点和关系”中的物理基础，用AS3实现的鼠标排斥字母效果，本站的“<a href='about.html'>About</a>”是此例的canvas版本。"
    tag: [
      "canvas"
      "javascript"
      "flash"
      "as3"
    ]
    link: "portfolio/char/"
    img: "asset/images/char.png"
    path: "54.0,32.0 53.0,270.0 103.75,255.75 103.0,124.5 155.0,243.0 121.5,221.0 104.25,181.25 
        103.0,125.0 154.5,243.25 198.75,230.25 244.5,116.0 241.5,219.75 209.0,207.0 245.0,116.5 242.0,219.25 275.0,209.5 
        278.0,54.5 232.0,49.25 178.5,166.5 158.5,117.5 189.5,55.5 232.5,49.25 178.5,167.0 127.0,39.5 53.0,32.0 23.5,48.5 
        25.5,230.5 52.5,271.0 53.0,270.0 103.75,255.75 103.0,124.5 103.25,129.0 153.0,241.75 103.25,133.75 150.75,240.25 103.5,138.5 147.75,238.5 
        104.0,143.5 144.75,236.5 104.0,149.25 141.75,234.5 104.0,154.0 138.75,232.5 104.0,160.5 136.0,230.25 104.5,166.5 
        133.5,229.25 105.0,172.0 129.5,226.75 105.5,176.75 126.5,224.5 105.5,179.25 124.25,222.75 104.25,181.5 
        121.0,221.75 155.25,243.5 198.75,231.0 245.0,117.0 241.5,220.25 243.0,122.5 240.5,219.75 241.5,126.75 
        238.25,219.0 239.0,131.0 236.25,218.25 236.5,137.0 235.0,217.5 234.5,144.0 232.75,216.5 232.25,147.0 
        230.75,215.75 230.0,153.75 229.0,215.25 228.25,159.75 227.25,214.25 225.5,164.0 225.5,214.0 223.25,169.75 
        224.0,213.25 222.5,175.25 222.5,212.5 220.0,179.25 220.75,211.75 217.75,185.0 218.75,211.0 216.0,190.0 
        217.0,209.75 213.75,194.25 215.75,209.25 212.5,199.0 213.25,208.75 210.5,202.5 211.0,207.5 208.25,207.0"
  }
  {
    title: "魔方3D"
    date: "2012.09"
    desc: "可以拖拽旋转的魔方。"
    tag: [
      "flash"
      "as3"
      "away3d"
    ]
    link: "portfolio/rubik3d/"
    img: "asset/images/rubik3d.png"
    path: "133.0,31.0 29.0,56.0 48.0,206.0 163.0,273.0 253.0,192.0 264.0,52.0 165.0,88.0 
        30.0,57.0 142.5,28.5 262.0,49.0 166.0,87.0 165.0,271.0 203.0,237.0 205.5,73.5 237.5,61.5 231.0,209.0 251.0,191.0 
        256.0,146.0 166.0,202.0 166.0,146.0 260.5,100.0 264.0,50.0 237.5,60.5 107.0,38.0 78.0,46.5 205.0,74.0 167.0,87.0 
        119.0,76.0 219.0,42.0 180.0,34.0 76.5,68.0 32.0,57.0 37.0,103.0 165.0,146.0 165.0,201.0 40.0,150.0 47.0,206.0 
        86.0,227.5 74.5,69.5 119.5,78.5 126.5,252.0 165.0,269.0 164.0,87.5"
  }
  {
    title: "标签对应"
    date: "2013.02"
    desc: ""
    tag: [
      "javascript"
    ]
    link: "portfolio/tag/"
    img: "asset/images/tag.png"
    path: "31.0,16.0 34.5,34.5 41.0,52.5 51.0,70.0 62.25,85.75 78.0,104.25 95.5,119.5 
        110.666664,131.0 125.33334,140.66667 136.66667,140.44444 138.88889,142.88889 137.55556,153.11111 
        129.55556,151.44444 126.33334,150.11111 122.888885,144.44444 127.22223,141.44444 128.88889,141.22223 
        136.66667,140.77777 140.33333,145.33333 138.77777,150.33333 134.0,154.33333 127.888885,153.44444 123.0,146.0 
        125.22223,141.77777 128.0,139.66667 132.22223,139.33333 133.44444,139.88889 139.44444,145.11111 
        135.33333,151.55556 130.0,152.88889 126.0,150.88889 123.55556,143.77777 130.66667,140.11111 134.77777,140.22223 
        139.55556,143.22223 135.55556,154.11111 134.66667,153.33333 132.11111,153.33333 125.55556,151.33333 
        124.0,142.66667 131.77777,144.66667 117.666664,136.11111 105.33333,127.0 104.875,124.875 109.33333,104.333336 
        178.0,119.0 158.66667,265.66666 76.0,259.0 109.33333,102.333336 176.0,116.33333 161.33334,267.0 78.0,257.0 
        106.0,105.666664 178.66667,114.33333 162.66667,265.66666 80.0,262.33334 107.33333,101.666664 182.0,112.33333 
        166.66667,264.33334 85.33333,263.0 110.0,100.333336 181.33334,113.0 165.33334,271.0 80.0,260.33334 
        111.33333,103.0 178.0,112.33333 167.33334,272.33334 78.0,261.66666 111.33333,103.0 180.0,116.33333 
        163.33334,269.0 76.666664,263.0 108.0,99.666664 182.0,111.0 162.0,268.33334 78.666664,260.33334 
        108.666664,102.333336 181.33334,114.33333 178.0,139.66667 187.0,137.0 200.75,132.0 216.0,124.166664 
        230.16667,114.5 245.16667,100.833336 256.0,85.333336 264.0,71.333336 271.33334,54.0 276.25,41.5 281.5,26.5 
        284.4,14.4"
  }
  {
    title: "群落行为3D"
    date: "2013.07"
    desc: "《AdvancED ActionScript 3.0 Animation》中群落行为的3d实现。"
    tag: [
      "flash"
      "as3"
      "away3d"
    ]
    link: "portfolio/flock3d/"
    img: "asset/images/flock3d.png"
    path: "152.75,127.75 99.0,172.5 157.0,174.0 209.0,166.0 155.5,124.5 198.5,147.5 192.5,154.0 
        281.5,45.5 217.0,172.0 210.0,166.5 224.5,177.5 166.0,248.5 83.0,178.0 99.0,173.5 94.5,174.5 60.0,94.0 16.0,111.0 
        58.5,85.0 74.5,84.0 117.5,156.0 113.0,146.5 152.75,125.5 112.5,145.5 74.0,85.5 55.5,77.5 19.0,109.0 56.5,87.0 
        95.5,173.0 82.5,179.0 167.0,249.0 159.0,174.0 208.5,167.0 155.5,124.5 142.0,19.0 94.0,113.0 142.0,17.5 
        207.0,118.0 210.5,132.5 198.0,146.5 155.0,125.75"
  }
  {
    title: "像素画"
    date: "2013.08"
    desc: "利用色彩空间，将小图片作为像素，组成一张大图片。"
    tag: [
      "flash"
      "as3"
    ]
    link: "portfolio/pixelpic/"
    img: "asset/images/pixelpic.png"
    path: "33.0,30.0 268.0,29.0 268.0,263.0 35.0,265.0 33.5,30.5 56.5,29.5 58.0,264.5 82.0,265.0 
        79.0,30.0 99.5,29.5 108.0,264.0 133.0,264.5 127.0,30.0 154.5,29.0 163.0,264.0 188.0,264.0 182.0,29.5 212.5,28.5 
        216.5,263.0 243.5,263.5 243.0,30.0 268.5,29.0 267.5,52.5 33.5,53.0 34.5,78.0 268.0,73.5 268.0,98.0 34.5,103.0 
        35.0,128.0 268.0,124.0 268.0,148.0 35.0,156.0 35.0,180.0 268.0,173.0 268.0,200.5 34.0,210.0 34.0,234.0 
        268.0,232.5 134.0,233.0 133.0,227.0 137.0,232.0 140.0,233.0 133.5,221.0 143.5,232.0 133.5,217.0 146.5,232.0 
        132.5,214.5 149.0,232.0 131.5,210.5 151.5,233.0 134.0,210.0 156.0,232.0 132.0,206.5 160.0,233.0 134.5,205.5 
        160.5,227.0 143.0,205.5 160.5,221.0 145.5,205.0 160.5,217.5 153.0,206.5 161.0,211.5 155.0,205.0 159.5,206.0 
        132.5,204.0 132.5,197.5 135.5,202.5 132.5,191.0 140.0,202.0 132.5,186.0 144.5,204.0 131.0,181.5 148.0,203.0 
        131.0,179.0 152.0,202.5 133.0,177.0 156.5,201.5 138.5,178.5 159.0,203.0 143.5,177.5 159.5,197.0 146.5,177.0 
        161.5,191.5 151.5,176.5 161.0,183.5 160.0,178.0 131.5,176.0 131.5,170.5 135.5,175.5 131.0,164.5 139.0,175.5 
        130.5,162.0 143.5,176.0 131.0,159.0 146.0,176.0 131.5,156.0 149.5,175.0 130.5,152.5 154.0,176.0 137.0,153.0 
        156.0,175.5 144.0,153.5 158.0,173.5 146.5,153.0 158.5,168.0 152.0,152.5 159.0,161.0 156.0,153.5 159.0,153.0 
        131.0,152.0 130.5,146.0 135.5,151.5 131.5,142.5 140.5,152.5 130.5,138.0 144.0,152.0 131.5,135.0 146.5,151.0 
        130.0,130.5 150.0,151.0 131.5,128.0 152.5,150.0 135.0,127.0 156.0,150.0 140.0,126.0 157.0,146.5 145.5,126.0 
        157.5,142.0 150.0,126.0 158.0,135.5 155.5,125.0 158.0,125.0 158.5,118.0 161.0,124.5 158.5,114.0 166.0,125.0 
        159.0,111.0 171.5,125.0 158.0,105.5 174.0,125.0 159.5,102.0 177.5,125.5 161.5,100.5 180.0,125.0 167.0,99.0 
        181.5,124.0 171.0,98.5 183.5,118.0 176.0,100.5 183.5,109.0 179.5,100.0 183.5,100.0 183.0,91.0 187.0,98.5 
        183.0,84.0 190.5,100.0 184.0,83.0 193.5,100.5 184.0,78.5 197.5,98.5 183.5,74.5 200.5,98.5 189.0,75.0 204.5,99.0 
        194.5,75.5 206.5,99.5 197.5,75.5 210.0,99.5 200.5,76.5 213.0,97.5 202.5,75.5 213.5,89.0 207.5,75.5 212.5,79.5 
        212.5,73.5 182.5,74.5 182.0,65.5 187.0,74.0 183.0,63.0 190.5,73.5 182.5,58.5 194.5,74.0 183.0,56.0 197.0,73.0 
        183.0,53.5 200.5,73.5 186.5,52.0 203.5,73.0 193.5,53.0 207.0,73.0 197.0,53.5 210.0,73.5 200.0,53.0 212.5,70.0 
        204.5,53.5 212.0,63.0 210.0,53.0 174.0,53.0 181.0,57.5 171.0,53.0 181.0,63.0 170.0,53.5 180.5,67.0 167.5,53.5 
        181.0,71.5 166.0,53.0 179.5,72.0 162.5,54.5 181.0,74.0 159.5,54.0 177.0,74.0 157.5,58.5 173.0,75.5 158.0,62.5 
        169.0,76.0 157.5,68.0 164.0,74.5 157.0,70.5 156.5,52.0 148.0,52.0 155.5,58.0 145.0,53.5 155.5,63.5 142.0,52.5 
        155.5,68.0 141.0,52.5 155.0,70.5 136.5,53.5 155.0,74.5 133.0,54.0 151.5,75.5 129.0,54.0 147.0,75.5 130.5,63.0 
        141.5,76.0 128.5,65.5 135.5,76.5 129.5,72.5 128.0,52.5 121.0,52.0 128.0,56.5 117.0,53.5 127.5,61.5 114.5,53.0 
        127.0,64.5 109.5,54.5 128.0,69.0 106.5,52.5 127.0,70.0 104.0,54.0 127.5,74.0 100.5,54.0 127.5,75.0 102.5,61.0 
        123.5,77.0 101.5,64.5 118.0,77.0 100.0,67.0 111.5,76.5 101.0,72.5 100.5,77.0 100.5,52.0 90.0,54.0 99.0,55.5 
        90.0,54.5 100.5,59.5 85.5,53.0 100.0,63.0 82.0,53.5 99.5,67.0 79.5,54.0 100.0,71.5 79.0,59.0 99.5,75.0 79.0,63.5 
        95.5,75.5 80.0,69.5 88.0,76.0 78.5,70.0 81.5,76.0 79.0,76.5"
  }
]

# 作品模板
portfolioTemplate = """
  <div class='item'>
    <a class='sketch' href='<%this.link%>'>
      <%if (this.svgSupport) {%>
        <svg width='300px' height='300px' xmlns='http://www.w3.org/2000/svg'>
          <path class="path" d='<%this.path%>' stroke-width="1" stroke="#333" fill="none"/>
        </svg>
      <%} else {%>
        <img src='<%this.img%>' alt='<%this.title%>' width='300px' height='300px'>
      <%}%>
    </a>
    <h2 class='title'>
      <a href='<%this.link%>'><%this.title%></a>
      <span class='date'><%this.date%></span>
    </h2>
    <div class='tag'>
      <%for (var i = 0; i < this.tag.length; i++) {%>
        <span><%this.tag[i]%></span>
      <%}%>
    </div>
    <p class='desc'><%this.desc%></p>
  </div>
"""

# 初始化作品
pHtml = ""
svgSupport = Modernizr.svg && Modernizr.cssanimations
# 测试
# svgSupport = false
for i in [(portfolioData.length-1)..0]
  item = portfolioData[i]
  item.svgSupport = svgSupport
  item.path = item.path.replace(/\s/g, " L")
  item.path = if item.path is "" then "0,0" else item.path
  item.path = "M" + item.path
  pHtml += TemplateEngine(portfolioTemplate, item)

$(".portfolio")[0].innerHTML = pHtml if $(".portfolio").length > 0

# 作品是否显示
itemArr = $(".item", ".portfolio")
transition = Modernizr.prefixed("transition")
$(window).scroll(
  ->
    top = $(this).scrollTop()
    bottom = top + $(this).height()
    for item in itemArr
      middle = $(item).offset().top + $(item).height() * .5
      if middle > top and middle < bottom
        drawSketch item
) if svgSupport

# 开始画
drawSketch = (item) ->
  return if $(item).hasClass "active"
  $(item).addClass "active"
  path = item.getElementsByTagName("path")[0]
  length = path.getTotalLength()

  path.style.strokeDasharray = "#{length} #{length}"
  path.style.strokeDashoffset = length
  path.getBoundingClientRect()
  path.style[transition] = "stroke-dashoffset 5s ease-in-out"
  path.style.strokeDashoffset = "0"