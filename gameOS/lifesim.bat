@echo off
goto app.moose.start
:app.moose.start
cls
title Welcome to Life Simulator
echo Welcome to Life Simulator!
echo.
echo A Moose Games Production.
echo Built for gameOS.
pause
goto app.moose.lvl1
:app.moose.lvl1
cls
title Life Simulator
echo You haven't been born yet. You are watching your parents make you.
echo Your parents, Janice and Carl are having a baby in the bedroom.
echo.
echo Press 1 and then enter for your parents to give up.
echo Press 2 and then enter for your parents to keep trying.
set /p input=
if %input% == 1 goto app.moose.lvl1.death
if %input% == 2 goto app.moose.lvl1.birth
:app.moose.lvl1.death
cls
title Life Simulator
echo BAD ENDING: Your parents gave up on you. You will not be born.
echo.
echo Press 1 and then enter to retry.
echo Press 2 and then enter to exit.
set /p input=
if %input% == 1 goto app.moose.lvl1
if %input% == 2 goto app.moose.exit
:app.moose.lvl1.birth
cls
title Life Simulator
echo Your parents have finished having sex in the bedroom.
echo.
echo Press 1 and then enter if you are ready to be born.
echo Press 2 and then enter if you are not ready to be born.
set /p input=
if %input% == 1 goto app.moose.lvl2
if %input% == 2 goto app.moose.lvl1.death
:app.moose.lvl2
cls
title Life Simulator
echo Your parents are in the hospital, you can hear the doctor shouting "PUSH!".
echo.
echo Press 1 and then enter if you are ready to be born.
echo Press 2 and then enter if you are not ready to be born.
set /p input=
if %input% == 1 goto app.moose.lvl2.continue
if %input% == 2 goto app.moose.lvl2.death
:app.moose.lvl2.death
cls
title Life Simulator
echo BAD ENDING: You were not born. Your parents are sad.
echo.
echo Press 1 and then enter to retry.
echo Press 2 and then enter to exit.
set /p input=
if %input% == 1 goto app.moose.lvl1
if %input% == 2 goto app.moose.exit
:app.moose.lvl2.continue
cls
title Life Simulator
echo You have been born! Your parents are happy.
echo.
echo Your parents are deciding what to name you.
echo.
echo Type the name you would like to be called and then press enter.
set /p name=
pause
cls
echo Your parents have decided to name you %name%.
echo.
echo Press 1 and then enter to continue.
set /p input=
if %input% == 1 goto app.moose.lvl3
:app.moose.lvl3
cls
title Life Simulator
echo You are now 1 year old.
echo.
echo Your parents are deciding what school to put you in.
echo.
pause
cls
title Life Simulator
echo Your parents have decided to put you in a public school because it is free.
echo.
echo Press 1 and then enter to continue.
set /p input=
if %input% == 1 goto app.moose.lvl4
:app.moose.lvl4
cls
title Life Simulator
echo It is your first day at Sweepy School.
echo.
echo You're in the assembly hall with all the other students starting nursery with your parents.
echo.
echo The nursery manager is talking about how you will be taught. She is saying that "Our pupils here at Sweepy School will be successful, and when they're 5 years old, they will be able to succeed in Primary School"
echo She is also saying that "Our pupils will be able to succeed in Secondary School, and then they will be able to succeed in University."
echo.
echo The nursery manager has high expectations over everyone in this school.
echo.
echo Press 1 and then enter to continue.
set /p input=
if %input% == 1 goto app.moose.lvl5
:app.moose.lvl5
cls
title Life Simulator
echo The assembly has finished, and you are now in your classroom, with your teacher Miss Jenny.
echo.
echo Miss Jenny is saying that "Today, we will be learning about the alphabet."
echo.
echo Miss Jenny is saying that "The alphabet is a set of letters that we use to make words."
echo.
echo Miss Jenny is saying that "The alphabet is made up of 26 letters."
echo.
echo Miss Jenny is saying that "The alphabet is made up of 5 vowels and 21 consonants."
echo.
echo Miss Jenny is saying that "The vowels are A, E, I, O and U."
echo.
echo Miss Jenny is saying that "The consonants are B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y and Z."
echo.
echo Miss Jenny is saying that "The alphabet is used to make words."
echo.
echo Miss Jenny is saying that "Words are used to make sentences."
echo.
echo OPTION:
echo Press 1 and then enter to ask Miss Jenny a question.
echo Press 2 and then enter to ask Miss Jenny how you were made.
set /p input=
if %input% == 1 goto app.moose.lvl5.question
if %input% == 2 goto app.moose.lvl5.question2
:app.moose.lvl5.question
cls
title Life Simulator
echo You have asked Miss Jenny what her favourite word is.
echo.
echo Miss Jenny is saying that "My favourite word is 'alphabet'."
echo.
echo Miss Jenny is saying that "I like the word 'alphabet' because it is the word that I use to teach my pupils about the alphabet."
echo.
echo OPTION:
echo Press 1 and then enter to continue.
set /p input=
if %input% == 1 goto app.moose.lvl6
:app.moose.lvl5.question2
cls
title Life Simulator
echo You have asked Miss Jenny how you were made.
echo.
echo Miss Jenny didn't know how to respond to the question and she was stuttering and saying "I-I, I don't know."
echo Miss Jenny is saying that "I don't know how you were made."
echo.
echo OPTION:
echo Press 1 and then enter to continue.
set /p input=
if %input% == 1 goto app.moose.lvl6
:app.moose.lvl6
cls
title Life Simulator
echo It is now the end of the school day.
echo.
echo You are now going home with your parents.
echo.
echo Your parents are saying that "We are proud of you for learning about the alphabet."
echo.
echo Your parents are saying that "We are proud of you for asking Miss Jenny a question."
echo.
pause
echo Your parents are screaming "OH SHIT".
echo.
echo Your car has just been in an accident. You and your parents have made it out alive.
echo.
pause
cls
echo You are currently on the Motorway in a police car being driven home.
echo.
echo OPTION:
echo Press 1 to continue to the next level.
set /p input=
if %input% == 1 goto app.moose.lvl7
:app.moose.lvl7
cls
title Life Simulator
echo Moose Game Studios has decided to stop development on Life Sim. Goodbye. 
pause
exit
:app.moose.exit
exit
