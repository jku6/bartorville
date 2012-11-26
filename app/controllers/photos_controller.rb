class PhotosController < ApplicationController
    def index
        @photos = Photo.where(:user_id => @auth) # only shows user photos
    end

    def show
        photo_id = params[:id]
        @photo = Photo.find(photo_id)
    end

    def new
        @photo = Photo.new
    end

    def edit
        @photo = Photo.find(params[:id])
    end

    def create
        @auth.photos << Photo.create(params[:photo])
        redirect_to photos_path
    end

    def primary
        old = Photo.where(:is_primary => true).first
        if old
            old.is_primary = false
            old.save
        end

        photo = Photo.find(params[:id])
        photo.is_primary = true
        photo.save

        redirect_to photos_path
    end

    def update
        @photo = Photo.find(params[:id])
        if @photo.update_attributes(params[:photo])
            redirect_to @photo
        else
            render :edit    
        end
    end

    def destroy
        photo = Photo.find(params[:id])
        photo.delete
        redirect_to photos_path
    end
end