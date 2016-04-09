class Admin::SettingsController < ApplicationController
  def index
    @preference = Preference.find_or_create_by(:id => 1)
  end

  def update
    @preference = Preference.find(params[:id])
    if @preference.update(preference_params)
      redirect_to admin_settings_index_path
    else
      render "index"
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order)
  end
end
