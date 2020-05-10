require 'rails_helper'

RSpec.describe "gifs/edit", type: :view do
  before(:each) do
    @gif = assign(:gif, Gif.create!(
      title: "MyString",
      description: "MyText",
      gif_file: "MyString"
    ))
  end

  it "renders the edit gif form" do
    render

    assert_select "form[action=?][method=?]", gif_path(@gif), "post" do

      assert_select "input[name=?]", "gif[title]"

      assert_select "textarea[name=?]", "gif[description]"

      assert_select "input[name=?]", "gif[gif_file]"
    end
  end
end
