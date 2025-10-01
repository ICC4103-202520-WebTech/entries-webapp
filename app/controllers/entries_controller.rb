class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  
  def index
    @entries = Entry.all
  end

  def show
  end
  
  def new
    @entry = Entry.new
  end

  def create
    entry = Entry.new entry_params
    if entry.save
      redirect_to entry_path(entry)
    else
      redirect_to new_entry_path
    end
  end

  def edit
  end

  def update
    if @entry.update entry_params
      redirect_to entry_path(@entry)
    else
      redirect_to edit_entry_path(@entry)
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_path
  end

  private
    # Strong parameters
    def entry_params
      params.require(:entry).permit(:title, :content)
    end

    def set_entry
      @entry = Entry.find params[:id]
    end
end
