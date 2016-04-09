require 'spec_helper'

describe "preferences", type: :feature do


  describe "GET /admin/settings" do
    it "has a form to edit settings" do
      visit admin_settings_index_path
      expect(page).to have_checked_field('preference_artist_sort_order_desc')
      expect(page).to have_checked_field('preference_song_sort_order_desc')
    end
  end

  describe "GET /admin/access" do
    it "has a form to edit settings" do
      visit admin_access_index_path
      expect(page).to have_checked_field('preference_allow_create_artists_true')
      expect(page).to have_checked_field('preference_allow_create_songs_true')
    end
  end
end
