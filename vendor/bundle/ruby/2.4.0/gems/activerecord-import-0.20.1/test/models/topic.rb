class Topic < ActiveRecord::Base
  validates_presence_of :author_name
  validates :title, numericality: { only_integer: true }, on: :context_test
  validates :title, uniqueness: true
  validates :content, uniqueness: true
  validates :word_count, numericality: { greater_than: 0 }, if: :content?

  validate -> { errors.add(:title, :validate_failed) if title == 'validate_failed' }
  before_validation -> { errors.add(:title, :invalid) if title == 'invalid' }

  has_many :books, inverse_of: :topic
  belongs_to :parent, class_name: "Topic"

  composed_of :description, mapping: [%w(title title), %w(author_name author_name)], allow_nil: true, class_name: "TopicDescription"

  private

  def word_count
    @word_count ||= content.to_s.scan(/\w+/).count
  end
end