class Task < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :content, :user_id, message: 'Campo Obrigatorio'
	
	validates     :content_html, presence: true
	validates     :user_id, presence: true
	
     auto_html_for :content do
		html_escape
		image
		youtube(:width => "100%", :height => 250, :autoplay => false)
		link :target => "_blank", :rel => "nofollow"
		simple_format
	end
	
end
