# frozen_string_literal: true

class SheetRepository
  class << self
    def phones_data
      worksheet_session[0].rows
    end

    def accounts_data
      worksheet_session[4].rows
    end

    private

    def worksheet_session
      session = GoogleDrive::Session.from_service_account_key('../igoq_service_account_key.json')
      session.spreadsheet_by_key('16aOnqzBRU-HAj73blzfwu02XMYd0jqKL5RiDtR86YdI').worksheets

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
