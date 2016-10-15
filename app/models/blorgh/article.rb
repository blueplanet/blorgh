module Blorgh
  class Article < ApplicationRecord
    has_many :comments

    attr_accessor :author_name
    belongs_to :author, class_name: 'User', dependent: :destroy

    before_save :set_author

    private

      def set_author
        self.author = User.find_or_create_by(name: author_name)
      end
  end
end
