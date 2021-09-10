class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.references :applicant, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
