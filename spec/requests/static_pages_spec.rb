require 'spec_helper'

describe "Static pages" do
	subject{ page }
	describe "Home page" do

		before { visit root_path}

		it{ should have_title("Ruby on Rails Tutorial Sample App") }
	end


	describe "Help pages" do
		it "should have the content'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end


		it "should have the right title" do
			visit help_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe 'About pages' do
		it "should have the content 'About Us'" do
			visit about_path
			expect(page).to have_content('About Us')
		end


		it "should have the right title" do
			visit about_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end

	describe "Contact pages" do
		it "should have the content'Contact'" do
			visit contact_path
			expect(page).to have_content('Contact')
		end


		it "should have the right title" do
			visit contact_path
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
		end
	end
end
