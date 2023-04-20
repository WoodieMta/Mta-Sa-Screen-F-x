--1.)
function reMap(value, low1, high1, low2, high2)
	return low2 + (value - low1) * (high2 - low2) / (high1 - low1)
end

screenX, screenY = guiGetScreenSize()
responsiveMultipler = reMap(screenX, 1024, 1920, 0.75, 1)

function resp(num)
	return num * responsiveMultipler
end

function respc(num)
	return math.ceil(num * responsiveMultipler)
end

function getResponsiveMultipler()
	return responsiveMultipler
end

function getHudCursorPos()
	if pressingHudKey then
		return getCursorPosition()
	else
		return false
	end
end
--2.)
local screen = guiGetScreenSize() --Oyuncunun Çözünürlüğünü Çekiyor
local w, h = 600, 400 --Panel Boyutları Giriliyor
local x, y = (screen.x-w)/2, (screen.y-h)/2 --Çözünürlükler ye Bölünüyor
