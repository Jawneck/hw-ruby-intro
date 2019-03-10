require 'ruby_intro' 
    
    describe "#sum" do
        it 'should return the sum or 0 ' do
            sum([2,2]).should == 4
            sum([]).should == 0
        end
    end

    describe "#max_2_sum" do
    	it 'should return the sum' do
    		max_2_sum([1,4,3,99]).should == 103
    	end
    	it "reurn the array" do
    		max_2_sum([1]).should == [1]
    	end
    	it "returm 0" do
    		max_2_sum([]).should == 0
    	end
	end
	
    describe "#sum_to_n?" do
    	it "true" do
    		sum_to_n?([1,2,3,4,77,6],79).should be true
    	end
    	it "false" do
    		sum_to_n?([1,2,5,6,44,5],2).should be false
    	end
    end


