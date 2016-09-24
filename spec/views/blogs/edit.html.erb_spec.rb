require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :title => "MyString",
      :body => "MyText",
      :author_id => ""
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input#blog_title[name=?]", "blog[title]"

      assert_select "textarea#blog_body[name=?]", "blog[body]"

      assert_select "input#blog_author_id[name=?]", "blog[author_id]"
    end
  end
end
