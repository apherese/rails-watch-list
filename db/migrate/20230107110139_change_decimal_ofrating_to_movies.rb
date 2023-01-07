class ChangeDecimalOfratingToMovies < ActiveRecord::Migration[7.0]
  def change
    change_column(:movies, :rating, :decimal)
  end
end
