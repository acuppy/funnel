require 'spec_helper'
require 'gravatar'

shared_examples_for 'a gravatar url' do
  it { expect(subject.url(email)).to eq proper_gravatar_url }
end

describe Gravatar do
  describe 'retrieving proper url' do
    let(:email) {
      'foo@example.com'
    }
    let(:hashed_email) {
      Digest::MD5.hexdigest email
    }
    let(:proper_gravatar_url) {
      "http://www.gravatar.com/avatar/#{hashed_email}"
    }

    it_behaves_like 'a gravatar url'

    xdescribe 'case-insensitivity' do
      let(:email) { 'FOO@example.com' }
      it_behaves_like 'a gravatar url'
    end
  end
end
