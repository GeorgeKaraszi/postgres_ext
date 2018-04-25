# frozen_string_literal: true

module ActiveRecord
  class Relation
    class Merger # :nodoc:
      def normal_values
        NORMAL_VALUES + [:with]
      end
    end
  end
end
