local maxFrame = function(win)
  return win:screen():frame()
end

xmain = function()
  local win = hs.window.focusedWindow()
  win:setFrame(maxFrame(win))
end

local setWithRegion = function(reg)
  win = hs.window.focusedWindow()
  win:setFrame(reg(maxFrame(win)))
end

xone = function()
  setWithRegion(q1)
end

xtwo = function()
  setWithRegion(q2)
end

xthree = function()
  setWithRegion(q3)
end

xfour = function()
  setWithRegion(q4)
end

xleft = function()
  setWithRegion(lsplit)
end

xright = function()
  setWithRegion(rsplit)
end

xtop = function()
  setWithRegion(tsplit)
end

xbottom = function()
  setWithRegion(bsplit)
end
