class AddCarouselimgToProduouselimgToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :carousel_img_url, :string
  end
end
