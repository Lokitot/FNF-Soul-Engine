

function onEvent(name, value1, value2)
	if name == 'Zoom' then
		--doTweenZoom('Zoom in','camGame',value1,value2,'circInOut')
		setProperty('defaultCamZoom',value1)
		if value1 == 'null' then
			--do nothing lol
		end
	end
end