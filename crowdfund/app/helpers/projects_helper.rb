module ProjectsHelper

  def format_date(project)
    if project.has_expired?
      content_tag(:strong, "All Done!")
    else
      distance_of_time_in_words(Time.now, project.pledging_ends_on)
    end
  end

end
