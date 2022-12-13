require 'rails_helper'

RSpec.describe "ofuros/show", type: :view do
  before(:each) do
    @ofuro = assign(:ofuro, Ofuro.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
