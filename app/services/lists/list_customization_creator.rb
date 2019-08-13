class Lists::ListCustomizationCreator
  def self.call(*args)
    new(*args).execute
  end

  def initialize(params)
    @params = params
  end

  def execute
    list = List.new(@params)
    list.category = Category.find_by_name('customization')
    list.save
  end
end
