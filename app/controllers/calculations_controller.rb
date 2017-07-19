class CalculationsController < ApplicationController
    # Part I
    def flex_square
      # the incoming parameters for this action look like this {"a_number"=>"5"} where the number is whatever the user types
      # rails stores that hash in a variable called params
        
        @user_number = params["a_number"].to_i
        @squared_number = @user_number**2
        
        render("calculations/flexible_square.html.erb")
    end
    
    def flex_square_root
        @user_number = params["a_number"].to_i
        @square_root = Math.sqrt(@user_number)
        
        render("calculations/flexible_square_root.html.erb")
    end
    
    def flex_payment
        # @user_basis_points = params["basis_points"].to_i
        @user_basis_points = params["basis_points"].to_percentage

        @user_basis_to_percentage = @user_basis_points/100
        @user_number_of_years = params["number_of_years"].to_i
        @user_present_value = params["present_value"].to_i
        @mpr = (params["basis_points"])/12
        @monthly_payment = (@mpr * @user_present_value) / (1-(1+@mpr)**(-@user_number_of_years))
        
        # @mpr / (1 - (1+@mpr) ** (-@payments)) * @user_present_value
        #
        # number_to_currency() and number_to_percentage() are ways to get $ and %
        render("calculations/flexible_payment.html.erb")
    end
    
    def flex_random
        @user_min = params["min"].to_i
        @user_max = params["max"].to_i
        @random_number = rand(@user_min..@user_max)
        
        render("calculations/flexible_random.html.erb")
    end

    # Part II
    #
    ## Square
    def square_form
        
        render("calculations/square_form.html.erb")
    end
    
    def process_square
        
        @user_number = params["the_user_number"].to_f
        @squared_number = @user_number**2

        render("calculations/square_results.html.erb")
    end
    #
    ## Square root
    def square_root_form
        
        render("calculations/square_root_form.html.erb")
    end    

    def process_square_root
        
        @user_number = params["the_user_number"].to_f
        @square_root_of_number = Math.sqrt(params["the_user_number"].to_i)

        render("calculations/square_root_results.html.erb")
    end
    #
    ## Payment
    def payment_form
        
        render("calculations/payment_form.html.erb")
    end
    
    def process_payment

    @user_apr_input = params["user_apr"].to_i
    @user_number_of_years_input = params["user_number_of_years"].to_i
    @user_principal_input = params["user_principal"].to_i
        
        render("calculations/payment_results.html.erb")
    end
    #
    ## Random number
    def random_form
        
        render("calculations/random_form.html.erb")
    end
    
    def process_random_number
    @user_minimum_number_input = params["user_minimum_number_input"].to_i
    @user_maximum_number_input = params["user_maximum_number_input"].to_i
    @random_number = rand(@user_minimum_number_input..@user_maximum_number_input)
        
        render("calculations/random_number_results.html.erb")
    end
    
end