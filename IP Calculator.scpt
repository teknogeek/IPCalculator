display dialog "Base IP" default answer ""
set baseIP to (text returned of result)

display dialog "Win?" buttons {"Yes", "No"} default button 1



if result = {button returned:"Yes"} then
	display dialog "Dominion?" buttons {"Yes", "No"} default button 2
	if result = {button returned:"Yes"} then
		display dialog "Gamemode" buttons {"Co-op", "Classic", "Custom"} default button 1
		if result = {button returned:"Co-op"} then
			display dialog "Co-op" buttons {"Co-op Beginner", "Co-op Intermediate"} default button 1
			if result = {button returned:"Co-op Beginner"} then
				set Dominion to 2
				set IPmin to 2.312
				set baseWin to 20
				set custom to 0
			else if result = {button returned:"Co-op Intermediate"} then
				set Dominion to 2
				set IPmin to 2.312
				set baseWin to 20
				set custom to 0
			end if
		else if result = {button returned:"Classic"} then
			set Dominion to 2
			set IPmin to 2.312
			set baseWin to 20
			set custom to 0
		else if result = {button returned:"Custom"} then
			display dialog "Custom Game?" buttons {"Yes", "No"} default button 2
			if result = {button returned:"Yes"} then
				set custom to 0.75
			else if result = {button returned:"No"} then
				set custom to 1
			end if
		end if
		
		
		
	else if result = {button returned:"No"} then
		display dialog "Gamemode" buttons {"Co-op", "Classic", "Custom"} default button 1
		if result = {button returned:"Co-op"} then
			display dialog "Co-op" buttons {"Co-op Beginner", "Co-op Intermediate"} default button 1
			if result = {button returned:"Co-op Beginner"} then
				set Dominion to 0
				set IPmin to 2.312
				set baseWin to 4
				set custom to 0
			else if result = {button returned:"Co-op Intermediate"} then
				set Dominion to 0
				set IPmin to 2.312
				set baseWin to 7
				set custom to 0
			end if
		else if result = {button returned:"Classic"} then
			set Dominion to 0
			set IPmin to 2.312
			set baseWin to 18
			set custom to 0
		else if result = {button returned:"Custom"} then
			display dialog "Custom Game?" buttons {"Yes", "No"} default button 2
			if result = {button returned:"Yes"} then
				set custom to 0.75
			else if result = {button returned:"No"} then
				set custom to 1
			end if
		end if
	end if
	
	
	
else if result = {button returned:"No"} then
	display dialog "Dominion?" buttons {"Yes", "No"} default button 2
	if result = {button returned:"Yes"} then
		display dialog "Gamemode" buttons {"Co-op", "Classic", "Custom"} default button 1
		if result = {button returned:"Co-op"} then
			display dialog "Co-op" buttons {"Co-op Beginner", "Co-op Intermediate"} default button 1
			if result = {button returned:"Co-op Beginner"} then
				set Dominion to 2
				set IPmin to 1.405
				set baseWin to 13
				set custom to 0
			else if result = {button returned:"Co-op Intermediate"} then
				set Dominion to 2
				set IPmin to 1.405
				set baseWin to 13
				set custom to 0
			end if
		else if result = {button returned:"Classic"} then
			set Dominion to 2
			set IPmin to 1.405
			set baseWin to 13
			set custom to 0
		else if result = {button returned:"Custom"} then
			display dialog "Custom Game?" buttons {"Yes", "No"} default button 2
			if result = {button returned:"Yes"} then
				set custom to 0.75
			else if result = {button returned:"No"} then
				set custom to 1
			end if
		end if
		
		
		
	else if result = {button returned:"No"} then
		display dialog "Gamemode" buttons {"Co-op", "Classic", "Custom"} default button 1
		if result = {button returned:"Co-op"} then
			display dialog "Co-op" buttons {"Co-op Beginner", "Co-op Intermediate"} default button 1
			if result = {button returned:"Co-op Beginner"} then
				set Dominion to 0
				set IPmin to 1.405
				set baseWin to 3
				set custom to 0
			else if result = {button returned:"Co-op Intermediate"} then
				set Dominion to 0
				set IPmin to 1.405
				set baseWin to 6
				set custom to 0
			end if
		else if result = {button returned:"Classic"} then
			set Dominion to 0
			set IPmin to 1.405
			set baseWin to 16
			set custom to 0
		else if result = {button returned:"Custom"} then
			display dialog "Custom Game?" buttons {"Yes", "No"} default button 2
			if result = {button returned:"Yes"} then
				set custom to 0.75
			else if result = {button returned:"No"} then
				set custom to 1
			end if
		end if
	end if
end if

display dialog "IP Boost?" buttons {"Yes", "No"} default button 2
if result = {button returned:"Yes"} then
	set boost to 150
else if result = {button returned:"No"} then
	set boost to 0
end if

display dialog "First Win of the Day?" buttons {"Yes", "No"} default button 2
if result = {button returned:"Yes"} then
	set firstWIn to 150
else if result = {button returned:"No"} then
	set firstWIn to 0
end if

display dialog "Game Length (in minutes)" default answer ""
set gameTime to (text returned of result)

set influenceGained to (IPmin * gameTime) * custom + Dominion + boost + firstWIn

set influence to ((baseIP + (IPmin * gameTime) * custom) + Dominion + boost + firstWIn)


display dialog "Base IP: " & baseIP
display dialog "Influence Points Gained: " & influenceGained
display dialog "Influence Point Total: " & influence
