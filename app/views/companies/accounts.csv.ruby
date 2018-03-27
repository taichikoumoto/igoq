# frozen_string_literal: true

require 'kconv'
require 'csv'

csv_str = CSV.generate do |csv|
  csv << [1, 260, 37_335, '', '', '', '', '', '']
  number_of_rows = 0
  @data.drop(2).each do |row|
    name = row[0]
    # SBSゼンツウはマージ
    name = 'SBSゼンツウ株式会社' if name =~ /SBSゼンツウ/
    company = Company.find_by(name: name)
    next if company.blank? || row[14] != '〇'
    datum = [
      3,
      '',
      '',
      '',
      20,
      company.sum_of_charge.tax_included,
      row[15],
      row[16],
      row[17],
      row[18],
      row[19],
      row[20],
      '',
      '',
      '',
      '',
      ''
    ]
    csv << datum
    number_of_rows += 1
  end
  csv << [4, number_of_rows, '', '']
end

NKF.nkf('--sjis -Lw -x -Z4', csv_str)
