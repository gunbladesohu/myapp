class CreateEvidenceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :evidence_items do |t|
      t.string :context_how
      t.string :context_why
      t.string :context_who
      t.string :context_what
      t.string :context_where
      t.string :context_when
      t.string :benefit
      t.string :result
      t.datetime :insertTime

      t.timestamps
    end
  end
end
