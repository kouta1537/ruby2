            def janken
            puts "あっちむいてホイをします。じゃんけん..."
            puts "0（グー）1（チョキ）2（パー）3(戦わない)"

            player_hand = gets.to_i
            puts "ポン！"

            puts "-------------"

            program_hand = rand(3)

            if player_hand > 2
                puts "じゃんけんが放棄されました。ゲームを終了します "
                return false
            end

            jankens=["グー","チョキ","パー","戦わない"]

            puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"

            puts "-------------"

            if player_hand == program_hand
                puts "あいこで..."
                return [true,nil]

            elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
                puts "勝ちです。あっちむいて..."
                return [true,true]

            else
                puts "負けです。あっちむいて..."
                return [true,false]
            end
            end

            def attimuite_hoi(janken_result)
                puts "0（上）","1（下）","2（左）","3（右）"
                player_direction = gets.to_i
            puts "ほい！"

            puts "-------------"

            program_direction = rand(4)

            if player_direction > 3
                puts "0~3で入力"
                return true
            end

            directions=["上","下","右","左"]

            puts "あなた:#{directions[player_direction]}\n相手:#{directions[program_direction]}"

            puts "-------------"

            if player_direction == program_direction
                if janken_result 
                    puts "あなたの勝ちです" 
                    return false
                else
                    puts  "あなたの負けです"
                    return false  
                end
            else
                puts "もう一回"
                return true
            end
            end
        
    
            next_game = true
            janken_flag = true
            janken_win = true

            while next_game
                if janken_flag
                    result,janken_win = janken
                    next_game = result
                    if next_game
                    janken_flag = janken_win.nil?
                    end
                else
                    next_game = attimuite_hoi(janken_win)
                end
            end


    





    