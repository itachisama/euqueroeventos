class Tag < ActiveRecord::Base
  set_table_name "tags"
  validates :nome,:presence =>true,
            :length =>{:maximum=>20}
end
