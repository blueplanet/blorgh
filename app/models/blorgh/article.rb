module Blorgh
  class Article < ApplicationRecord
    include Blorgh::Concerns::Models::Article

    has_many :comments
  end
end
