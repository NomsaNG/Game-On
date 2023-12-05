module ApplicationHelper
  module ApplicationHelper
    def user_avatar(user)
      if user.photo.present? && user.photo.key.present?
        cl_image_tag(user.photo.key, class: "avatar", alt: "user avatar")
      else
        # Path to your default avatar
        image_tag('default_avatar.png', class: "avatar", alt: "default avatar")
      end
    end
  end
end
