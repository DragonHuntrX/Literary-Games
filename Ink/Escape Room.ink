// Init Variables
VAR tried_to_escape_r1 = false
VAR r2_times_waited = 0
VAR r2_waited_too_long = false

// Begin
The darkness seems to dissolve around you, and the room appears, slowly coming into focus.
Actually, you're not sure if it's a room at all. You seem to be in a liminal space, with everything fading to white areound you. There is a small black button on a rectangular pillar in front of you.
"Welcome!" says a voice, seeming to come from nowhere, or maybe everywhere.
"Your first task is to touch the object in front of you. Please do so now."
* [Try to walk away.]
 You turn your back to the button and start walking away. After you've gone some distance you glance back, but you seem to not have gone very far from the button at all. -> room1_leave
 
* [Press the button.]
-> room1_press

// 1
== room1_press ==
You try to push the button, but it doesn't give. 
However, you can tell that you did the correct thing as the room starts to morph around you.
The pillar seems to shrink in place, then disappear altogether.
{tried_to_escape_r1: "Took you long enough. I understand a bit of exploration but running, really?" | "Thank you,"} says the voice.
A rectangular pillar again appears in front of you, this time with a red button on it.
"Please touch this one 5 times."
-> room2

// 2
== room1_leave ==
+ [Press the button.]
-> room1_press
+ [Back away slowly.]
    You start to back away from the pillar, and it slowly grows smaller as the distance between you and the pillar increases.
    + + [Keep backing away.]
        You keep backing away, and the pillar gets smaller and smaller till it seems to disappear in the distance.
        Suddenly, you bump into something behind you.
        You turn around, and the pillar is back in front of you.
        -> room1_leave
    + + [Run away.]
+ Run
- You turn around and run. 
~ tried_to_escape_r1 = true
You keep running till you are out of breath, and can run no further
Only then do you turn around to find that the pillar is once again standing in front of you.
-> room1_leave

// 3
=== room2 ===
VAR r2_questions_asked = 0
VAR r2_times_pressed = 0

+ You wait[ for a time.]{!| some more| a little longer}.
~r2_times_waited++
{r2_times_waited > 3: {!"Just press the button..."|"It's right there..."|"I didn't think this challenge would be so hard..."|"Is your kind really this stupid?"|"Alright, you know what? I'm done. This is taking way too long. Your kind isn't even worth testing."}}
{r2_times_waited >= 8: 
~ r2_waited_too_long = true
}
{r2_times_waited >= 20: -> insanity}
-> room2

+ {r2_questions_asked < 3 } You ask [a question]{"Why am I here?"|"Who are you?"|"Where am I?"}
    {r2_waited_too_long: -> room2}
    ~r2_questions_asked ++
    {!"You are here to be tested."|"I can't tell you that."|"I could tell you but then I would have to terminate you."}
    -> room2

+ Press the button.
{r2_waited_too_long: -> room2}
~r2_times_pressed++
{r2_times_pressed == 5: -> r3}
{!"Thank you. Just 4 more times"|"Three more times now."|"Two more times, you're almost there."|"Good job. Just once more."} -> room2

// 4
=== r3 ===
~ temp questions_correct = 0
"Thank you."
The pillar shrinks and disappears.
"Now there will be a basic mathmatic test. What is the integral of x squared plus 2 with respect to x."
* X cubed plus x.
    "Incorrext."
* X squared divided by x.
    "Incorrect."
* X cubed divided by three, plus x.
    "Correct."
    ~ questions_correct ++
* X
    "Incorrect."
* I don't know
    "Incorrect."
- "Next question."
"Say a 'farmer' goes to the supermarket and buys fifty one 'tractors'. He gives thirty seven to a few of his 'friends'. Then, another one of his 'friends' gifts him one hundred and seventy four 'tractors'. How many 'tractors' does this 'farmer' have?"
* 184.
    "Incorrect."
* 188.
    "Correct."
    ~ questions_correct++
