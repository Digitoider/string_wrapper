# frozen_string_literal: true

class StringWrapper
  attr_accessor :wrapee, :state, :pattern, :substitute

  def initialize(wrapee)
    @wrapee = wrapee
    @state = StringWrapperInitialState.new(self)
  end

  def replace(pattern)
    pattern = pattern
    state.replace(pattern)
    # self
    # raise NotImplementedError
  end

  def with(substitute)
    substitute = substitute
    state.with(substitute)
    # self
    # raise NotImplementedError
  end

  def exec
    wrapee.gsub(pattern, substitute)
  end

  def to_s
    wrapee
  end
end

class StringWrapperPatternSpecifiedState
  attr_accessor :string_wrapper

  def initialize(string_wrapper)
    @string_wrapper = string_wrapper
  end

  def replace(pattern)

    # raise NotImplementedError
  end

  def with(substitute)
    string_wrapper.exec()
    # raise NotImplementedError
  end
end

class StringWrapperSubstituteSpecifiedState
  attr_accessor :string_wrapper

  def initialize(string_wrapper)
    @string_wrapper = string_wrapper
  end

  def replace(pattern)
    string_wrapper.exec()
    # raise NotImplementedError
  end

  def with(substitute)
    # raise NotImplementedError
  end
end

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