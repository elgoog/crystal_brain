# require "./crystal_brain/*"
require "./crystal_brain/version"
require "yaml"

require "./crystal_brain/weights"
require "./crystal_brain/nodes"
require "./crystal_brain/layer"
require "./crystal_brain/network"
## This fiel has not been fixed for Crystal yet
# require "./crystal_brain/trainer"
require "./crystal_brain/exception"
## This fiel has not been fixed for Crystal yet
# require "./crystal_brain/training_data_manipulator"


module CrystalBrain
  module Nodes end
  module Trainer end
  module Exception end
  module DataSet end
end
