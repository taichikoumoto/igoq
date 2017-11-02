# frozen_string_literal: true

class SheetRepository
  class << self
    def worksheet_session
      session = GoogleDrive::Session.from_service_account_key('igoq_service_account_key.json')
      session.spreadsheet_by_key('1RRAE_AM3kV19lHbYsSfF1Dm5gbtYeJ2mO9SCZ3sRs5Y').worksheets[0]

      # レコード数を取得
      # p ws.num_rows
      # カラム数を取得
      # p ws.num_cols

      # pp ws.rows

      # ws.num_rows.times do |i|
      #   p i
      # end

      # ws[59, 50] = "test_input!"
      #
      # ws.save
    end
  end
end
