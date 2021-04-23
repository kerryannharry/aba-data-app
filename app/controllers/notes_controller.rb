class NotesController < ApplicationController
    def new
        @note = Note.new
        render :new
    end 

    def create
    end
end