require 'spec_helper'

describe Errnow do
  it 'has a version number' do
    expect(Errnow::VERSION).not_to be nil
  end

  context 'when configuration prepared' do
    let(:url)        { 'http://localhost/' }
    let(:app_id)     { 'my-app-id' }
    let(:access_key) { 'my-access-key' }
    let(:secret_key) { 'my-secret-key' }
    let(:debug)      { false }

    before do
      Errnow.configure do |config|
        config.url               = url
        config.app_id            = app_id
        config.access_key        = access_key
        config.secret_access_key = secret_key
        config.debug             = debug
      end
    end

    describe 'configuration is properly set' do
      it { expect(Errnow.config.url).to eq url }
      it { expect(Errnow.config.app_id).to eq app_id }
      it { expect(Errnow.config.access_key).to eq access_key }
      it { expect(Errnow.config.secret_access_key).to eq secret_key }
      it { expect(Errnow.config.debug).to eq debug }
    end
  end
end
