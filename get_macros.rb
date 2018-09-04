require 'open-uri'
require 'nokogiri'

username = "sashaverona"
@diary = Nokogiri::HTML(open("https://www.myfitnesspal.com/food/diary/#{username}"))

macros = @diary.css('tr.total span.macro-value').map &:text

carbs, fat, protein = macros[0..3].map &:to_i

p carbs
p fat
p protein
