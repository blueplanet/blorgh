module Blorgh
  class Article < ApplicationRecord
    include ArticleAuthor

    has_many :comments
  end
end
