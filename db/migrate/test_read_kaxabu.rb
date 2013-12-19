# encoding: UTF-8
require 'roo'

s = Roo::Excelx.new('migrate_data\\test.xlsx')
s.default_sheet = s.sheets[0]

File.open('migrate_data\\噶哈巫語分類辭典_out.txt','w') do |file|
  pinn1mia5 = nil
  lui7 = nil
  (3..s.last_row).each do |i|
    s.row(i).each_with_index do |content, index|
      content = content.to_s.gsub '　',' '
      content.strip!
      case index
      when 0
        if content.empty? == false
          pinn1mia5 = content.split('.')[1]
        end
        content = pinn1mia5
      when 1
        lui7
      end
      file.write content+', '
    end
    file.write "\n"
  end
end
