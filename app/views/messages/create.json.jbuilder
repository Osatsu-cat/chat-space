json.content @message.content
json.image @message.image
json.user @message.user.name
json.created_at @message.created_at.strftime("%Y/%m/%d %H:%M")