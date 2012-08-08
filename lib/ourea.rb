class Ourea
  ACTION_KEYWORDS = ["show"]

  attr_reader :query, :parts, :actions

  def initialize(query)
    @query = query.downcase.split(" ")
    @actions = find_actions(@query)
  end

  def find_actions(queries)
    queries.select do |query|
      ACTION_KEYWORDS.include? query
    end
  end
end
