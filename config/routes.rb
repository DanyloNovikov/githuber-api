Rails.application.routes.draw do

  namespace :v1 do
    resource :projects, controller: 'projects' do
      post :calculate_project, on: :collection
      get  :index,             on: :collection
    end
  end
end
