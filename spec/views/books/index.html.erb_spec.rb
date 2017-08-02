require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :pages => 2,
        :publishing_company => "Publishing Company",
        :writer => "Writer",
        :image_url => "Image Url",
        :summary => "MyText"
      ),
      Book.create!(
        :title => "Title",
        :pages => 2,
        :publishing_company => "Publishing Company",
        :writer => "Writer",
        :image_url => "Image Url",
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Publishing Company".to_s, :count => 2
    assert_select "tr>td", :text => "Writer".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
