class CategoriesController < ApplicationController
    def index
        @categories =  Category.all 
    end

    def show
        @category = Category.find(params[:id])
        @journal_entries =  JournalEntry.all
    end

end
