# frozen_string_literal: true

require 'spec_helper'

RSpec.describe StringWrapper do
  subject { StringWrapper }
  let(:substitute_specified_state) { StringWrapperSubstituteSpecifiedState }
  let(:pattern_specified_state) { StringWrapperPatternSpecifiedState }
  let(:initial_state) { StringWrapperInitialState }

  describe '.with' do
    context 'when initialize' do
      it 'state is initial' do
        str = subject.new
        expect(str.state).to be_an_instance_of(initial_state)
      end
    end

    context 'when pattern is not specified' do
      it 'returns StringWrapper instance' do
        str = subject.new('lo lo')
        expect(str.with('la')).to eq(str)
      end

      it 'state is substitute specified' do
        str = subject.new
        str.with('la')
        expect(str.state).to be_an_instance_of(substitute_specified_state)
      end
    end

    context 'when pattern is specified' do
      it 'replaces pattern with substitute' do
        str = subject.new('lo lo')
        expect(str.replace('lo').with('la')).to eq('la la')
      end
    end
  end

  describe '.replace' do
    context 'when substitute is not specified' do
      it 'returns StringWrapper instance' do
        str = subject.new('lo lo')
        expect(str.replace('lo')).to eq(str)
      end

      it 'state is pattern specified' do
        str = subject.new
        str.replace('la')
        expect(str.state).to be_an_instance_of(pattern_specified_state)
      end
    end

    context 'when substitute is specified' do
      it 'replaces pattern with substitute' do
        str = subject.new('la la')
        expect(str.with('lo').replace('la')).to eq('lo lo')
      end
    end
  end
end
