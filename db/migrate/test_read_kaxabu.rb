# encoding: UTF-8
require 'roo'
require 'xlsx_writer'
require 'fileutils'


s = Roo::Excelx.new('migrate_data\\噶哈巫語分類辭典.xlsx')
s.default_sheet = s.sheets[0]
doc = XlsxWriter.new
sheet1 = doc.add_sheet("sheet1")

s.each do |e|
  sheet1.add_row [e.to_s]
end

puts doc.path
FileUtils.mv doc.path, 'migrate_data\\噶哈巫語分類辭典_out.xlsx'
doc.cleanup