require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :pages => 2,
      :publishing_company => "Publishing Company",
      :writer => "Writer",
      :image_url => "Image Url",
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Publishing Company/)
    expect(rendered).to match(/Writer/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
  end
end
