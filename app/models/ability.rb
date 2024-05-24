class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user

    can :read, Product
    # can :manage, Product, :all
    
    if user.buyer?
      can :read, Product
    end

    if user.seller? || user.admin?
      can :manage, Product
    end

    if user.admin?
      can :manage, :all
    end

    cannot :create, Product if user.buyer?
  end
end
