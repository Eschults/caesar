class CaesarController < ApplicationController
  def home
    @start_time = Time.now
  end

  def decrypt
    end_time = Time.now
    text = params[:text]
    @start_time = Time.parse(params[:start_time])
    @decrypted_text = CipherService.new.decipher(text)
    @elapsed_time = end_time - @start_time
  end
end
