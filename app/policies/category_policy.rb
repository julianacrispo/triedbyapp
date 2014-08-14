class CategoryPolicy < ApplicationPolicy
  #todo: edit policy so that only admins can create new categories.  
  #Currently Application policy reflects what the policy should be for reviews

  def index?
    #Both new visitors and users can view the category index
    true
  end

  def create?
    #user.role?(:admin)
  end

end