class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, UserPhotoUploader #AWS bucket: intellia-intranet, folder: profile_pics
  
	# scope :human_resources, -> { where department: HUMANRESOURCES }
	# scope :finance, -> { where department: FINANCE }
	# scope :research_development -> { where department: RESEARCH }
	# scope :all, -> { where department: ALL }

  # HUMANRESOURCES	= 10
  # FINANCE					= 20
  # RESEARCH				= 30
  # ALL 						= 40

  DEPARTMENT_NAMES = ['Human Resources', 'Finance', 'R&D']
  # DEPARTMENT_VALUES = [HUMANRESOURCES, FINANCE, RESEARCH, ALL]

  # def self.departments
  # 	DEPARTMENT_NAMES.map.with_index { | name, i | [ name, DEPARTMENT_VALUES[i] ] } 
  # end

  # def self.department_name department_value
  # 	DEPARTMENT_NAMES[DEPARTMENT_VALUES.index department_value]
  # end

  # def self.department_value department_name
  # 	DEPARTMENT_VALUES[DEPARTMENT_NAMES.index department_name]
  # end

  def human_resources?
  	department == 'Human Resources'
  end

  def finance?
  	department == 'Finance'
  end

  def research_development?
  	department == 'R&D'
  end

  # def all?
  # 	department == 'All'
  # end

end
