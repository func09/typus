class Admin::AssetsController < Admin::ResourcesController

  layout :set_layout

  def index
    if params[:layout]
      add_resources_action("Add new", {:action => "new"}, {})
    end

    super
  end

  def new
    if params[:layout]
      add_resources_action("Back to list", {:action => "index"}, {})
    end

    super
  end

  def create
    if params[:layout]
      add_resources_action("Back to list", {:action => "index"}, {})
    end

    super
  end

  private

  def set_layout
    params[:layout] || "admin/base"
  end

end
