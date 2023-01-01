Rails.application.routes.draw do

  namespace :v1 do
    resource :projects, controller: 'projects' do
      post :link_project,        on: :collection
      get  :all_projects,        on: :collection
    end
  end
end
