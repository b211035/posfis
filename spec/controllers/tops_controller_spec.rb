require 'spec_helper'

describe TopsController do
	describe "GET 'index'" do
		subject { response }
		before :each do
		  get :index
		end

		it { should be_success }
	end
end
