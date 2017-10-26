class DocumentPolicy < ApplicationPolicy
  def show?
    if user.company == record.company
      true
    else
      false
    end
  end
end