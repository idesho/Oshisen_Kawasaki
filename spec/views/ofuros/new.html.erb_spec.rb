require 'rails_helper'

RSpec.describe "ofuros/new", type: :view do
  before(:each) do
    assign(:ofuro, Ofuro.new())
  end

  it "renders new ofuro form" do
    render

    assert_select "form[action=?][method=?]", ofuros_path, "post" do
    end
  end
end
