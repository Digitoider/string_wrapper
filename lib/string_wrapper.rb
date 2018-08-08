# frozen_string_literal: true

require 'string_wraper/states/string_wrapper_initial_state'
require 'string_wraper/states/string_wrapper_pattern_specified_state'
require 'string_wraper/states/string_wrapper_substitute_specified_state'

class StringWrapper < String
  attr_accessor :wrapee, :state, :pattern, :substitute

  def initialize(wrapee = '')
    @wrapee = wrapee.dup
    @state = StringWrapperInitialState.new(self)
  end

  def replace(pattern)
    @pattern = pattern
    state.replace(pattern)
  end

  def with(substitute)
    @substitute = substitute
    state.with(substitute)
  end

  def exec
    wrapee.gsub!(pattern, substitute)
    @state = StringWrapperInitialState.new(self)
    wrapee
  end

  def to_s
    wrapee
  end
end
