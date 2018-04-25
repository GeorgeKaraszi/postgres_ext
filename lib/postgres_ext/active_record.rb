# frozen_string_literal: true

require "active_record"
require "active_record/relation"
require "postgres_ext/active_record/relation"
require "postgres_ext/active_record/cte_proxy"

require "postgres_ext/active_record/5.x/query_methods"
require "postgres_ext/active_record/5.x/querying"

if ActiveRecord::VERSION::MAJOR >= 5
  if ActiveRecord::VERSION::MINOR >= 2
    require "postgres_ext/active_record/5.2/relation"
  else
    require "postgres_ext/active_record/5.0/relation"
  end
end
