# frozen_string_literal: true

module PostgresExt
  module ActiveRecord
    module Querying
      delegate :with, :ranked, to: :all

      def from_cte(name, expression)
        cte_proxy = CTEProxy.new(name, self)
        relation = ActiveRecord::Relation.new(cte_proxy, cte_proxy.arel_table, expression.predicate_builder)
        relation.with(name => expression)
      end
    end
  end
end

ActiveRecord::Querying.prepend(PostgresExt::ActiveRecord::Querying)
