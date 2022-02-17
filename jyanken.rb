puts "つのまきじゃんけんに負けた"
puts "相手が先に指をさします"
def lose_cpu_hoi_turn
  puts "4(うえを向く)\n5(したを向く)\n6(ひだりを向く)\n7(みぎを向く)"

  win_cpu_selected_finger = gets.to_i
  lose_my_selected_finger = rand(4)

  lose_selectted_hoi_turn = ["うえ","した","ひだり","みぎ"]
  puts "あなたがむいた方向:#{game_hoi2[win_cpu_finger2]}, 相手が指をさした方向:#{game_hoi2[lose_my_finger2]}"

  if win_cpu_finger2 == lose_my_finger2
    puts "あなたの負けです"
    return false
  
  else
    puts "じゃんけんにもどる"
    return false
  end
  
end #def def cpu_win_hoi2



next_game = true

while next_game
  next_game = cpu_win_hoi2
end


