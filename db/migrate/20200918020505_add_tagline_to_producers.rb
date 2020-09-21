class AddTaglineToProducers < ActiveRecord::Migration[6.0]
  def change
    add_column :producers, :tagline, :string
  end
end
