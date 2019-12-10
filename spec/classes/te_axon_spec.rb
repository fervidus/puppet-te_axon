# frozen_string_literal: true

require 'spec_helper'

describe 'te_axon' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      let(:params) do
        {
          'package_source'   => 'http://potato',
          'registration_key' => 'potato1',
        }
      end

      it { is_expected.to compile }
    end
  end
end
