class TextsController < ApplicationController
  def index
    @texts = Text.all
  end
end
