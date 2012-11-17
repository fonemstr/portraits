Spree::BaseHelper.module_eval do
	def flash_messages
	  flash.each do |msg_type, text|
	    css = msg_type == :notice ? "success" : "error"
	    concat(content_tag :div, text, :class => "alert alert-#{css}") unless msg_type == :commerce_tracking
	  end
	  nil
	end

	def link_to_with_icon(icon_name, text, url, options = {})
        options[:class] = (options[:class].to_s + " icon_link with-tip #{icon_name}").strip
        options[:class] += ' no-text' if options[:no_text]
        options[:title] = text if options[:no_text]
        text = options[:no_text] ? '' : raw("<span class='text'>#{text}</span>")
        options.delete(:no_text)
        link_to(text, url, options)
      end

  def icon(icon_name)
    icon_name ? content_tag(:i, '', :class => icon_name) : ''
  end

  def button(text, icon_name = nil, button_type = 'submit', options={})
    button_tag(text, options.merge(:type => button_type, :class => "#{icon_name} button"))
  end

end
