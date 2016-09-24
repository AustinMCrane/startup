require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :title => "MyString",
      :body => "MyText",
      :author_id => ""
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input#blog_title[name=?]", "blog[title]"

      assert_select "textarea#blog_body[name=?]", "blog[body]"

      assert_select "input#blog_author_id[name=?]", "blog[author_id]"
    end
  end
end
