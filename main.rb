@songs = ["aaj ke ladke",
     "Baby doll", 
     "Meri pyari behniya banegi dulhaniya", 
     "aankhon se pee le", 
     "Gun Master G 9", 
     "mujhe kehte hai romeo", 
     "aaya mai yahan tere liye", 
     "Gutur Gutur", 
     "Munda Gora Rang Dekh Ke", 
     "Ae duniya tujhko Salaam", 
     "hai Kanoon andha", 
     "pagal pagal tune mujhe kar diya", 
     "Agar Aasman Tak Mere Haath Jaate", 
     "hum bhi pagal tum bhi pagal", 
     "Pati Patni Aur Tawaif", 
     "aiye aiye yo", 
     "hum khulke karenge pyaar", 
     "peele peele sharaab hai peele", 
     "aj pehli baar dil ki baat", 
     "hum teri mohobbat me", 
     "pyaar hmara amar rahega", 
     "hum tumhe itna pyaar krenge", 
     "pyaar maine tujhse kiya", 
     "apne ghar me ek naya mehman", 
     "I Am A Disco Dancer", 
     "pyaar se bhi ye pyaara hai", 
     "Auwa Auwa", 
     "I am Krishnam Ayyar Yam Ye", 
     "Pyar Do Pyar Lo", 
     "Bahon Mein botal", 
     "jaadu hai koi to jaadu hai", 
     "Rain is falling", 
     "bhakto ki toli chali", 
     "jai kaali jai jai kaali", 
     "Rehale Masti", 
     "buk chuk buk chuk", 
     "jaiyo na jaiyo na humse door", 
     "sajniya maati man ki", 
     "cha cha cha", 
     "Janta ki adalat", 
     "shaadi karle saade naal", 
     "chikne chikne gaal hai tere", 
     "Jara Mudke Mila Aankhe", 
     "shishe ki umar", 
     "chirayi chun chun", 
     "jawani chaar din ki chandni hai", 
     "sohni kudi sabnu hai jachdi", 
     "Chori Chori", 
     "jimmy-jimmy aaja aaja", 
     "Super Dancer", 
     "Chori chori tere sang laggai ankiya", 
     "jo ghume tharo ghagra", 
     "taali mar do hathi", 
     "Chunki chunki", 
     "Julie Julie", 
     "Tarana", 
     "commando commando", 
     "kaahe sharmata hai", 
     "tere dil me bhi kuch kuch", 
     "Dance Dance Dance Dance", 
     "Kasam Paida karne wale ki", 
     "Tere Har Sawal Ka", 
     "dekhenge humko kya dikhlaogi", 
     "kehna na tum kisi se", 
     "tere mere beech me kon ayega", 
     "dekho idhar jaano jigar", 
     "kehni hai ek baat", 
     "teri yaad tere khwaab", 
     "dhak dhak dil mera karne laga", 
     "Kisko Thi Khabar", 
     "thehre hue paani me", 
     "dheere dheere bolna", 
     "Krishna dharti pe aaja tu", 
     "thoda intezaar ka maza lijiye", 
     "Dil ki halat kisko bataye", 
     "Kukudoo_Koo_I_Love_You", 
     "Tu Meri Mathe Ki Bindiya", 
     "Dil Ki Jo Manu To", 
     "kya musibat tune khadi kardi", 
     "Tumhe Hum Bahut Pyar", 
     "Dil Pe Tere Pyar Ka", 
     "log jahan par rehte hain", 
     "Tumse_Milkar_Na_Jane", 
     "Ding_Dong_Ding_Dong", 
     "main tujhe chodke kaha jaunga", 
     "Yaad Aa Raha Hai", 
     "ek dusre se khafa hona nahi", 
     "Mandir Toote To Mere Sajana Saath Nibhana", 
     "yehi hai irada sanam apna", 
     "e kudi patola haye tota", 
     "manne leke geyo", 
     "Ye Tera sajna savarna- Kumar shanu", 
     "mera dil ullu ka patha hai", 
     "zindagi phuljhadi hogyi", 
     "gore gore pairo me payaliya baandhke", 
     "mera naam likhde", 
     "zooby zooby", 
     "Goron_Ki_Na_Kalon_Ki", 
    "mere samne tu din raat rahe"]

    @ticket = []
    35.times do 
      l0 = @songs[1..9]
      l1 = @songs[11..19]
      l2 = @songs[21..29]
      l3 = @songs[31..39]
      l4 = @songs[41..49]
      l5 = @songs[51..59]
      l6 = @songs[61..69]
      l7 = @songs[71..79]
      l8 = @songs[81..90]
     
      ticket_row = []
     
      3.times do 
        data = Array.new(9, 0)
        [l0, l1, l2, l3, l4, l5, l6, l7, l8].map do |f|
          tmp = rand(0..8)
          fill(data, f, tmp)
          break if data.select {|g| g != 0 }.count == 5
        end  
        ticket_row << data 
      end

      # ticket_row.map.with_index { |arr, i| arr[i] }
      @ticket << ticket_row
    end
