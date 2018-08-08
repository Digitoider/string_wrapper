# frozen_string_literal: true

class StringWrapperInitialState
  attr_accessor :string_wrapper

  def initialize(string_wrapper)
    @string_wrapper = string_wrapper
  end

  def replace(pattern)
    string_wrapper.state = StringWrapperPatternSpecifiedState.new(string_wrapper)
    string_wrapper
  end

  def with(substitute)
    string_wrapper.state = StringWrapperSubstituteSpecifiedState.new(string_wrapper)
    string_wrapper
  end
end
