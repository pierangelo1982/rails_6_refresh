class Api::V1::CharactersController < ApplicationController
    #GET /api/v1/characters
    def index
        @characters = Character.all
        render json: @characters
    end

    #GET /api/v1/characters/:id
    #GET /api/v1/publishers/:id/characters
    def show
        @character = Character.find(params[:id])
        render json: @character, status: 200
    end

    # POST /api/v1/characters
    def create
        @character = Character.new(character_params)
        if @character.save
            render json: @character
        else
            render json: {error: "Non è stato possibile creare il Character"}, status: 400
        end
    end

    #PUT /api/v1/characters/:id
    def update
        @character = Character.find(params[:id])
        if @character
            @character.update(publisher_params)
            render json: {message: "Character aggiornato con successo"}, status: 200
        else
            render json: {error: "Character non presente, non è stato possibile aggiornarlo"}, status: 400
        end

    end

    #DELETE /api/v1/characters/:id
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
