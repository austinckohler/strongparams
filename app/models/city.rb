class City < ApplicationRecord
    #this is a custom validation, which you will rarely need for the scope of your apps while in the program
    #however, it is good to know this is available to you
    
    ### before_save :greater_than_zero ###
    
    # also, there are validations that are pre-defined for nearly any case you may come up against
    # this example of a custom validation from me was redundant, because Rails already has one defined, shown
    # below under the name and state presence validations
  
    #standard validation syntax: validates :#{attribute}, #{validation (presence, length, etc)}: #{value testing against}
    validates :name, :state, presence: true
    # validates :crimes_per_capita, numericality: {greater_than: 0}
  
    # using pre-defined validations will allow you to avoid having to manually define errors that should accompany
    # the validations
  
  
    # private
  
    # you CAN define custom validations here, though most use cases you will run up against will be accounted
    # for and pre-defined for you to simply use out of the box -- RAILS!!!!
  
    # def greater_than_zero
    #   if self[:crimes_per_capita] < 0
    #     throw abort
    #   end
    # end
  end