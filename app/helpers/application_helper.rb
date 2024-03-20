module ApplicationHelper
  def salutation_gender(gender)
    case gender
    when 'male'
      'Mr.'
    when 'female'
      'Ms.'
    else
      ''
    end
  end
end
