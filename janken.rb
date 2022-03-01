#戦わないを選んだときに処理を終わることができるように修正しました。レビューお願いします。
class Janken_hoi_duel
    
    def stand_by_phase
        
        @janken_judge = ""
    end   
    
    puts "つのまきじゃんけん"
    puts "じゃんけんぽん"
    def janken_phase
    sleep(2)
        puts "0(ぐー)1(ちょき)2(ぱー)3(たたかわない)"
        player_hand = gets.to_i
        program_hand = rand(0..2)
        jankens = ["ぐー", "ちょき", "ぱー","たたかわない"]
        puts "あなたの手：#{jankens[player_hand]}"
        puts "相手の手  ：#{jankens[program_hand]}"

        win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        draw = player_hand == program_hand
        surrender = player_hand == 3
        
        if draw
            puts "あいこです。"
            puts "もう一度。"
            @janken_judge = "draw"
        
        elsif surrender
            puts "サレンダーした。"
            @janken_judge = "surrender"
        
        elsif win
            puts "あなたはじゃんけんに勝ちました。"
            @janken_judge = "win"
        else 
            puts "あなたはじゃんけんに負けました。"
            @janken_judge = "lose"
        end  
    
    if @janken_judge == "draw"
        janken_phase
    
    elsif @janken_judge == "surrender"
        
        
        
    elsif @janken_judge == "win"
        puts "あっち向いてほい"
        puts "0(ひだり) 1(みぎ) 2(うえ) 3(した)"
        win_my_selected_finger = gets.to_i
        lose_cpu_selected_neck = rand(4)
        
        win_my_choices = ["ひだり", "みぎ", "うえ", "した"]
        
        if win_my_selected_finger == lose_cpu_selected_neck
            puts "あなたが指さす方向：#{win_my_choices[win_my_selected_finger]}"
            puts "相手が向いた方向  ：#{win_my_choices[lose_cpu_selected_neck]}"
            puts "あっちむいてほいの勝負であなたの勝ちです。"
        
        else
            puts "あなたが指さす方向：#{win_my_choices[win_my_selected_finger]}"
            puts "相手が向いた方向  ：#{win_my_choices[lose_cpu_selected_neck]}"
            puts "あっちむいてホイの勝負がつかない。"
            puts "じゃんけんのやり戻し。"
            janken_phase
        
        end        

        
    else @janken_judge == "lose"
        puts "あっちむいてほい"
        puts "あなた  ：0(ひだり) 1(みぎ) 2(うえ) 3(した)"
        lose_my_selected_neck = gets.to_i
        win_cpu_selected_finger = rand(4)
        
        lose_cpu_choices = ["ひだり", "みぎ", "うえ", "した"]
        
        if lose_my_selected_neck == win_cpu_selected_finger
            puts "あなたが向いた方向：#{lose_cpu_choices[lose_my_selected_neck]}"
            puts "相手が指さした方向  ：#{lose_cpu_choices[win_cpu_selected_finger]}"
            puts "あっち向いてホイの勝負であなたの負けです。"
        
        else
            puts "あなたが向いた方向：#{lose_cpu_choices[lose_my_selected_neck]}"
            puts "相手が指さした方向  ：#{lose_cpu_choices[win_cpu_selected_finger]}"
            puts "あっち向いてホイの勝負がつかない。"
            puts "じゃんけんのやり戻し"
            janken_phase
      
        end    
    end
    end

end
janken_hoi_game_ruby = Janken_hoi_duel.new
janken_hoi_game_ruby.janken_phase
