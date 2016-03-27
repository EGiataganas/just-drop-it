require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :filename => "Filename"
      ),
      Document.create!(
        :filename => "Filename"
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
  end
end
