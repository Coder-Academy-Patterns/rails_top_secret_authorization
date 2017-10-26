class DocumentPolicy < ApplicationPolicy
  def show?
    # If current user belongs to the same company as the document
    if user.company == record.company
      true
    else
      false
    end
  end

  def update?
    # If current user belongs to the same company as the document
    if user.company == record.company
      true
    else
      false
    end
  end
end