class Api::V1::CharactersController < ApplicationController

    # GET /characters
    def index 
        @characters = Character.where(publisher: params[:publisher_id])
        render json: @characters
    end

    # GET /characters/:id
    def show
        @fact = Character.find(params[:id])
        render json: @fact
    end

    # POST /characters
    def create
        @character = Character.new(character_params)
        @character.publisher_id = params[:publisher_id]
        if @character.save
            render json: @character
        else
            render json: {error: "Enable to create Character "}, status: 400
        end
    end

    # PUT /characters/:id
    def update
        @character = Character.find(params[:id])
        if @character
            @character.update(character_params)
            render json: {message: "Character sucessfully update" }, status: 200
        else
            render json: {error: "Unable to update Character "}, status: 400
        end
    end

    # DELETE /characters/:id
    def destroy
        @character = Character.find(params[:id])
        if @character
            @character.destroy
            render json: {message: "Character succesfully delete"}, status: 200
        else
            render json: {error: "Unable to delete Character" }, status: 400
        end
    end

    private

    def character_params
        params.require(:character).permit(:publisher_id, :name, :alias, :description, :evil)
    end
    
    def find_character
        @character = Character.find(params[:id])
    end

end
