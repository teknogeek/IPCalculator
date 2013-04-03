display dialog "Base IP" default answer ""
set baseIP to (text returned of result)

display dialog "Win?" buttons {"Yes", "No"} default button 1
if result = {button returned:"Yes"} then
  display dialog "Dominion?" buttons {"Yes", "No"} default button 2
	if result = {button returned:"Yes"} then
		display dialog "Map" buttons {"Summoner's Rift", "Twisted Treeline"} default button 1
		if result = {button returned:"Summoner's Rift"} then
			set Dominion to 2
			set IPmin to 2.312
		else if result = {button returned:"Twisted Treeline"} then
			set Dominion to 2
			set IPmin to 2.312
		end if
		
	else if result = {button returned:"No"} then
		display dialog "Map" buttons {"Summoner's Rift", "Twisted Treeline"} default button 1
		if result = {button returned:"Summoner's Rift"} then
			set Dominion to 0
			set IPmin to 2.312
		else if result = {button returned:"Twisted Treeline"} then
			set Dominion to 0
			set IPmin to 2.312
		end if
	end if
else if result = {button returned:"No"} then
	display dialog "Dominion?" buttons {"Yes", "No"} default button 2
	if result = {button returned:"Yes"} then
		display dialog "Map" buttons {"Summoner's Rift", "Twisted Treeline"} default button 1
		if result = {button returned:"Summoner's Rift"} then
			set Dominion to 1
			set IPmin to 1.405
		else if result = {button returned:"Twisted Treeline"} then
			set Dominion to 1
			set IPmin to 1.405
		end if
		
	else if result = {button returned:"No"} then
		display dialog "Map" buttons {"Summoner's Rift", "Twisted Treeline"} default button 1
		if result = {button returned:"Summoner's Rift"} then
			set Dominion to 0
			set IPmin to 1.405
		else if result = {button returned:"Twisted Treeline"} then
			set Dominion to 0
			set IPmin to 1.405
		end if
	end if
end if

display dialog "Custom Game?" buttons {"Yes", "No"} default button 2
if result = {button returned:"Yes"} then
	set custom to 0.75
else if result = {button returned:"No"} then
	set custom to 1
end if

display dialog "IP Boost?" buttons {"Yes", "No"} default button 2
if result = {button returned:"Yes"} then
	set boost to 150
else if result = {button returned:"No"} then
	set boost to 0
end if

display dialog "Game Length (in minutes)" default answer ""
set gameTime to (text returned of result)

set influenceGained to (IPmin * gameTime) * custom + Dominion + boost

set influence to ((baseIP + (IPmin * gameTime) * custom) + Dominion + boost)


display dialog "Base IP: " & baseIP
display dialog "Dominion Bonus: " & Dominion
display dialog "IP / minute: " & IPmin
display dialog "Game Time: " & gameTime & " minutes"
display dialog "Influence Points Gained: " & influenceGained
display dialog "Influence Point Total: " & influence
