class Ability
  include CanCan::Ability

  def initialize(contaAtual)
    contaAtual ||= Conta.new #visitante
    
    if contaAtual.perfil_id = 2
      can :manage,:all
    else
      
      #Regras de Evento
      can :create, Evento
      can :read, Evento
      can :update, Evento do |evento|
        evento.try(:usuario) == contaAtual.usuario
      end
      can :delete, Evento do |evento|
        evento.try(:usuario) == contaAtual.usuario
      end
      
      #Regras de Conta
      can :create, Conta
      can :read, Conta
      can :update, Conta do |conta|
        conta.try(:usuario) == contaAtual.usuario
      end
      can :delete, Evento do |evento|
        conta.try(:usuario) == contaAtual.usuario
      end
      
      #Regras Cidade/Estado
      can :read,Cidade
      can :read,Estado
      
      
    end
    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities    
    
  end
end
