module ApplicationHelper
  def block_to_partial(partial_name, options={}, &block)
    options.merge!(body: capture(&block))
    concat(render(partial: partial_name, locals: options))
  end

  def modal_form(modal_id, title, options={}, &block)
    block_to_partial('home/modal_form', options.merge(title: title, modal_id: modal_id), &block)
  end
end