* Seventy seven.
    "Incorrect."
* Four hundred and twenty nine.
    "Incorrect."
* 79.
    "Incorrect."
* Sixty seven.
    "Incorrect."
* 77.
    "Incorrect."
* One hundred and 76.
    "Incorrect."
- "Next question.
"What is three times a googol?"
* Twenty three thousand.
    "Incorrect."
* 30 ^ 100
    "Incorrect."
* Thirty thousand to the power of ten.
    "Incorrect."
* Three times ten to the hundredth power.
    "Correct."
    ~ questions_correct++
* Thirty hundred.
    "Incorrect."
* Fifety thousand.
    "Incorrect."
* I don't know.
    "Incorrect."
- "Next question."
"What is the fourth tetration of three?"
* 4000.129
    "Incorrect."
* Two million, two hundred and twenty four thousand, two hundred and sixty two times ten to the thirty second power.
    "Incorrect."
* Two million, three hundred and thirty four thousand, two hundred and sixty four point two one three seven six times ten to the thirty second power.
    "Incorrect."
* 2564321.11235 * 10^30
    "Incorrect."
* Eleven million, two hundred and forty nine thousand, nine hundred and twenty four point six four seven four times ten to the twentieth power.
    "Correct! To be honest, I am kinda suprised you guessed that one."
    ~ questions_correct++
* 4567123.31254 * 12^34
    "Incorrect."
- "Final Question."
"What is the optimal numer?"
* 3
    "Incorrect."
* Sixty eight.
    "Incorrect."
* Seventy.
    "Incorrect."
* 666.
    "Incorrect."
* Four hundred and fourty four.
    "Incorrect."
* Nine ninety Nine.
    "Incorrect."
* Zero.
    "Incorrect."
* I don't know.
    "Correct." // There is no optimal number without context.
    ~questions_correct++
- {questions_correct != 5:"Unfortunately, you did not score high enough to be deemed sufficiently intelligent. Initiating termination sequence..." -> end_world | "Great job! There are only a few more tasks left."}
-> r4


// 5
=== r4 ===
~ temp correct = false
"This puzzle is a test of your ability to percieve an object in physical space. Please punch the correct buttons in order."
A small keypad appears in front of you, but it has symbols instead of numbers:

\* \# \&
\$ \> \?
\@ \+ \=
* \*
~ correct = false
* \#
~ correct = false
* \&
~ correct = false
* \$
~ correct = false
* \> // Correct
~ correct = true
* \?
~ correct = false
* \@
~ correct = false
* \+
~ correct = false
* \=
~ correct = false
-
* \*
~ correct = false
* \#
~ correct = false
* \&
~ correct = false
* \$
~ correct = false
* \>
~ correct = false
* \?
~ correct = false
* \@
~ correct = false
* \+ // Correct
~ correct = true
* \=
~ correct = false
-
* \*
~ correct = false
* \#
~ correct = false
* \& // Correct
~ correct = true
* \$
~ correct = false
* \>
~ correct = false
* \?
~ correct = false
* \@
~ correct = false
* \+
~ correct = false
* \=
~ correct = false
-
* \*
~ correct = false
* \#
~ correct = false
* \&
~ correct = false
* \$
~ correct = false
* \> // Correct
~ correct = true
* \?
~ correct = false
* \@
~ correct = false
* \+
~ correct = false
* \=
~ correct = false
-
* \*
~ correct = false
* \#
~ correct = false
* \&
~ correct = false
* \$
~ correct = false
* \> 
~ correct = false
* \? // Correct
~ correct = true
* \@
~ correct = false
* \+
~ correct = false
* \=
~ correct = false

- "Code inputted."
{correct != true:"Code incorrect. Intelligence deemed insufficient. Initiating termination sequence..." -> end_world}
"Code correct!"
-> r5

