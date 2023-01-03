RSpec.describe Services::GithubClient do
  let!(:project) { create(:project, owner_username: 'sinatra', project_name: 'sinatra') }
  let!(:pull_request_id) { 1857 }

  context 'get Pull Requests' do
    before do
      stub_pull_request
      stub_pull_request_incorect
    end


    it 'with correct value' do
      response = Services::GithubClient.get_pull_requests(
        owner_username: project.owner_username,
        project_name: project.project_name
      )


      expect(response[:success]).to eq true
      expect(response[:data].count).to eq 1
      expect(response[:data].first['number']).to eq 1857
    end

    it 'with incorect value' do
      response = Services::GithubClient.get_pull_requests(
        owner_username: 'some_incorect_name_for_project_owner',
        project_name: 'some_incorect_name_for_project'
      )

      expect(response[:success]).to eq false
      expect(response[:data].first.count).to eq 2
      expect(response[:data].first['message']).to_not eq nil
      expect(response[:data].first['documentation_url']).to_not eq nil
    end
  end

  context 'get Comments' do
    before do
      stub_comment
      stub_comment_incorect
    end

    it 'with correct value' do
      response = Services::GithubClient.get_comments(
        owner_username: project.owner_username,
        project_name: project.project_name,
        pull_request_id: pull_request_id
      )

      expect(response[:success]).to eq true
      expect(response[:data].first.count).to be > 2
    end

    it 'with incorrect value' do
      response = Services::GithubClient.get_comments(
        owner_username: 'some_incorect_name_for_project_owner',
        project_name: 'some_incorect_name_for_project',
        pull_request_id: 12312323123213213
      )

      expect(response[:success]).to eq false
      expect(response[:data].first.count).to eq 2
      expect(response[:data].first['message']).to_not eq nil
      expect(response[:data].first['documentation_url']).to_not eq nil
    end
  end

  context 'get Reviews' do
    before do
      stub_review
      stub_review_incorect
    end

    it 'with correct value' do
      response = Services::GithubClient.get_reviews(
        owner_username: project.owner_username,
        project_name: project.project_name,
        pull_request_id: pull_request_id
      )

      expect(response[:success]).to eq true
      expect(response[:data].first.count).to be > 2
    end

    it 'with incorrect value' do
      response = Services::GithubClient.get_reviews(
        owner_username: 'some_incorect_name_for_project_owner',
        project_name: 'some_incorect_name_for_project',
        pull_request_id: 12312323123213213
      )

      expect(response[:success]).to eq false
      expect(response[:data].first.count).to eq 2
      expect(response[:data].first['message']).to_not eq nil
      expect(response[:data].first['documentation_url']).to_not eq nil
    end
  end
end
