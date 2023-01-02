RSpec.describe '/v1/projects' do
  describe 'GET /v1/projects/all_projects' do
    let!(:project) { create_list(:project, 3) }

    it 'get all projects' do

    end
  end

  describe 'POST /v1/projects/link_project' do

    context 'Link new project' do
      it 'with incorect value' do
        
      end

      it 'with correct value' do
        
      end

      it 'project not found' do

      end

      it 'project found' do
        
      end
    end

    context 'recalculate for exist project' do
      it 'calculate if data already exist' do

      end

      it 'calculate if exist new data' do

      end
    end
  end
end
