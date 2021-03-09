class User < ApplicationRecord
    has_many :journal_entries
    has_many :categories, through: :journal_entries
end
