class PreparationsController < ApplicationController
  def list
    @preparations = Preparation.all

    render("preparation_templates/list.html.erb")
  end

  def details
    @preparation = Preparation.where({ :id => params.fetch("id_to_display") }).first

    render("preparation_templates/details.html.erb")
  end

  def blank_form
    @preparation = Preparation.new

    render("preparation_templates/blank_form.html.erb")
  end

  def save_new_info
    @preparation = Preparation.new

    @preparation.name = params.fetch("name")

    if @preparation.valid?
      @preparation.save

      redirect_to("/preparations", { :notice => "Preparation created successfully." })
    else
      render("preparation_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @preparation = Preparation.where({ :id => params.fetch("id_to_prefill") }).first

    render("preparation_templates/prefilled_form.html.erb")
  end

  def save_edits
    @preparation = Preparation.where({ :id => params.fetch("id_to_modify") }).first

    @preparation.name = params.fetch("name")

    if @preparation.valid?
      @preparation.save

      redirect_to("/preparations/" + @preparation.id.to_s, { :notice => "Preparation updated successfully." })
    else
      render("preparation_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @preparation = Preparation.where({ :id => params.fetch("id_to_remove") }).first

    @preparation.destroy

    redirect_to("/preparations", { :notice => "Preparation deleted successfully." })
  end
end
