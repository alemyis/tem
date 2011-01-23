module ApplicationHelper
end


class MyLinkRenderer < WillPaginate::ViewHelpers::LinkRenderer
  def prepare(collection, options, template)
    super
    @options[:container] = false
  end

  protected

    def pagination
      items = (1..total_pages).to_a
      items.unshift(:previous_page) if @collection.previous_page
      items.push(:next_page) if @collection.next_page
      items
    end

    def page_number(page)
      unless page == current_page
        #tag(:span, link(tag(:i, 'O'), page, :title => "Page #{page}", :class => page == current_page ? "current" : nil))
        @template.image_submit_tag "/images/center.png", :title => "Page #{page}", :onclick => "javascript:window.location='#{@template.url_for :page => page}'"
      else
        #tag(:span, tag(:i, 'O'), :title => "Page #{page}")
        @template.image_submit_tag "/images/center_current.png", :title => "Page #{page}"
      end
    end

    def previous_page
      @template.image_submit_tag "/images/left.png", :class => 'previous_page', :onclick => "javascript:window.location='#{@template.url_for :page => @collection.previous_page}'"
    end

    def next_page
      @template.image_submit_tag "/images/right.png", :class => 'next_page', :onclick => "javascript:window.location='#{@template.url_for :page => @collection.next_page}'"
    end
end
