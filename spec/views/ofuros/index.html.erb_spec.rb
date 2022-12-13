require 'rails_helper'

RSpec.describe "ofuros/index", type: :view do
  before(:each) do
    assign(:ofuros, [
      Ofuro.create!(),
      Ofuro.create!()
    ])
  end

  it "renders a list of ofuros" do
    render
  end
end
