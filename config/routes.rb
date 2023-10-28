Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "home" })
  
  get("/square/new", { :controller => "zebra", :action => "new_square" })

  get("/square/results", { :controller => "zebra", :action => "square_results" })

  get("/square_root/new", { :controller => "zebra", :action => "new_square_root" })

  get("/square_root/results", { :controller => "zebra", :action => "square_root_result" })

  get("/payment/new", { :controller => "zebra", :action => "new_payment" })
  get("/payment/results", { :controller => "zebra", :action => "payment_results" })

  get("/random/new", { :controller => "zebra", :action => "new_random" })
  get("/random/results", { :controller => "zebra", :action => "random_results" })


end
