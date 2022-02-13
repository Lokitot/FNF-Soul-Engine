local turn = 10
local turn2 = 20
local y = 0;
local x = 0;
local canBob = true
local Strums = 'opponentStrums'
function onCreate()
    math.randomseed(os.clock() * 1000);
    
    --doTweenAlpha("gone","camHUD",0,0.01)
end
function onBeatHit()
    if curBeat == 1 then 
        y = defaultOpponentStrumY1;
        noteTweenAlpha("vanish0",0,0.5,crochet*0.004,"sineInOut")
        noteTweenAlpha("vanish1",1,0.5,crochet*0.0045,"sineInOut")
        noteTweenAlpha("vanish2",2,0.5,crochet*0.005,"sineInOut")
        noteTweenAlpha("vanish3",3,0.5,crochet*0.0055,"sineInOut")
    end
    if curBeat == 240 then
    turn = turn * 4
    end
    if curBeat % 2 == 0 and canBob then 
        turn2 = turn2 * -1
        for i = 0,7 do
            local uhhh = curBeat % 8 * (i + i)
            local swag = i % 4 * 2.5 - uhhh
            if i > 3 then
                x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
            else
                x =  getPropertyFromGroup('playerStrums', i, 'x');
            end
            --noteTweenY("wheeeup"..i,i,y + turn,crochet*0.002,"sineInOut")
            noteTweenX("wheeeleft"..i,i,x + turn2,crochet*0.002,"sineInOut")
        end
    end
    if curBeat % 4 == 0 then
        turn = turn * -1
    
    if curBeat % 4 == 0 and canBob then
       
        if curBeat >= 240 then
            for i = 0,3 do
                local uhhh = curBeat % 8 * (i + i)
                local swag = i % 4 * 2.5 - uhhh
                --[[if i > 3 then
                    x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
                else
                    x =  getPropertyFromGroup('playerStrums', i, 'x');
                end]]
                
    
                noteTweenY("wheeeup"..i,i,y + turn,crochet*0.004,"sineInOut")
                --noteTweenX("wheeeleft"..i,i,x + turn2,crochet*0.002,"sineInOut")
            end
            for i = 4,7 do
                local uhhh = curBeat % 8 * (i + i)
                local swag = i % 4 * 2.5 - uhhh
                --[[if i > 3 then
                    x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
                else
                    x =  getPropertyFromGroup('playerStrums', i, 'x');
                end]]
                
    
                noteTweenY("wheeeup"..i,i,y - turn,crochet*0.004,"sineInOut")
                --noteTweenX("wheeeleft"..i,i,x + turn2,crochet*0.002,"sineInOut")
            end
        else
        for i = 0,7 do
            local uhhh = curBeat % 8 * (i + i)
            local swag = i % 4 * 2.5 - uhhh
            --[[if i > 3 then
                x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
            else
                x =  getPropertyFromGroup('playerStrums', i, 'x');
            end]]
            

            noteTweenY("wheeeup"..i,i,y + turn,crochet*0.004,"sineInOut")
            --noteTweenX("wheeeleft"..i,i,x + turn2,crochet*0.002,"sineInOut")
        end
    end
        
    end
   
    --[[if curBeat == 1 then
        for i = 0,7 do
            local uhhh = curBeat % 8 * (i + i)
            local swag = i % 4 * 2.5 - uhhh
            if i > 3 then
                x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
            else
                x =  getPropertyFromGroup('playerStrums', i, 'x');
                noteTweenAlpha("gone"..i,i,0.8,crochet*0.005,"sineInOut")
            end
            --noteTweenY("wheeeup"..i,i,y + turn,crochet*0.002,"sineInOut")
            noteTweenX("wheeeleft"..i,i,x,crochet*0.002,"sineInOut")
        end
    end]]
    if curBeat == 80 then
        noteTweenAlpha("vanish0",0,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish1",1,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish2",2,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish3",3,1,crochet*0.001,"sineInOut")

        noteTweenAlpha("vanish4",4,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish5",5,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish6",6,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish7",7,0.5,crochet*0.001,"sineInOut")

        canBob = false
        for i = 0,7 do
            local offset = i * 0.0005 + 0.0005
            local baseTiming = crochet*0.002
            noteTweenY("wheeeup"..i,i,y, baseTiming + offset,"sineInOut")
        end
    end
    if curBeat == 10 then
        doTweenAlpha("arrive","camHUD",1,0.5)
    end
    if curBeat == 48 then
    for i= 0,7 do
    doTweenAngle('LOOP'..i,i,math.rad(360),crochet*0.002,"backOut")
    end
    end
    if curBeat == 112 or curBeat == 240 then
        canBob = true
        noteTweenAlpha("vanish0",0,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish1",1,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish2",2,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish3",3,0.5,crochet*0.001,"sineInOut")

        noteTweenAlpha("vanish4",4,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish5",5,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish6",6,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish7",7,1,crochet*0.001,"sineInOut")

    end
    if curBeat == 208 then
        noteTweenAlpha("vanish0",0,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish1",1,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish2",2,1,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish3",3,1,crochet*0.001,"sineInOut")

        noteTweenAlpha("vanish4",4,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish5",5,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish6",6,0.5,crochet*0.001,"sineInOut")
        noteTweenAlpha("vanish7",7,0.5,crochet*0.001,"sineInOut")

        canBob = false
        for i = 0,7 do
            noteTweenY("wheeeup"..i,i,y, crochet*0.002,"sineInOut")
        end
    end
    if curBeat >= 240 and curBeat <= 288 then
    triggerEvent('Add Camera Zoom',0.02,0.05)
    end
    
    if curBeat == 288 then
        noteTweenAlpha("vanish0",0,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish1",1,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish2",2,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish3",3,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish4",4,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish5",5,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish6",6,0,crochet*0.003,"sineInOut")
        noteTweenAlpha("vanish7",7,0,crochet*0.003,"sineInOut")

        canBob = false
    end
end
if curBeat >= 48 and curBeat <= 80 then
    triggerEvent('Add Camera Zoom',0.02,0.05)
end
end
function onUpdate(elapsed)
        if mustHitSection == false then
            setProperty('defaultCamZoom',1)
        else
           
            setProperty('defaultCamZoom',0.9)
        end
end

--[[function onTweenCompleted(tag)
	if string.find(tag,"wheeeup") then
        for i = 0,7 do
            local uhhh = curBeat % 8 * (i + i)
            local swag = i % 4 * 2.5 - uhhh
            if i > 3 then
                x =  getPropertyFromGroup('opponentStrums', i-4, 'x');
            else
                x =  getPropertyFromGroup('playerStrums', i, 'x');
            end
            --noteTweenY("wheeeup"..i,i,y + turn,crochet*0.002,"sineInOut")
            noteTweenX("wheeeleft"..i,i,x,crochet*0.002,"sineInOut")
        end
    end
end]] 