require 'rails_helper'

RSpec.describe "ofuros/edit", type: :view do
  before(:each) do
    @ofuro = assign(:ofuro, Ofuro.create!())
  end

  it "renders the edit ofuro form" do
    render

    assert_select "form[action=?][method=?]", ofuro_path(@ofuro), "post" do
    end
  end
end
