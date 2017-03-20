module ApplicationHelper
  def markdown(text)
    return '' unless text.present?
    @options ||= {
        autolink: true,
        link_attributes: {rel: 'nofollow', target: "_blank"}
    }
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, @options)
    @markdown.render(text).html_safe
  end
end
