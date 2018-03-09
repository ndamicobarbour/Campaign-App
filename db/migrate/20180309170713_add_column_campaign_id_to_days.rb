class AddColumnCampaignIdToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :campaign_id, :int
  end
end
