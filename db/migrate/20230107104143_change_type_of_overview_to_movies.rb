class ChangeTypeOfOverviewToMovies < ActiveRecord::Migration[7.0]
  def change
    change_column(:movies, :overview, :text)
  end
end
