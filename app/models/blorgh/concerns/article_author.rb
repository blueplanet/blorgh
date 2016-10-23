module Blorgh::Concerns::ArticleAuthor
  extend ActiveSupport::Concern

  included do
    attr_accessor :author_name
    belongs_to :author, class_name: 'User'

    before_validation :set_author

    private

      def set_author
        self.author = User.find_or_create_by(name: author_name)
      end
  end

  def summary
    title
  end
end
