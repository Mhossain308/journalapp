class CategoriesController < ApplicationController
    def index
        @categories =  Category.all 
    end

    def show
        @category = Category.find(params[:id]) 
        @journal_entries = @category.journal_entries
    end

    # def update
    #     @category = Category.find(params[:id])
    #     @category = Category.update(category_params)
    # end

    # def delete
    #     @category = Category.find(params[:id])
    #     @category.destroy
    #     redirect_to categories_path
    # end

    private

    def category_params
        params.require(:category).permit(:name)
    end

end
