program numble;
uses crt;
label start;
var
    restart: char;
    theNumber, guess, tries, i: integer;
    menang: boolean;
begin
    clrscr;
    randomize;
    writeln('Welcome to Numble: Guess the Number!');

    start:
    writeln;
    writeln('I will pick a secret number from 1 to 10.'); writeln;
    writeln('How many tries will it take you to guess it?');

    repeat
        write('Enter how many tries: ');
        readln(tries);
        if tries <= 0 then
            writeln('Tries must be at least 1!');
    until tries > 0;
    writeln;

    writeln('Picking a number...'); writeln('Number picked!'); writeln;
    theNumber := random(10) + 1;
    menang := false;

    writeln('Now, try to guess it!'); writeln;
    for i := 1 to tries do
    begin
        writeln('Attempt ', i, ':');
        readln(guess);

        if (guess < 1) or (guess > 10) then
        begin
            writeln('Number must be between 1 and 10!');
            continue;
        end;

        if guess = theNumber then
        begin
            writeln('Congratulations! You guessed the number in ', i, ' tries!');
            menang := true;
            break;
        end
        else if guess < theNumber then
            writeln('Too low! Try again.')
        else
            writeln('Too high! Try again.');
    end;

    if not menang then
        writeln('OOPS, you are out of tries! The number was ', theNumber);

    writeln;
    write('Do you want to play again? (Y/N): ');
    readln(restart);
    case restart of
        'Y', 'y': goto start;
        'N', 'n': writeln('Thanks for playing Numble! See you next time.');
    else
        writeln('Invalid input. Exiting the game.');
    end;
end.