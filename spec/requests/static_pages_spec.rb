		require 'spec_helper'
describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

describe "Home page" do
it "should have the h1 'Sample App'" do
visit '/static_pages/home'
page.should have_selector('h1', :text => 'Sample App')
end

it "should have the base title 'Home'" do
visit '/static_pages/home'
page.should have_selector('title',
:text => "#{base_title}")
end

it "should not have a custom page title" do
visit '/static_pages/home'
page.should_not have_selector('title',
:text => "| Home")
end
end



end