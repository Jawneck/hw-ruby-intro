require 'ruby_intro'
    describe "#hello" do
    	it "should be a String" do
        	 expect(hello("yassir").class).to eq(String)
    	end
	end

	describe "#starts_with_consonant?" do
		it "return true" do
			starts_with_consonant?('s').should_not be true
		end
		it "return false" do 
			starts_with_consonant?('a').should be true
		end		
	end
	
	describe "#binary_multiple_of_4?" do
		it "return true" do
			binary_multiple_of_4?("100").should be true
		end
		it "return false" do 
			binary_multiple_of_4?('a100').should be false
		end
	end
