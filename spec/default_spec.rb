require 'chefspec'

describe 'nginx_node::default' do
 let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

 it 'installs epel-release' do
       expect(chef_run) .  to install_package('nginx')
 end
 it 'installs nginx' do
       expect(chef_run) .  to install_package('nginx')
 end
 it 'creates a file' do
       expect(chef_run).to render_file('/usr/share/nginx/html/index.html')
 end
end
