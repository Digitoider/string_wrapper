# frozen_string_literal: true

class StringWrapperPatternSpecifiedState
  attr_accessor :string_wrapper

  def initialize(string_wrapper)
    @string_wrapper = string_wrapper
  end

  def replace(pattern)
    string_wrapper.state = self
    string_wrapper
  end

  def with(substitute)
    string_wrapper.exec()
  end
end
