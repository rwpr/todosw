# require_relative '../config'
require_relative '../../config/application.rb'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :done
      t.string :desc
      t.timestamp
    end
  end
end
