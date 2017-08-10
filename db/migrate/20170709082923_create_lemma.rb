class CreateLemma < ActiveRecord::Migration[5.1]
    def up
        create_table :lemmas do |t|
            t.string :word
            t.string :part_of_speech
            t.timestamps
        end
    end

    def down
        drop_table :lemmas
    end
end
