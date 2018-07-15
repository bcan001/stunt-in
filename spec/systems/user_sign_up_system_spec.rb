require "rails_helper"

RSpec.describe "the user sign up process", :type => :feature do

  before :each do |example|
    unless example.metadata[:skip_user_create]
      @user = FactoryBot.build(:user, first_name: 'John3', last_name: 'Jones3', email: 'jjones3@gmail.com', phone: '9061334567', username: 'jjones3', password: 'password')
    end
  end

  # it "redirects the user to the sign up page when they click on the sign up button on the homepage", :skip_user_create do
  #   visit root_path
  #   find_link('a',{exact_text: 'Sign Up'}).click
  #   expect(page).to have_content "Sign Up"
  # end


  # REQUIRES JAVASCRIPT TEST SUITE FOR IT TO WORK:
  # https://eddyerburgh.me/unit-test-vue-components-beginners

  # INSTALLING THE TEST SUITE:
  # Test runner: Karma
  # Test framework: Mocha
  # Assertions: Chai
  # Mocking: Sinon
  # Vue component testing: avoriaz
  # Browser: jsdom
  # Compiler: Webpack
  # https://github.com/mplewis/rails-vue-frontend-test-example

  # yarn test

  # sinon js
  # https://www.sitepoint.com/sinon-tutorial-javascript-testing-mocks-spies-stubs/



  # REACT HAS A DIFFERENT TEST SUITE AND DEPENDENCIES:
  # https://medium.freecodecamp.org/react-unit-testing-with-mocha-and-enzyme-77d18b6875cb

  # USE THIS TUTORIAL:
  # https://gist.github.com/andrewprogers/65f0228c262fbe8e1efe767527540aec


end















