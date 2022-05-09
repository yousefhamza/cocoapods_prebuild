require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Prebuild do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ prebuild }).should.be.instance_of Command::Prebuild
      end
    end
  end
end

