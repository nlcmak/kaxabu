# encoding: UTF-8
require 'roo'

s = Roo::Excelx.new('migrate_data\\噶哈巫語分類辭典.xlsx')

File.open('migrate_data\\噶哈巫語分類辭典_out.txt','w') do |file|
  s.default_sheet = s.sheets[0]
  篇名_ = nil
  (3..s.last_row).each do |i|
    if s.row(i)[0].to_s.strip.empty? == false
      篇名_ = s.row(i)[0].strip
    end
    篇名 = 篇名_
    編號 = s.row(i)[1][/[^0-9]*([0-9A-Z]*)/,1]
    類名 = s.row(i)[1][/[^0-9A-Z]*$/]
    file.write [篇名,編號,類名].join(',')+"\n"
  end
  
  s.default_sheet = s.sheets[1]
  (5..s.last_row).each do |i|
    next if s.row(i)[0][/[A-Z]-[0-9]/].nil? == true
    tmp = s.row(i)[0].split('-')
    目錄編號 = tmp[0]
    辭典編號 = tmp[1]
    噶哈巫語教材標記法 = s.row(i)[1]
    噶哈巫語潘永歷標記法 = s.row(i)[2]
    中文譯解 = s.row(i)[3]
    臺語譯解 = s.row(i)[4]
    參考 = s.row(i)[5]
    出處 = s.row(i)[6]
    file.write [目錄編號,辭典編號,噶哈巫語教材標記法,噶哈巫語潘永歷標記法,中文譯解,臺語譯解,參考,出處].join(',')+"\n"
  end
end
