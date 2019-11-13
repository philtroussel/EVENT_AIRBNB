class VenuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true # anyone can create a venue
  end

  def show?
    return true # anyone can see a venue
  end

  def update?
    # see private
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    # user -- current_user from Devise
    # record -- @venue
    # if the venue.user is current_user then edit is allowed
    record.user == user # || user.admin
  end
end
