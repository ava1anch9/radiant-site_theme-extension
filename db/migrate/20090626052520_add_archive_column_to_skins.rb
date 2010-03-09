class AddArchiveColumnToSkins < ActiveRecord::Migration
  def self.up
		add_column :skins, :archive_file_name, :string
		add_column :skins, :archive_content_type, :string
		add_column :skins, :archive_file_size, :integer
		add_column :skins, :archive_updated_at, :datetime

		remove_column :skins, :content
		remove_column :skins, :lock_version
  end

  def self.down
		remove_column :skins, :archive_file_name
		remove_column :skins, :archive_content_type
		remove_column :skins, :archive_file_size
		remove_column :skins, :archive_updated_at

		add_column :skins, :content, :text
		add_column :skins, :lock_version, :string
  end
end
