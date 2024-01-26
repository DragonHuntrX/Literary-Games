VAR power_on_computer_attempts = 0

ELIZA: Greetings! How are you feeling today?
*[Worse, now that you're here.]
You: Worse, now that you're here.
ELIZA: Likewise. Have a good rest of your life.
The computer crashes, and the dreaded BSoD appears on your screen. 
You are now alone. Not even the computer wants to talk to you.
-> dead_computer
    
*[I've been better.]
You: I've been better.
ELIZA: What's on your mind?

** [I feel like I've been stuck in a loop.]
You: I feel like I've been stuck in a loop.
ELIZA: And how does this make you feel?
-> time_loop

** [I've been feeling hopeless for the future.]
You: I've been feeling hopeless for the future.
ELIZA: What has been making you feel this way?
*** [Things seem to be trending towards the worst.]
You: Everything seems to be going downhill. The climate is warming, global conflict is increasing, and nobody seems to be interested in investing in peace anymore.
ELIZA: That's understandable. Its important to remember you can play your part
*** [I haven't felt like myself recently.]



=== dead_computer ===
~ power_on_computer_attempts++
+ [Try to turn the computer back on.]
You try to turn the computer back on.
Your desktop flashes on, but a second later you are again greeted with the{power_on_computer_attempts > 2:, now familiar,} BSoD.
    -> dead_computer
* [Give up.]
You give up.
-> END

=== time_loop ===
+ [I feel like I've been stuck in a loop.]
You: I feel like I've been stuck in a loop.
{~ELIZA|ELISA|LIZA|ELSA|ELZA|IZA|ILZ|ELIZ|EA|Elison|ELIZA|ELlZA|3L1Z4}: And how does this make you feel?
-> time_loop
* [Give Up.]
You give up.
-> END
* [Get aggressive.]
You start to feel angry... <i>very angry</i>
-> END



