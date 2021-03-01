class Api::V1::PublishersController < ApplicationController

    # GET /publishers
    def index 
        @publishers = Publisher.all
        render json: @publishers, include: ['characters']
    end

    # GET /publushers/:id
    def show
        @publisher = Publisher.find(params[:id])
        render json: @publisher
    end

    # POST /publishers
    def create
        @publisher = Publisher.new(publisher_params)
        
        if @publisher.save
            render json: @publisher
        else
            render json: {error: "Enable to create Publisher." }, status: 400
        end
    end

    # PUT /publishers/:id
    def update
        @publisher = Publisher.find(params[:id])
        
        if @publisher
            @publisher.update(publisher_params)
            render json: {message: "Publisher succesfully update" }, status: 200
        else
            render json: {error: "Unable to update Publisher" }, status: 400
        end
    end

    # DELETE /publishers/:id
    def destroy
        @publisher = Publisher.find(params[:id])
        if @publisher
            @publisher.destroy
            render json: {message: "Publisher succesfully delete"}, status: 200
        else
            render json: {error: "Unable to delete Publisher" }, status: 400
        end
    end

    private

    def publisher_params
        params.require(:publisher).permit(:name, :description)
    end

end
