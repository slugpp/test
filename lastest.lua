-- Dobot Mg400 IP
-- IP : 192.168.1.94
-- Subnet Mask : 255.255.255.0

function dude()
  DO(2,ON)
  Wait(200)
end

function ploy()
  DO(2,OFF)
  DO(1,ON)
  Wait(200)
  DO(1,OFF)
end


function getBox(x1,x2)
    MovL(InitialPose)
    MovL(x1)
    RelMovL({0,0,-100,0})
    DO(2,ON)
    Wait(500)
    MovL(x1)
    MovL(x2)
    RelMovL({0,0,-60,0}) 
    DO(2,OFF)
    DO(1,ON)
    Wait(200)
    DO(1,OFF)
    RelMovL({0,0,-20,0})
    DO(2,ON)
    Wait(200)
    MovL(x2)
  end
  
  function TwoD_Move(x1,x2,x3) -- Move2 แกน, 
    for j =0,2,1 do   --for 2,0,-1 for Christmas 2D
      for i =j,2,1 do --for i = 0,j,1 do Christmas 2D
        getBox(x1,x2)
        MovL(x3)
          x = j*50
          y = i*65 
          RelMovL({-x,y,0,0})
          RelMovL({0,0,-95,0}) -- plus = -130 1 block , -105 for two block , -70 for three box
          DO(2,OFF)
          DO(1,ON)
          Wait(500)
          DO(1,OFF)
      end
    end  
  end
  

  function Third_Moveangle(x1,x2,x3) --z = -30 
    for k = 2,0,-1 do  --↗️
      for i = 0,k,1 do --↗️ 321 from 1st step
        getBox(x1,x2)
        MovL(x3)
        x = i*50 --change in test
        y = i*65 --change in test
        Z = -100+(30*(2-k))
        RelMovL({-x,y,0,0})
        RelMovL({0,0,Z,0}) -- plus = -129 1 block , -109 for two block , -79 for three box
        DO(2,OFF)
        DO(1,ON)
        Wait(1000)
        DO(1,OFF)   
      end
    end
  end
  

  function Third_Move(x1,x2,x3) --z = -30 
    for k = 2,0,-1 do  --⬆️ 
        for i = 0,2,1 do --⬆️ 321 from 1st step
          getBox(x1,x2)
          MovL(x3)
          --x = i*50 --change in test
          y = i*65 --change in test
          Z = -100+(30*(2-k))
          RelMovL({0,y,0,0}) 
          RelMovL({0,0,Z,0}) -- plus = -130 1 block , -105 for two block , -77 for three box one block is alomost 28 
          DO(2,OFF)
          DO(1,ON)
          Wait(1000)
          DO(1,OFF)   
        end
    end
  end

  function Make_Circle(x1,x2,x3)
    MovJ(InitialPose)
    MovJ(x1)    
    Circle(x2,x3,1)
  end

  function Make_Arc(x1,x2,x3)
    MovJ(InitialPose)
    MovJ(x1)
    Arc(x2,x3)
  end

  
  --TwoD_Move(P1,P2,P3)
  --Third_Moveangle(P1,P2,P3)
  --Third_Move(P1,P2,P3)
  --getBox(P1,P3,P4)
 --Make_Circle(P1,P2,P3)
 --Make_Arc(P1.P2,P3)
  





