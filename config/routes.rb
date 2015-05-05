Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # VARIABLE ROUTES
  # =======================

  get("/random/:min/:max",         { :controller => "fortunes", :action => "within_range" })

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })


  get("/zodiacs/new", {:controller => "zodiacs", :action => "new_form"})
  get("")

  # get("/creatures/:the_id", { :controller => "zodiacs", :id => "id" })
  get("/zodiacs", { :controller => "zodiacs", :action => "index"})
end
