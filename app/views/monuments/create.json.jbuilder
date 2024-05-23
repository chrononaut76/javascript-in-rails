if @monument.persisted?
  json.inserted_item render(partial: 'monuments/form', locals: { monument: @monument }, formats: :html)
  json.form render(partial: 'monuments/monument', locals: { monument: Monument.new }, formats: :html)
else
  json.form render(partial: 'monuments/form', locals: { monument: @monument }, formats: :html)
end
