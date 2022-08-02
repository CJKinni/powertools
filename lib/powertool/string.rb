# frozen_string_literal: true

# Extensions to Ruby's String class
class String
  def titleize
    # This is an alternative to the rails Tileize which removes hyphens, which
    # in all cases, including the "X Men" => "X Men" example in the rails docs.
    # See: https://apidock.com/rails/v6.1.3.1/String/titleize
    humanize.gsub(/\b('?[a-z])/) { Regexp.last_match(1).capitalize }
  end
end
