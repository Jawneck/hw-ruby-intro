
require 'ruby_intro'

describe BookInStock do 
	before :each {@book = BookInStock.new "isbn1" , 33}
	describe "#new" do
		it "takes two parameters and returns a book object" do 
			@book.should be_an_instance_of BookInStock
		end
	end
		describe "getters & setters" do
			it "isbn should eql to isbn1 " do
	 			@book.isbn.should eql('isbn1')
	 		end
	 		it "price should match 33" do 
	 			@book.price.should eql(33)
	 		end
	 	end
   describe 'constructor' do
   	   it "reject the invalid isbn" do
   	   	  @book.isbn.should_not eql("")
   	   	end
   	   	it "reject the price if it's minus or equal to zero" do
   	   		@book.price.should_not == 0 
   	   		@book.price.should_not < 0
   	   	end
   	   	context 'should allow to change the isbn and the price' do
   	   		it 'can change them' do
   	   			@book.isbn = 'isbn2'
   	   			@book.price = 34.08

   	   			@book.price.should eql(34.08)
   	   			@book.isbn.should eql('isbn2')
   	   		end
  
		end
   	

   	describe '#price_as_string' do
   		it "should display 33,8 as $33.80"
   			@book = BookInStock.new("isbn", 33.8)
   			@book.price_as_string.should == "$33.80"
		end
		it "should display 1 as $1,00" do
			@book = BookInStock.new("isbn", 1)
			@book.price_as_string.should == "$1.00"
		end
	end
end






