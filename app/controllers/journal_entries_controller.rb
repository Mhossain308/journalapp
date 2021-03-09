class JournalEntriesController < ApplicationController
    def index
        @journal_entries = JournalEntry.all
        @categories = Category.all
    end

    def show
        @journal_entry = JournalEntry.find(params[:id])
    end

    
    def new 
    @journal_entry = JournalEntry.new
    end
    
    # def create
    
    # end

    private

    # def journal_entry_params 
    #     params.require(:journal_entries).permit(:username, :password)
    #    end
    



end
