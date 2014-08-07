class Ability
  include CanCan::Ability

  def initialize(user_app)
    
      user_app ||= UserApp.new # guest user (not logged in)
      alias_action  :read ,  :update ,  :destroy ,  :to  =>  :rud
      alias_action :read, :update, :to => :readupdate
      if user_app.role == "colaborator"
        can :update, Colaborator, :colaborator_id => user_app.colaborator.id
        can :rud, HoursRegistration, :colaborator_id => user_app.colaborator.id
        can :create, HoursRegistration
      elsif user_app.role == "manager"
        can :update, HoursRegistration
        can :readupdate, HoursRegistration,  user_app.colaborator.subordinates.where(["id = ?", :colaborator_id]).first
        can :read, Colaborator, :manager_id => user_app.colaborator.id
      else
        cannot :read, :all
      end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
