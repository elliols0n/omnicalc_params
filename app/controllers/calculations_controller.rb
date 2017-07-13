class CalculationsController < ApplicationController
    def flex_square
      # the incoming parameters for this action look like this {"a_number"=>"5"} where the number is whatever the user types
      # rails stores that hash in a variable called params
        
        @user_number = params["a_number"].to_i
        @squared_number = @user_number**2
        
        render("calculations/flexible_square_template.html.erb")
    end
    
    def flex_square_root
        @user_number = params["a_number"].to_i
        @square_root = Math.sqrt(@user_number)
        
        render("calculations/flexible_square_root_template.html.erb")
    end
    
    # def flex_payment
    #     # @user_interest_rate = params["a_interest_rate"].to_i
    #     # @interest_rate = @user_interest_rate/10000
    #     # @mpr = (@interest_rate/12)

    #     # @user_number_of_years = params["a_years"].to_i
    #     # @user_loan_amount = params["a_loan_amount"].to_i
    #     # @monthy_payment = 
    #     # @monthly_payment = @mpr / (1 - (1+@mpr) ** (-@payments)) * @principal
    #     #
    #     # number.to.currency and number.to.percentage are ways to get $ and %
    # end

    def square_form
        
        render("calculations/square_form_template.html.erb")
    end
    
    def process_square
        
        @user_number = params["the_user_number"].to_i
        @squared_number = @user_number**2

        render("calculations/square_results_template.html.erb")
    end
        
        
end