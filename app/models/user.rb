class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  mount_uploader :photo, UserPhotoUploader

  has_many :events

	validates :title, :first_name, :last_name, :department, :email, presence: true
  # validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@intelliatx\.com\z/, message: " must be an intelliatx.com account"}
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "must be in XXX-XXX-XXXX format" }
	scope :human_resources, -> { where department: HUMANRESOURCES }
  scope :finance, -> { where department: FINANCE }
  scope :research_development, -> { where department: RESEARCH }

  HUMANRESOURCES  = 10
  FINANCE         = 20
  RESEARCH        = 30
  CORPORATE       = 40

  DEPARTMENT_NAMES = ['Human Resources', 'Finance', 'Research and Development', 'Corporate']
  DEPARTMENT_VALUES = [HUMANRESOURCES, FINANCE, RESEARCH, CORPORATE]

  def self.departments
    DEPARTMENT_NAMES.map.with_index { | name, i | [ name, DEPARTMENT_VALUES[i] ] }
  end

  def self.department_name department_value
    DEPARTMENT_NAMES[DEPARTMENT_VALUES.index department_value]
  end

  def self.department_value department_name
    DEPARTMENT_VALUES[DEPARTMENT_NAMES.index department_name]
  end

  def department_name
    User.department_name department
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

  def research_corporate?
    department == CORPORATE
  end
end
