RSpec.describe '/v1/projects', type: :request do
  describe 'GET /v1/projects' do
    before { create_list(:project, 3) }

    it 'get all projects' do
      get '/v1/projects'

      expect(response.status).to eq 200
      expect(json_response['data'].count).to eq Project.count
    end
  end

  describe 'POST /v1/projects/calculate_project' do
    before do
      stub_pull_request
      stub_comment
      stub_review
      stub_pull_request_incorect
    end

    context 'Link new project' do
      it 'success link new project' do
        expect do
          post '/v1/projects/calculate_project', params: { owner_username: 'sinatra', project_name: 'sinatra' }
        end.to change(Project, :count)
      end

      it 'success calculate data for project' do
        expect do
          post '/v1/projects/calculate_project', params: { owner_username: 'sinatra', project_name: 'sinatra' }
        end.to change(ProjectCalculation, :count)
      end
    end

    it 'project not found' do
      post '/v1/projects/calculate_project', params: { owner_username: 'some_incorect_name_for_project_owner', project_name: 'some_incorect_name_for_project' }

      expect(response.status).to eq 422
      expect(json_response).to eq({"errors"=>[{"provider_error"=>[{"documentation_url"=>"https://docs.github.com/rest/reference/pulls#list-pull-requests", "message"=>"Not Found"}]}]})
    end
  end
end
