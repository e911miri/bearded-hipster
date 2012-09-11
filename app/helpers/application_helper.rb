module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "babs"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def current_doctor
    return Doctor.first
  end
  
  def current_patient
    return Patient.first
  end
end
