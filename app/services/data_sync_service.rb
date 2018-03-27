# frozen_string_literal: true

class DataSyncService
  class << self
    def sync!
      phones_data = SheetRepository.phones_data
      accounts_data = SheetRepository.accounts_data
      Phone.destroy_all
      Company.destroy_all
      Company.import(phones_data, accounts_data)
      Phone.import(phones_data)
    end
  end
end
