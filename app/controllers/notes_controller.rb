class NotesController < ApplicationController
    def new
        @note = Note.new
        render :new
    end 

    def create
        @note = Note.create(new_note_params)
    end



    private
    def new_note_params
    end
end