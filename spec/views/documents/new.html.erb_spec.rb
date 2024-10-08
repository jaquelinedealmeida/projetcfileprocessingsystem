require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      user: nil,
      file: "MyString",
      description: "MyText"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input[name=?]", "document[user_id]"

      assert_select "input[name=?]", "document[file]"

      assert_select "textarea[name=?]", "document[description]"
    end
  end
end
