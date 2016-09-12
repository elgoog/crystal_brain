

module RubyBrain
  module CrystalException

    class RubyBrainError < Exception
    end


    class DataDimensionError < RubyBrainError
    end

    class TrainingDataError < DataDimensionError
    end

  end
end
