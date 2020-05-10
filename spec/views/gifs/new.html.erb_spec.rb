require 'rails_helper'

RSpec.describe "gifs/new", type: :view do
  before(:each) do
    assign(:gif, Gif.new(
      title: "MyString",
      description: "MyText",
      gif_file: "MyString"
    ))
  end

  it "renders new gif form" do
    render

    assert_select "form[action=?][method=?]", gifs_path, "post" do

      assert_select "input[name=?]", "gif[title]"

      assert_select "textarea[name=?]", "gif[description]"

      assert_select "input[name=?]", "gif[gif_file]"
    end
  end
end
