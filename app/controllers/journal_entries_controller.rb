class JournalEntriesController < ApplicationController
    def index
        @journal_entries = JournalEntry.all
        @categories = Category.all
    end

    def show
        @journal_entry = JournalEntry.find(params[:id])
        # @categories = @JournalEntry.categories
    end

    
    def new 
        @categories = Category.all
        @journal_entry = JournalEntry.new
    end
    
    def create
        @journal_entry = JournalEntry.create(journal_entry_params)
        redirect_to journal_entries_path
    end

    def update
        @journal_entry = JournalEntry.find(params[:id])
        @journal_entry = JournalEntry.update(journal_entry_params)
    end

    def delete
        @journal_entry = JournalEntry.find(params[:id])
        @journal_entry.destroy
        redirect_to 
    end

    private

    def journal_entry_params 
        params.require(:journal_entry).permit(:user, :category, :content)
       end
    



end
