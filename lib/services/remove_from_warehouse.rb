module Shop
  class RemoveFromWarehouse
    attr_reader :product_id, :quantity

    def initialize(params)
      @product_id = params.fetch("product_id").to_i
      @quantity = params.fetch("quantity").to_i
    end

    def call(id)
      Warehouse.delete_if { |product| product(id) == id  }
    end
  end
end
