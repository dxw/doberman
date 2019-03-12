module RepairsHelper
  def sorted_issue_types
    Repair.issue_types.sort do |a, b|
      if a[0] == 'other'
        1
      elsif b[0] == 'other'
        -1
      else
        a <=> b
      end
    end
  end
end
