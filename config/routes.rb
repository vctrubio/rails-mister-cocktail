Rails.application.routes.draw do
   root "cocktails#new"

  resources :cocktails, only:[:index, :new, :create, :show] do
    resources :doses, only:[:show, :new, :create, :show]
  end
  end

  #ONLY [] MISSING