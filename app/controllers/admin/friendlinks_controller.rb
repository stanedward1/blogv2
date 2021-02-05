module Admin
  class Admin::FriendlinksController < ApplicationController
    before_action :set_friendlink, only: %i[ show edit update destroy ]

    # GET /friendlinks or /friendlinks.json
    def index
      @friendlinks = Friendlink.all
    end

    # GET /friendlinks/1 or /friendlinks/1.json
    def show
    end

    # GET /friendlinks/new
    def new
      @friendlink = Friendlink.new
    end

    # GET /friendlinks/1/edit
    def edit
    end

    # POST /friendlinks or /friendlinks.json
    def create
      @friendlink = Friendlink.new(friendlink_params)

      respond_to do |format|
        if @friendlink.save
          format.html { redirect_to @friendlink, notice: "Friendlink was successfully created." }
          format.json { render :show, status: :created, location: @friendlink }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @friendlink.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /friendlinks/1 or /friendlinks/1.json
    def update
      respond_to do |format|
        if @friendlink.update(friendlink_params)
          format.html { redirect_to @friendlink, notice: "Friendlink was successfully updated." }
          format.json { render :show, status: :ok, location: @friendlink }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @friendlink.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /friendlinks/1 or /friendlinks/1.json
    def destroy
      @friendlink.destroy
      respond_to do |format|
        format.html { redirect_to friendlinks_url, notice: "Friendlink was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendlink
      @friendlink = Friendlink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendlink_params
      params.require(:friendlink).permit(:subject, :picture, :name, :url)
    end
  end
end
