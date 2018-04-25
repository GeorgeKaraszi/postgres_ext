# frozen_string_literal: true

module ActiveRecord
  class Relation
    class WhereClause
      def modified_predicates(&block)
        WhereClause.new(predicates.map(&block))
      end
    end
  end
end
