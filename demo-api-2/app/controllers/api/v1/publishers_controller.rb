class Api::V1::PublishersController < ApplicationController

    #GET /api/v1/publishers
    def index
        @publishers = Publisher.all
        render json: @publishers, include: [:characters]
    end

    #GET /api/v1/publishers/:id
    def show
        @publisher = Publisher.find(params[:id])
        render json: @publisher, include: [:characters], status: 200
    end

    # POST /api/v1/publishers
    def create
        @publisher = Publisher.new(publisher_params)
        if @publisher.save
            render json: @publisher
        else
            render json: {error: "Non è stato possibile creare il Publisher"}, status: 400
        end
    end

    #PUT /api/v1/publishers/:id
    def update
        @publisher = Publisher.find(params[:id])
        if @publisher
            @publisher.update(publisher_params)
            render json: {message: "Publisher aggiornato con successo"}, status: 200
        else
            render json: {error: "Publisher non presente, non è stato possibile aggiornarlo"}, status: 400
        end

    end

    #DELETE /api/v1/publishers/:id
    def destroy
        @publisher = Publisher.find(params[:id])
        if @publisher
            @publisher.destroy
            render json: {message: "Publisher eliminato correttamente"}, status: 200
        else
            render json: {error: "Publisher non eliminato"}, status: 400
        end
    end

    private

    def publisher_params
        params.require(:publisher).permit(:name, :note)
    end
end
