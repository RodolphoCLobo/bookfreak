require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :pages => 1,
      :publishing_company => "MyString",
      :writer => "MyString",
      :image_url => "MyString",
      :summary => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[pages]"

      assert_select "input[name=?]", "book[publishing_company]"

      assert_select "input[name=?]", "book[writer]"

      assert_select "input[name=?]", "book[image_url]"

      assert_select "textarea[name=?]", "book[summary]"
    end
  end
end
