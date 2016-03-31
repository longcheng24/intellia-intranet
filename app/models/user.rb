class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  mount_uploader :photo, UserPhotoUploader

  has_many :events

	validates :first_name, :last_name, presence: true

	scope :human_resources, -> { where department: HUMANRESOURCES }
	scope :finance, -> { where department: FINANCE }
	scope :research_development, -> { where department: RESEARCH }

  HUMANRESOURCES	= 10
  FINANCE					= 20
  RESEARCH				= 30

  DEPARTMENT_NAMES = ['Human Resources', 'Finance', 'R&D']
  DEPARTMENT_VALUES = [HUMANRESOURCES, FINANCE, RESEARCH]

  def self.departments
  	DEPARTMENT_NAMES.map.with_index { | name, i | [ name, DEPARTMENT_VALUES[i] ] }
  end

  def self.department_name department_value
  	DEPARTMENT_NAMES[DEPARTMENT_VALUES.index department_value]
  end

  def self.department_value department_name
  	DEPARTMENT_VALUES[DEPARTMENT_NAMES.index department_name]
  end

  def human_resources?
  	department == HUMANRESOURCES
  end

  def finance?
  	department == FINANCE
  end

  def research_development?
  	department == RESEARCH
  end

  def user_dept
    if self.department == HUMANRESOURCES
      return 'Human Resources'
    elsif self.department == FINANCE
      return 'Finance'
    else
      return 'Research & Development'
    end
  end

  # def all?
  # 	department == 'All'
  # end

end
