require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    assign(:document, Document.create!(
      user: nil,
      file: "File",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/File/)
    expect(rendered).to match(/MyText/)
  end
end
