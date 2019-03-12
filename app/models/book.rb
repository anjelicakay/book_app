class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many :inventories
  has_many :users, through: :inventories
  has_many :book_clubs

  enum genre: {fiction: 0, non_fiction: 1, anthology: 2, childrens_literature: 3, comic_book: 4, crime: 5, drama: 6, fairytale: 7, fantasy: 8, graphic_novel: 9, historical_fiction: 10, horror: 11, mystery: 12, picture_book: 13, poetry: 14, political_thriller: 15, romance: 16, satire: 17, science_fiction: 18, short_story: 19, suspense: 20, thriller: 21, young_adult: 22, art: 23, autobiography: 24, biography: 25, cookbook: 26, diary: 27, dictionary: 28, encyclopedia: 29, guide: 30, heatlh: 31, history: 32, journal: 33, math: 34, memoir: 35, prayer: 36, religion: 37, spirtuality: 38, textbook: 39, science: 40, self_help: 41, true_crime: 42}

end
