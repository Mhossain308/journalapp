class JournalEntriesController < ApplicationController
    def index
        @journal_entries = JournalEntry.all
        @categories = Category.all
    end

    def show
        @journal_entry = JournalEntry.find(params[:id])
       
    end

    
    def new 
        @categories = Category.all
        @journal_entry = JournalEntry.new
    end
    
    def create
        @journal_entry = JournalEntry.create(journal_entry_params)
        # need to find out why new form doesnt show
        redirect_to journal_entries_path
    end

    def edit
        @journal_entry = JournalEntry.find(params[:id])
    end

    def update
        @journal_entry = JournalEntry.find(params[:id])
        @journal_entry = JournalEntry.update(journal_entry_params)
        redirect_to journal_entry_path
    end

    def destroy
        @journal_entry = JournalEntry.find(params[:id])
        @journal_entry.destroy
        redirect_to categories_path
    end

    private

    def journal_entry_params 
        params.require(:journal_entry).permit(:user, :category, :content)
       end
    



end