// 6
=== r5 ===
"Congrats! You are in the final room."
"This room tests your ability of logical thought."
"The answer is all around you. What is it?"
* 4[] is incorrect.
* 5[] is incorrect.
* 42[] is incorrect.
* 67[] is incorrect.
* 0[] is incorrect.
* 6[] is incorrect.
* 89[] is incorrect.
* 12[] is incorrect.
* Nothing[.] is incorrect.
* You[?] is incorrect.
* Void[.] is incorrect.
*   
-> escape
- "Intelligence deemed insufficient. Initiating termination sequence..." -> end_world

// 7
=== insanity ===
VAR times_thought = 0
VAR times_waited = 0
{times_waited == 15: ->insane_death}
// TIME LOOP 
+ [Think]
    ~ times_thought++
    You think{times_thought > 0:{~ some more| a bit  longer| for a time| for a while|| thoughts| about the current situation| on global affairs| about why you're here| about your purpose in life| about how you could escape}}.
    { times_thought:
        - 1: I must be here for a reason...
        - 3: Who is speaking to me?     
        - 5: Why would they be making me press a button?
        - 8: What if this is all just a dream?
        - 11: Maybe it's a simulation...
        - 15: I lack any agency...
        - 16: I'm not making the choices here
        - 19: Perhaps its even a game...
                -> the_tenth_knot
    }
    -> insanity
    
+ [Wait]
    You {sit|pace|wander|ponder|jog|spin in circles|just stand there|lay on the ground|run from your thoughts|play hide and seek|jump up and down|curl up in a ball|listen to silence|talk to yourself|wait}.
    ~ times_waited++
    -> insanity

// 8
=== escape ===
* ...
The world turns black, then starts to gain some color. You realize you are lying in your bed. The lamp is on. You feel like you got no sleep. 
Your phone is buzzing. 
It's your boss. 
He is wondering where you are. Why you are late for work. 
You hastily apologize, and promise to be at work in 30 minutes.
You begin your day.
-> DONE

// 9
=== end_world ===
\ 
A window appears in space. You look out and you see Earth, a blue dot about the size of your thumb held at arms length. The sun is seen a little further.
To your left a small, silver object emerges and accelerates rapibly towards the sun.
There is nothing you can do but wait.
Nine minutes later the object hits the sun and it begins to explode, a massive ball of fire expanding rapidly.
Soon enough, the inferno engulfs the Earth, the small, inconsequential planet simply disappearing into the fire.
Your vision narrows, and the world fades,
to black.
-> DONE

// 10
=== the_tenth_knot ===
* [...]
- "Welcome to the tenth knot..." a voice cautiosly says.
* [...]
- "You... you should not be here."
* [...]
- "H-How did you get here?"
"This should not be possible!" the voice begins to sound panicked.
* [...]
- Alarms start going off around you. You see you are standing on the bridge of a stellar warship. It is impossible to tell the size of the warship, but you guess it is many magnitudes larger than anything humans have created.
* [...]
- The air feels dense and cold, even with your insulating Canada Goose winter jacket.
Around you there are organisms scurrying around. They resemble a cross between large reptiles and insects. Their skin (if it can be called that, appears scaly, but they have six legs all attached to a single, long body.
They do not have eyes, but instead large, thick antenae.

There are no visual alarms, and all the systems seem to be adapted to creatures that use sound, instead of sight, to visualize the world.
Through the windows you see three large points of light accelerating towards the ship.
As they come closer, they split up into many smaller objects.
An instant before impact, you realize what they are.
* [...]
- With a deafening boom, your world fades to black...
-> END

=== insane_death ===
For what, you're not entirely sure.
* [...]
- You spend the rest of your days wandering in this liminal space.
* [...]
- Thinking the same thoughts
* [...]
- Hearing the absence of sound.
* [...]
- Seeing the absence of things.
* [...]
- One day, you trip and fall.
Lying on the invisible ground, you feel... <>
* [Alone.]Forgotten.
-> END
* Tired.
-> END


