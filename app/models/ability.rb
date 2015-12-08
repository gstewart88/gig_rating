class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new
    alias_action :read, :create, :to =>cread
    if user.role? :admin
      can :manage, :all
    elsif
      user.role?  :registered
      can :cread, :all
      can :update, Review
    else
      can :read, :all

    end
  end
end
