require 'bundler/setup'
require 'yaml'
require 'pry'
require 'faker'

require_relative '../spec/swiping/spec_helper'

require_relative '../lib/elements/swipe_page'

require_relative '../env/env_config'

include SwipePage