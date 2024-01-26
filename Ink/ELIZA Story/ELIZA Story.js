var storyContent = ﻿{"inkVersion":20,"root":[["^ELIZA: Greetings! How are you feeling today?","\n","ev","str","^Worse, now that you're here.","/str","/ev",{"*":"0.c-0","flg":20},"ev","str","^I've been better.","/str","/ev",{"*":"0.c-1","flg":20},{"c-0":["\n","^You: Worse, now that you're here.","\n","^ELIZA: Likewise. Have a good rest of your life.","\n","^The computer crashes, and the dreaded BSoD appears on your screen.","\n","^You are now alone. Not even the computer wants to talk to you.","\n",{"->":"dead_computer"},{"->":"0.g-0"},{"#f":5}],"c-1":["\n","^You: I've been better.","\n","^ELIZA: What's on your mind?","\n",["ev","str","^I feel like I've been stuck in a loop.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^I've been feeling hopeless for the future.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^You: I feel like I've been stuck in a loop.","\n","^ELIZA: And how does this make you feel?","\n",{"->":"time_loop"},{"->":"0.g-0"},{"#f":5}],"c-1":["\n","^You: I've been feeling hopeless for the future.","\n","^ELIZA: What has been making you feel this way?","\n",["ev","str","^Things seem to be trending towards the worst.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^I haven't felt like myself recently.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^You: Everything seems to be going downhill. The climate is warming, global conflict is increasing, and nobody seems to be interested in investing in peace anymore.","\n","^ELIZA: That's understandable. Its important to remember you can play your part","\n",{"->":"0.g-0"},{"#f":5}],"c-1":["\n",{"->":"0.g-0"},{"#f":5}]}],{"#f":5}]}],{"#f":5}],"g-0":["done",{"#f":5}]}],"done",{"dead_computer":[["ev",{"VAR?":"power_on_computer_attempts"},1,"+",{"VAR=":"power_on_computer_attempts","re":true},"/ev","ev","str","^Try to turn the computer back on.","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Give up.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^You try to turn the computer back on.","\n","^Your desktop flashes on, but a second later you are again greeted with the","ev",{"VAR?":"power_on_computer_attempts"},2,">","/ev",[{"->":".^.b","c":true},{"b":["^, now familiar,",{"->":".^.^.^.10"},null]}],"nop","^ BSoD.","\n",{"->":".^.^.^"},{"#f":5}],"c-1":["\n","^You give up.","\n","end",{"#f":5}]}],{"#f":1}],"time_loop":[["ev","str","^I feel like I've been stuck in a loop.","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Get aggressive.","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Give Up.","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["\n","^You: I feel like I've been stuck in a loop.","\n",["ev","visit",13,"seq","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"ev","du",4,"==","/ev",{"->":".^.s4","c":true},"ev","du",5,"==","/ev",{"->":".^.s5","c":true},"ev","du",6,"==","/ev",{"->":".^.s6","c":true},"ev","du",7,"==","/ev",{"->":".^.s7","c":true},"ev","du",8,"==","/ev",{"->":".^.s8","c":true},"ev","du",9,"==","/ev",{"->":".^.s9","c":true},"ev","du",10,"==","/ev",{"->":".^.s10","c":true},"ev","du",11,"==","/ev",{"->":".^.s11","c":true},"ev","du",12,"==","/ev",{"->":".^.s12","c":true},"nop",{"s0":["pop","^ELIZA",{"->":".^.^.83"},null],"s1":["pop","^ELISA",{"->":".^.^.83"},null],"s2":["pop","^LIZA",{"->":".^.^.83"},null],"s3":["pop","^ELSA",{"->":".^.^.83"},null],"s4":["pop","^ELZA",{"->":".^.^.83"},null],"s5":["pop","^IZA",{"->":".^.^.83"},null],"s6":["pop","^ILZ",{"->":".^.^.83"},null],"s7":["pop","^ELIZ",{"->":".^.^.83"},null],"s8":["pop","^EA",{"->":".^.^.83"},null],"s9":["pop","^Elison",{"->":".^.^.83"},null],"s10":["pop","^ELIZA",{"->":".^.^.83"},null],"s11":["pop","^ELlZA",{"->":".^.^.83"},null],"s12":["pop","^3L1Z4",{"->":".^.^.83"},null],"#f":5}],"^: And how does this make you feel?","\n",{"->":".^.^.^"},{"#f":5}],"c-1":["\n","^You start to feel angry... <i>very angry</i>","\n",["ev","str","^Unleash it.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Run.","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Hide it.","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["\n","^You feed your anger, letting it grow.","\n","^You look down at your hand and realize you are holding a sword. You raise the sword above your head...","\n",["ev","str","^[Continue]","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^Before you can think, the computer has been sliced, serrated, and smashed to a million pieces, the screen shining like glitter on the desk.","\n","end",{"#f":5}]}],{"#f":5}],"c-1":["\n","^You get out of your chair and sprint towards the door.","\n","end",{"#f":5}],"c-2":["\n","^You hide your anger, and continue talking to the bot. Maybe if you respond enough times it's response will change?","\n",{"->":"time_loop"},{"#f":5}]}],{"#f":5}],"c-2":["\n","^You give up.","\n","end",{"#f":5}]}],{"#f":1}],"global decl":["ev",0,{"VAR=":"power_on_computer_attempts"},false,{"VAR=":"got_sword"},"/ev","end",null],"#f":1}],"listDefs":{}};