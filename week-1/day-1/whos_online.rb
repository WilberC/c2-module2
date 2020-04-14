def who_is_online(friends)
  return {} if friends.empty?
  online = []
  offline = []
  away = []
  friends.each do |friend|
    user_name = friend["username"]
    if friend["status"] == 'offline'
      offline.push(user_name)
    else
      if friend["last_activity"] > 10
        away.push(user_name)
      else
        online.push(user_name)
      end
    end
  end
  final_response = {}
  unless online.empty?
    final_response.store("online", online)
  end
  unless offline.empty?
    final_response.store("offline", offline)
  end
  unless away.empty?
    final_response.store("away", away)
  end
  final_response
end

puts who_is_online(friends)