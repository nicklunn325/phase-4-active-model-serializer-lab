class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content #, :tags  # if you include relationship as an attribute it will not serialize
  belongs_to :author
  has_many :tags # if you use relationship macro, it will use serializer for attribues but will not include the serialized relationships for the tag model in this example

  def short_content
    "#{object.content[0..39]}..."
  end
end
