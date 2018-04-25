# frozen_string_literal: true

module PostgresExt
  module ActiveRecord
    module Relation
      def modified_predicates(&block)
        ::ActiveRecord::Relation::WhereClause.new(predicates.map(&block), binds)
      end
    end
  end
end

ActiveRecord::Relation::WhereClause.prepend(PostgresExt::ActiveRecord::Relation)
