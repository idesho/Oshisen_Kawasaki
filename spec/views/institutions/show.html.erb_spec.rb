require 'rails_helper'

RSpec.describe "institutions/show", type: :view do
  before(:each) do
    @institution = assign(:institution, Institution.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
