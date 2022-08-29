class Person < ApplicationRecord
    has_many :projects , foreign_key: 'projects_id'
    enum status: [ :single, :married, :divorced ]
end
