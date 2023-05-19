class JwtDenylist < ApplicationRecord
    def change
        create_table :jwt_denylist do |t|
          t.string :jti, null: false
          t.datetime :exp, null: false
        end
        add_index :jwt_denylist, :jti
       end
end
