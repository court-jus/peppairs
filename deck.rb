require 'squib'

# Squib::logger.level = Logger::DEBUG

light = '#F3EFE3'
dark = '#230602'
transparent = '#FFFFFF00'
numbers = %w(1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 6 6 6 6 6 6 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 N N N N N N N N N X X X X X X X X X X)
cardnb = 55

Squib::Deck.new(cards: cardnb, layout: 'layout.yml') do

  png file: ['../0101.png', 
             '../0201.png', '../0202.png',
             '../0301.png', '../0302.png', '../0303.png',
             '../0401.png', '../0402.png', '../0403.png', '../0404.png',
             '../0501.png', '../0502.png', '../0503.png', '../0504.png', '../0505.png',
             '../0601.png', '../0602.png', '../0603.png', '../0604.png', '../0605.png',
             '../0606.png',
             '../0701.png', '../0702.png', '../0703.png', '../0704.png', '../0705.png',
             '../0706.png', '../0707.png',
             '../0801.png', '../0802.png', '../0803.png', '../0804.png', '../0805.png',
             '../0806.png', '../0807.png', '../0808.png',
             '../0901.png', '../0902.png', '../0903.png', '../0904.png', '../0905.png',
             '../0906.png', '../0907.png', '../0908.png', '../0909.png',
             '../1001.png', '../1002.png', '../1003.png', '../1004.png', '../1005.png',
             '../1006.png', '../1007.png', '../1008.png', '../1009.png', '../1010.png',
             ],
       x: 37, y: 37

  rect x: 37, y: 37, width: 750, height: 1050, fill_color: transparent, stroke_color: light,
       stroke_width: '0.05cm'

  [37, 37+750].each do |x|
    [37, 37+1050].each do |y|
       circle x: x, y: y, fill_color: dark, radius: 160, stroke_color: light,
       stroke_width: '0.05cm'
    end
  end

  rect x: 0, y: 0, width: 37, height: 1125, fill_color: dark, stroke_color: dark
  rect x: 0, y: 0, width: 825, height: 37, fill_color: dark, stroke_color: dark
  rect x: 37+750, y: 0, width: 37, height: 1125, fill_color: dark, stroke_color: dark
  rect x: 0, y: 37+1050, width: 825, height: 37, fill_color: dark, stroke_color: dark

  [45, 660].each do |x|
    text str: numbers,
        color: light, font: 'ChunkFive Roman, Sans 72',
        x: x, y: 45, width: 120, align: :center
  end
  [165, 780].each do |x|
    text str: numbers,
        color: light, font: 'ChunkFive Roman, Sans 72',
        x: x, y: 1080, width: 120, align: :center, angle: 3.14159265
  end

  save format: :png
end
