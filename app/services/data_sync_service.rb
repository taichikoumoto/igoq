# frozen_string_literal: true

class DataSyncService
  class << self
    def sync!
      data = SheetRepository.phones_data
      Phone.destroy_all
      Company.destroy_all
      Company.import(data)
      Phone.import(data)
    end
  end
end
