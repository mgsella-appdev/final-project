Rails.application.routes.draw do
  # Routes for the Favorite resource:

  devise_for :users

  # CREATE
  match("/new_favorite_form", { :controller => "favorites", :action => "blank_form", :via => "get" })
  match("/insert_favorite_record", { :controller => "favorites", :action => "save_new_info", :via => "post" })

  # READ
  match("/favorites", { :controller => "favorites", :action => "list", :via => "get" })
  match("/favorites/:id_to_display", { :controller => "favorites", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_favorite_form/:id_to_prefill", { :controller => "favorites", :action => "prefilled_form", :via => "get" })
  match("/update_favorite_record/:id_to_modify", { :controller => "favorites", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  match("/new_category_form", { :controller => "categories", :action => "blank_form", :via => "get" })
  match("/insert_category_record", { :controller => "categories", :action => "save_new_info", :via => "post" })

  # READ
  match("/categories", { :controller => "categories", :action => "list", :via => "get" })
  match("/categories/:id_to_display", { :controller => "categories", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_category_form/:id_to_prefill", { :controller => "categories", :action => "prefilled_form", :via => "get" })
  match("/update_category_record/:id_to_modify", { :controller => "categories", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_category/:id_to_remove", { :controller => "categories", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Preparation resource:

  # CREATE
  match("/new_preparation_form", { :controller => "preparations", :action => "blank_form", :via => "get" })
  match("/insert_preparation_record", { :controller => "preparations", :action => "save_new_info", :via => "post" })

  # READ
  match("/preparations", { :controller => "preparations", :action => "list", :via => "get" })
  match("/preparations/:id_to_display", { :controller => "preparations", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_preparation_form/:id_to_prefill", { :controller => "preparations", :action => "prefilled_form", :via => "get" })
  match("/update_preparation_record/:id_to_modify", { :controller => "preparations", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_preparation/:id_to_remove", { :controller => "preparations", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Cuisine resource:

  # CREATE
  match("/new_cuisine_form", { :controller => "cuisines", :action => "blank_form", :via => "get" })
  match("/insert_cuisine_record", { :controller => "cuisines", :action => "save_new_info", :via => "post" })

  # READ
  match("/cuisines", { :controller => "cuisines", :action => "list", :via => "get" })
  match("/cuisines/:id_to_display", { :controller => "cuisines", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_cuisine_form/:id_to_prefill", { :controller => "cuisines", :action => "prefilled_form", :via => "get" })
  match("/update_cuisine_record/:id_to_modify", { :controller => "cuisines", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_cuisine/:id_to_remove", { :controller => "cuisines", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  match("/new_recipe_form", { :controller => "recipes", :action => "blank_form", :via => "get" })
  match("/insert_recipe_record", { :controller => "recipes", :action => "save_new_info", :via => "post" })

  # READ
  match("/recipes", { :controller => "recipes", :action => "list", :via => "get" })
  match("/recipes/:id_to_display", { :controller => "recipes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_recipe_form/:id_to_prefill", { :controller => "recipes", :action => "prefilled_form", :via => "get" })
  match("/update_recipe_record/:id_to_modify", { :controller => "recipes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_recipe/:id_to_remove", { :controller => "recipes", :action => "remove_row", :via => "get" })

  #------------------------------

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
