require 'rails_helper'

RSpec.describe "institutions/index", type: :view do
  before(:each) do
    assign(:institutions, [
      Institution.create!(),
      Institution.create!()
    ])
  end

  it "renders a list of institutions" do
    render
  end
end
