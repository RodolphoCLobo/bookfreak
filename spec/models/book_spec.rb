require 'rails_helper'

describe Book, type: :model do
  it "should have accept specified attributes" do
    book = Book.new

    expect(book).to have_attributes(
      :title => nil, :pages => nil, :edit => nil,
      :publishing_company => nil, :writer => nil,
      :image_url => nil, :summary => nil
    )
  end
end
