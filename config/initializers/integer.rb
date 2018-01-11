# frozen_string_literal: true

class Integer
  def tax
    (self * 0.08).ceil
  end

  def tax_included
    (self * 1.08).ceil
  end
end
