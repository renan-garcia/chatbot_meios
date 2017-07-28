# encoding: UTF-8
class AssistantController < ApplicationController
  def messenger
    question = params[:result][:parameters]['any']

    if question.include? "ranking"
      text = "1 - Renan Garcia, 2 - Nayara Valadares, 3 - Darci Rodrigues"
    else
      text = 'Comando não encontrado'
    end

    response =
    {
      "speech": text,
      "displayText": text,
      "data": "",
      "source": "Programming Assitant"
    }

    render json: response
  end
end
