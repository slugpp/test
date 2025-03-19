-- 9 2d
for j =0,2,1 do
    for i = 0,2,1 do
        x= j*-50
        y= i*65
        RelMovL({x,y,0,0})
        RelMovL({0,0,-100,0})
    end
end

-- 123 2d
for j =0,2,1 do
    for i = 0,j,1 do
        x= j*-50
        y= i*65
        RelMovL({x,y,0,0})
        RelMovL({0,0,-100,0})
    end
end

--or 2d
for j =2,0,-1 do
    for i = 0,j,1 do
        x= j*-50
        y= i*65
        RelMovL({x,y,0,0})
        RelMovL({0,0,-100,0})
    end
end

-- or 2d
for j =2,0,-1 do
    for i = j,2,1 do
        x= j*-50
        y= i*65
        RelMovL({x,y,0,0})
        RelMovL({0,0,-100,0})
    end
end

--322 3d
for k =0,2,1 do
    for i = 0,2,1 do
        x= i*-50
        y= i*65
        z= -100+(30*k)
        if k == 2 and i == 1 then
          break
        end
        RelMovL({x,y,0,0})
        RelMovL({0,0,z,0})
    end
end

--232 3d
for k =0,2,1 do
    for i = 0,2,1 do
        x= i*-50
        y= i*65
        z= -100+(30*k)
        if k == 2 and i == 0 then
            RelMovL({-50,65,-40,0})
          break
        end
        RelMovL({x,y,0,0})
        RelMovL({0,0,z,0})
    end
end

--231 3d
for k =2,0,-1 do
    for i = 0,k,1 do
        x= i*-50
        y= i*65
        z= -100+(30*(2-k))
        if k == 0 and i == 0 then
            RelMovL({-50,65,-40,0})
          break
        end
        RelMovL({x,y,0,0})
        RelMovL({0,0,z,0})
    end
end

-- 123 ladder
for k = 0,2,1 do
    for j = 0,(2-k),1 do
      x=j*-50
      z=-100+30*k
        
      --print(j,k)
      RelMovL({x,0,0,0})
      RelMovL({0,0,z,0})
    end
  end


  -- 221 ladder
for k = 0,2,1 do
    for j = 0,(2-k),1 do
      x=j*-50
      z=-100+30*k
      if k == 2 and j ==0 then
        break
      end
      RelMovL({x,0,0,0})
      RelMovL({0,0,z,0})
    end
  end