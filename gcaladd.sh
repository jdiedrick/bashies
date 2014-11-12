#!/bin/bash

echo "hey! looking to add an event to your calendar? what calendar do you want to use?"

read CALENDAR

echo "ok! what's the title for the event?"

read TITLE

echo "cool! where is it?"

read WHERE

echo "awesome! ^_^ when is the event? e.g. 11/12/2014 14:00"

read WHEN

echo "sweet, almost done! how long is the event? e.g. 60 for 60 minutes (1 hour)"

read DURATION

echo "and finally..any description for the event?"

read DESCRIPTION

echo "ohoh sorry! last LAST thing! when do you want to be reminded of the event e.g. 30 for 30 min beforehand. that's the last one i promise! ;)"

read REMINDER

CMD="gcalcli --calendar \"$CALENDAR\" --title \"$TITLE\" --where \"$WHERE\" --when \"$WHEN\" --duration $DURATION --description \"$DESCRIPTION\" --reminder $REMINDER add"

echo "ok the command i'm going to do is: $CMD"

echo "is that ok? y/n"

read YESNO

if [ $YESNO = "y" ]; then
	echo `gcalcli --calendar "$CALENDAR" --title "$TITLE" --where "$WHERE" --when "$WHEN" --duration $DURATION --description "$DESCRIPTION" --reminder $REMINDER add`
	echo "done!"
else
	echo "oh ok! np :D"
fi
