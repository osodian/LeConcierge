class HotelBookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    record.trip.user == user
  end

  def create?
    record.trip.user == user
  end

  def show?
    record.trip.user == user
  end

  def destroy?
    record.trip.user == user
  end

  def update?
    record.trip.user == user
  end
end
