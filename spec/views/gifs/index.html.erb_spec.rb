require 'rails_helper'

RSpec.describe "gifs/index", type: :view do
  before(:each) do
    assign(:gifs, [
      Gif.create!(
        title: "Title",
        description: "MyText",
        gif_file: "Gif File"
      ),
      Gif.create!(
        title: "Title",
        description: "MyText",
        gif_file: "Gif File"
      )
    ])
  end

  it "renders a list of gifs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Gif File".to_s, count: 2
  end
end
