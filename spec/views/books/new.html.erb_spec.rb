require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :pages => 1,
      :publishing_company => "MyString",
      :writer => "MyString",
      :image_url => "MyString",
      :summary => "MyText"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[pages]"

      assert_select "input[name=?]", "book[publishing_company]"

      assert_select "input[name=?]", "book[writer]"

      assert_select "input[name=?]", "book[image_url]"

      assert_select "textarea[name=?]", "book[summary]"
    end
  end
end
