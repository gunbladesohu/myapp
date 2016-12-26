class CreateResearchDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :research_designs do |t|
      t.string :question
      t.string :method
      t.string :metrics
      t.string :participants

      t.timestamps
    end
  end
end
