class AddPeopleRefToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :people, null: false, foreign_key: true
  end
end
