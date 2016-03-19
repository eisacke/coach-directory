class Search < ActiveRecord::Base
  def users
    @advancedResults ||= find_users
    @radiusResults = User.near("%#{location}%", radius)
    @users = @advancedResults + @radiusResults
    @users.uniq
  end

  private

  def find_users
    User.where(conditions)
  end

  def keyword_conditions
    ["users.first_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
  end

  def location_conditions
    ["users.location LIKE ?", "%#{location}%"] unless location.blank?
  end

  def conditions
    [conditions_clauses.join(' AND '), *conditions_options]
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
    private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end

end
