class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # 以下を追記
  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small:"45x45>"}, storage: :s3, bucket: S3_BUCKET
  # validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :tweets
  has_many :comments
  has_many :messages

  has_attached_file :image, styles: { medium:"300x300>", thumb:"150x150>", small:"45x45>"},
  :storage =>:s3,
  :bucket => S3_BUCKET,
  :path => ":attachment/:id/:style.:extension",
  :url => ':s3_domain_url',
  :default_url => "no_image.jpg"






  # User.new.image(:small) => "/images/default_small_avatar.png"

  #:url  => "/brali-image/images/:id/:style/:extension"

  # validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg","image/png"]
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }




  # has_attached_file :image, styles: { medium:"300x300>", thumb:"150x150>", small:"45x45>"} :storage => :s3,
  # :s3_credentials => "#{Rails.root}/config/s3.yml",
  # :path => ":attachment/:id/:style.:extension"

# has_attached_file :avatar, styles: { medium:"300x300>", thumb:"150x150>", small:"45x45>"}
#

end
