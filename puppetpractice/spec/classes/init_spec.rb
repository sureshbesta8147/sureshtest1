require 'spec_helper'
describe 'puppetpractice' do
  context 'with default values for all parameters' do
    it { should contain_class('puppetpractice') }
  end
end
