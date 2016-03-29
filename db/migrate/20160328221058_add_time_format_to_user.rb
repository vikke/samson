class AddTimeFormatToUser < ActiveRecord::Migration
  def change
    add_column :users, :time_format, :string, :default => 'relative', :null => false
    User.all.each do |user|
      user.update_attributes!(:time_format => 'relative')
    end
  end
end
