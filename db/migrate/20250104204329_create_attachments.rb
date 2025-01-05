class CreateAttachments < ActiveRecord::Migration[8.0]
  def change
    create_table :attachments do |t|
      t.string :blob_name
      t.string :content_type
      t.boolean :restricted
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
