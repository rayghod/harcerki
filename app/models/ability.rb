class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
        can :manage, :all
    elsif user.coordinator?
        can :read, Item
        can :create, Item
        can :update, Item do |item|
            item.try(:user) == user
        end
        can :destroy, Item do |item|
            item.try(:user) == user
        end
    elsif user.client?
        can :read, Item
    else
        can :read, Item
    end
    
  end

end