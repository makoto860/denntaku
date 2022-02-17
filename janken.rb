puts "じゃんけんぽん"
def janken
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  player_hand = gets.to_i
  program_hand = rand(4)

  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

if player_hand == program_hand
  puts "あいこです。"
  return true
elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
  puts "あなたはじゃんけんに勝ちました。"
  
  puts "自分が指をさす方向を決める。"
  def win_my_hoi_turn
    puts "0(うえをさす)\n1(したをさす)\n2(ひだりをさす)\n3(みぎをさす)"

    win_my_select_finger = gets.to_i
    lose_cpu_select_finger = rand(4)

    win_select_hoi_finger = ["うえ", "した","ひだり","みぎ"]
    puts "あなたがさした方向:#{win_select_hoi_finger[win_my_select_finger]}, 相手がむいた方向:#{win_select_hoi_finger[lose_cpu_select_finger]}"
    if win_my_select_finger == lose_cpu_select_finger
      puts "自分が勝ちました。"
     return false
    else
      puts "やり直し"
      return false
    end
  end
  next_game = true

  while next_game
    next_game = win_my_hoi_turn
  end
  return false

elsif
  player_hand == 3 || program_hand == 3
  puts "戦わないで終了する。"
  return false
    
else
  puts "あなたはじゃんけんに負けました。"
  
  puts "自分がむく方向を決める"
  def lose_cpu_hoi_turn
    puts "0(うえをむく)\n1(したをむく)\n2(ひだりをむく)\n3(みぎをむく)"

    lose_my_select_finger = gets.to_i 
    win_cpu_select_finger = rand(4)

    lose_select_hoi_finger = ["うえ", "した","ひだり","みぎ"]
    puts "あなたがむいた方向:#{lose_select_hoi_finger[lose_my_select_finger]}, 相手が指さす方向:#{lose_select_hoi_finger[win_cpu_select_finger]}"

    if lose_my_select_finger == win_cpu_select_finger
      puts "自分の勝ちです。"
      return false
    else
      puts "やり直し"
      return false
    end
  end
  next_game = true
  while next_game
    next_game = lose_cpu_hoi_turn
  end
  return false
end
end
next_game = true

while next_game
  next_game = janken
end


