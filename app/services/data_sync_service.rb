class DataSyncService
  class << self
    def sync!
      data = SheetRepository.data
      Phone.destroy_all
      Company.destroy_all
      Company.import(data)
      Phone.import(data)
    end
  end
end