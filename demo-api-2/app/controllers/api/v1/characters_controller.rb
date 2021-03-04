class Api::V1::CharactersController < ApplicationController
    # GET /api/v1/publishers/:id/characters
    def index
        @characters = Character.where(publisher: params[:publisher_id])
        render json: @characters
    end

    # GET /api/v1/publishers/:id/characters
    def show
        @character = Character.find(params[:id])
        render json: @character, status: 200
    end

    # POST /api/v1/publishers/:id/characters
    def create
        @character = Character.new(character_params)
        @character.publisher_id = params[:publisher_id]
        if @character.save
            render json: @character
        else
            render json: {error: "Non è stato possibile creare il Character"}, status: 400
        end
    end

    #PUT # GET /api/v1/publishers/:id/characters/:id
    def update
        @character = Character.find(params[:id])
        if @character
            @character.update(publisher_params)
            render json: {message: "Character aggiornato con successo"}, status: 200
        else
            render json: {error: "Character non presente, non è stato possibile aggiornarlo"}, status: 400
        end

    end

    #DELETE /api/v1/publishers/:id/characters/:id
    def destroy
        @character = Character.find(params[:id])
        if @character
            @character.destroy
            render json: {message: "Character eliminato correttamente"}, status: 200
        else
            render json: {error: "Character non eliminato"}, status: 400
        end
    end

    private

    def character_params
        params.require(:character).permit(:publisher_id, :name, :alias, :note, :evil)
    end

end
