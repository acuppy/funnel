require 'rails_helper'

describe User, type: :model do
  describe 'fullname' do
    subject { described_class.new firstname: firstname, lastname: lastname }

    context 'with both a first and last name' do
      let(:firstname) { 'foo' }
      let(:lastname)  { 'bar' }
      let(:fullname)  { 'foo bar' }

      it { expect(subject.fullname).to eq fullname }
    end

    context 'with both a first only' do
      let(:firstname) { 'foo' }
      let(:lastname)  { nil }
      let(:fullname)  { 'foo' }

      it { expect(subject.fullname).to eq fullname }
    end

    context 'with both a last only' do
      let(:firstname) { nil }
      let(:lastname)  { 'bar' }
      let(:fullname)  { 'bar' }

      it { expect(subject.fullname).to eq fullname }
    end
  end
end
