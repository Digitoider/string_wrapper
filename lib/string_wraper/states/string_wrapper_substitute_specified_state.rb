# frozen_string_literal: true

class StringWrapperSubstituteSpecifiedState
  attr_accessor :string_wrapper

  def initialize(string_wrapper)
    @string_wrapper = string_wrapper
  end

  def replace(pattern)
    string_wrapper.exec()
  end

  def with(substitute)
    string_wrapper.state = self
    string_wrapper
  end
end
