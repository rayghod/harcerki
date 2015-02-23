class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
        can :manage, :all
    elsif user.koordynator?
        can :read, Item
        can :create, Item
    elsif user.pracownik?
      can :manage, Order, ClientOrder
    elsif user.klient?
        can :read, Item
    else
        can :read, Item
    end
    
  end

end