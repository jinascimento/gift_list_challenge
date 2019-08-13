class Lists::ProductItems::ProductItemCreator
  def self.call(*args)
    new(*args).execute
  end

  def initialize(params, product_ids)
    @params = params
    @product_ids = product_ids
  end

  def execute
    @product_ids.each do |product_id|
      product_item = ProductItem.new(@params)
      product_item.product_id = product_id
      product_item.save
    end
  end
end
