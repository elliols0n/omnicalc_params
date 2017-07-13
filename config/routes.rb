Rails.application.routes.draw do
  
  # get("/flexible/square/1", { :controller => "calculations", :action => "flex_square"})
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:a_number", { :controller => "calculations", :action => "flex_square_root"})
  # get("/flexible/payment/:a_interest_rate/:a_years/:a_loan_amount", { :controller => "calculations", :action => "flex_payment"})

  get("/square/new", { :controller => "calculations", :action => "square_form"})
  
  get("/square/results", { :controller => "calculations", :action => "process_square"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
